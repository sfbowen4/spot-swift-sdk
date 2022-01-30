//
//  ChoreographyClient.swift
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

class ChoreographyServiceClient: BaseClient {
    
    // ChoreographyClient errors
    enum ChoreographyClient: Error {
        case missingChannel
        case missingChoreographyClient
    }
    
    // Service Client from proto
    var choreographyServiceClient: Bosdyn_Api_Spot_ChoreographyServiceClient?
    
    // Constructor
    init(hostName: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "choreography", timeout: timeout)
        
        do {
            try self.createSecureChannel()
        } catch {
            throw error
        }
        if let channel = self.channel {
            self.choreographyServiceClient = Bosdyn_Api_Spot_ChoreographyServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
        } else {
            throw ChoreographyClient.missingChannel
        }
    }
    
    // List the available dance moves and their parameter information
    func listAllMoves(authToken: String) throws -> Bosdyn_Api_Spot_ListAllMovesResponse {
        let request = Bosdyn_Api_Spot_ListAllMovesRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
        }

        if let client = self.choreographyServiceClient {
            do {
                let grpcCall = client.listAllMoves(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                return response
            } catch {
                throw error
            }
        } else {
            throw ChoreographyClient.missingChoreographyClient
        }
    }
    
    // Upload a dance to the robot
    func uploadChoreography(authToken: String, choreographySequence: Bosdyn_Api_Spot_ChoreographySequence) throws -> Bosdyn_Api_Spot_UploadChoreographyResponse {
        let request = Bosdyn_Api_Spot_UploadChoreographyRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.choreographySequence = choreographySequence
        }

        if let client = self.choreographyServiceClient {
            do {
                let grpcCall = client.uploadChoreography(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                return response
            } catch {
                throw error
            }
        } else {
            throw ChoreographyClient.missingChoreographyClient
        }
    }
    
    // Execute the uploaded dance
    func executeChoreography(authToken: String, sequenceName: String) throws -> Bosdyn_Api_Spot_ExecuteChoreographyResponse {
        let request = Bosdyn_Api_Spot_ExecuteChoreographyRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.choreographySequenceName = sequenceName
        }

        if let client = self.choreographyServiceClient {
            do {
                let grpcCall = client.executeChoreography(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + authToken)]), timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                return response
            } catch {
                throw error
            }
        } else {
            throw ChoreographyClient.missingChoreographyClient
        }
    }
}
