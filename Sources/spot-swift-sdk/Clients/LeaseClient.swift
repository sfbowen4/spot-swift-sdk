//
//  LeaseClient.swift
//  
//
//  Created by Stephen Bowen on 1/30/22.
//

import Foundation
import GRPC
import NIO
import NIOSSL
import NIOHPACK
import SwiftProtobuf

class LeaseServiceClient: BaseClient {
    
    // LeaseClient errors
    private enum LeaseClientError: Error {
        case missingChannel
        case missingLeaseClient
        case missingLease
    }
    
    // Service Client from proto
    public var leaseServiceClient: Bosdyn_Api_LeaseServiceClient?
    
    // Flag variable for keeping lease alive
    private var keepAlive = true
    
    // Currently stored lease object
    var lease: Bosdyn_Api_Lease?
    
    // Constructor
    init(hostName: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "lease", timeout: timeout)
        do {
            try self.createSecureChannel()
        } catch {
            throw error
        }
        if let channel = self.channel {
            self.leaseServiceClient = Bosdyn_Api_LeaseServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
        } else {
            throw LeaseClientError.missingChannel
        }
    }
    
    // Get the currently stored lease object
    func getCurrentLease() throws -> Bosdyn_Api_Lease {
        if self.lease != nil {
            return self.lease!
        } else {
            throw LeaseClientError.missingLease
        }
    }
    
    // Perform acquire lease rpc
    func acquireLease(authToken: String) throws {
        
        let request = Bosdyn_Api_AcquireLeaseRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.resource = "body" // <- This means the entire robot is the resource we are requesting a lease on.
        }
        
        if let leaseServiceClient = self.leaseServiceClient {
            do {
                let grpcCall = leaseServiceClient.acquireLease(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                self.lease = response.lease
            } catch {
                throw error
            }
        } else {
            throw LeaseClientError.missingLeaseClient
        }
    }
    
    func shutdown() {
        self.keepAlive = false
    }
    
    // Override existing lease and acquire lease
    func takeLease(authToken: String) throws {
        let request = Bosdyn_Api_TakeLeaseRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.resource = "body" // <- This means the entire robot is the resource we are requesting a lease on.
        }
        
        if let leaseServiceClient = self.leaseServiceClient {
            do {
                let grpcCall = leaseServiceClient.takeLease(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                self.lease = response.lease

            } catch {
                throw error
            }
        } else {
            throw LeaseClientError.missingLeaseClient
        }
    }
    
    // Return current lease to robot
    func returnLease(authToken: String) throws {
        let request = Bosdyn_Api_ReturnLeaseRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            if self.lease != nil {
                $0.lease = self.lease!
            }
        }
        
        if let leaseServiceClient = self.leaseServiceClient {
            do {
                let grpcCall = leaseServiceClient.returnLease(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                _ = try call(grpcCall: grpcCall)
                self.lease = nil
            } catch {
                throw error
            }
        } else {
            throw LeaseClientError.missingLeaseClient
        }
    }
    
    // List the current leases on the robot
    func listLeases(authToken: String) throws -> [Bosdyn_Api_LeaseResource]{
        let request = Bosdyn_Api_ListLeasesRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
        }
        
        if let leaseServiceClient = self.leaseServiceClient {
            do {
                let grpcCall = leaseServiceClient.listLeases(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                return response.resources
            } catch {
                throw error
            }
        } else {
            throw LeaseClientError.missingLeaseClient
        }
    }
    
    // Retain the lease iteratively
    func keepLeaseAlive(authToken: String, rpcIntervalSeconds: UInt32 = 2, callBackHandler: @escaping (String) -> Void ) {
        let queueForKeepLeaseAlive = DispatchQueue(label: "queueForKeepLeaseAlive")
        self.keepAlive = true
        
        queueForKeepLeaseAlive.async {

            //var iteration: Int = 0
            while(self.keepAlive) {
                //iteration += 1
                //print("iteration: \(iteration)")
                let request = Bosdyn_Api_RetainLeaseRequest.with {
                    $0.header = Bosdyn_Api_RequestHeader.with {
                        $0.clientName = self.clientName
                        $0.requestTimestamp = Google_Protobuf_Timestamp()
                        $0.disableRpcLogging = false
                    }
                    if (self.lease != nil) {
                        $0.lease = self.lease!
                    }
                }
                
                if let leaseServiceClient = self.leaseServiceClient {
                    do {
                        let grpcCall = leaseServiceClient.retainLease(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                        let response = try self.call(grpcCall: grpcCall)
                        if response.leaseUseResult.status != Bosdyn_Api_LeaseUseResult.Status.ok {
                            self.keepAlive = false
                            //print("keep alive status: " + String(response.leaseUseResult.status.rawValue))
                            DispatchQueue.main.async {
                                callBackHandler(String(response.leaseUseResult.status.rawValue))
                            }
                        }
                        
                        //Bosdyn_Api_LeaseUseResult.Status.ok is desired outcome of call
                    } catch {
                        self.keepAlive = false
                        DispatchQueue.main.async {
                            callBackHandler(error.localizedDescription)
                        }
                    }
                }
                // sleep between calls
                sleep(rpcIntervalSeconds)
            }
        }
    }
}
