//
//  EStop.swift
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

// Client for managing robot EStop
class EStopServiceClient: BaseClient {
    
    // EStopClient errors
    enum EstopClientError: Error {
        case missingChannel
        case missingEstopClient
        case noResponseFromGetEstopConfig
        case eStopActiveConfigMissing
        case noResponseFromRegisterEstopEndPoint
    }
    
    // Service Client from proto
    var estopServiceClient: Bosdyn_Api_EstopServiceClient?
    
    // Currently stored periodic checkin flag, authToken, and EStop status
    private var stopPeriodicCheckin = false
    private var authToken: String = ""
    public var eStopLevel = Bosdyn_Api_EstopStopLevel.estopLevelUnknown
    
    // Constructor
    init(hostName: String, authToken: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "estop", timeout: timeout)
        
        self.authToken = authToken
        do {
            try self.createSecureChannel()
        } catch {
            throw error
        }
        guard let channel = self.channel else {
            throw EstopClientError.missingChannel
        }
        
        self.estopServiceClient = Bosdyn_Api_EstopServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
    }
    
    // Get current EStop system status
    func getEstopSystemStatus() throws -> Bosdyn_Api_GetEstopSystemStatusResponse {
        let request = Bosdyn_Api_GetEstopSystemStatusRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
        }
        
        do {
            guard let grpcCall = estopServiceClient?.getEstopSystemStatus(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + self.authToken)]), timeLimit: .timeout(.seconds(self.timeout)))) else {
                throw EstopClientError.missingEstopClient
            }
            let response = try call(grpcCall: grpcCall)
            self.eStopLevel = response.status.stopLevel
            return response
        } catch {
            throw error
        }
    }
    
    // Get currently supported EStop configuration
    func getEstopConfig(targetConfigID: String) throws -> Bosdyn_Api_GetEstopConfigResponse {
        let request = Bosdyn_Api_GetEstopConfigRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false            }
            $0.targetConfigID = targetConfigID
        }
        
        do {
            guard let grpcCall = estopServiceClient?.getEstopConfig(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + self.authToken)]), timeLimit: .timeout(.seconds(self.timeout)))) else {
                throw EstopClientError.missingEstopClient
            }
            let response = try call(grpcCall: grpcCall)
            return response
        } catch {
            throw error
        }
    }
    
    // Set currently supported EStop configuration
    func setEstopConfig(newConfig: Bosdyn_Api_EstopConfig, activeConfigID: String) throws -> Bosdyn_Api_SetEstopConfigResponse {
        let request = Bosdyn_Api_SetEstopConfigRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.targetConfigID = activeConfigID
            $0.config = newConfig
        }
        
        do {
            guard let grpcCall = estopServiceClient?.setEstopConfig(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + self.authToken)]), timeLimit: .timeout(.seconds(self.timeout)))) else {
                throw EstopClientError.missingEstopClient
            }
            let response = try call(grpcCall: grpcCall)
            return response
        } catch {
            throw error
        }
    }
    
    // Register an endpoint to the currently supported EStop configuration
    func registerEstopEndpoint(targetConfigID: String = "", bosdynApi_EstopEndpoint: Bosdyn_Api_EstopEndpoint) throws -> Bosdyn_Api_RegisterEstopEndpointResponse {
        let request = Bosdyn_Api_RegisterEstopEndpointRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            // need new and target Endpoints set or get Target Status Mismatch
            $0.newEndpoint = bosdynApi_EstopEndpoint
            $0.targetEndpoint = bosdynApi_EstopEndpoint
            
            $0.targetConfigID = targetConfigID  // this is the unique ID of the target config
        }

        do {
            guard let grpcCall = estopServiceClient?.registerEstopEndpoint(request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + self.authToken)]), timeLimit: .timeout(.seconds(self.timeout)))) else {
                throw EstopClientError.missingEstopClient
            }
            let response = try call(grpcCall: grpcCall)
            // Wait on call to finish then return the value
            return response
        } catch {
            throw error
        }
    }
    
    // Check in
    func estopCheckin(endpoint: Bosdyn_Api_EstopEndpoint, stopLevel: Bosdyn_Api_EstopStopLevel, challenge: UInt64, response: UInt64 ) throws -> Bosdyn_Api_EstopCheckInResponse {
        let request = Bosdyn_Api_EstopCheckInRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
            $0.endpoint = endpoint
            $0.stopLevel = stopLevel
            $0.challenge = challenge
            $0.response = response
        }
        do {
            guard let grpcCall = estopServiceClient?.estopCheckIn (request, callOptions: CallOptions(customMetadata: HPACKHeaders([("authorization", "Bearer " + self.authToken)]), timeLimit: .timeout(.seconds(self.timeout)))) else {
                throw EstopClientError.missingEstopClient
            }

            let response = try call(grpcCall: grpcCall)
            // Wait on call to finish then return the value
            return response
        } catch {
            throw error
        }
    }
        
}

// Custom EStop endpoint
class EStopEndpoint {
    
    enum EstopEndpointError: Error {
        case noResponseFromGetEstopConfig
        case noResponseFromSetEstopConfig
        case noResponseFromRegisterRequest
        case errorStatusInSetEstopConfigResponse
        case errorStatusInRegisterEstopEndpointResponse
        case checkinResponseStatusError
        case noEndpoint
    }
    
    var serviceClient: EStopServiceClient
    var name: String = ""
    var estopTimeout: Int64 = 5
    var role: String = ""
    var estopCutPowerTimeout: Int64 = 5
    
    var bosdynApiEstopEndPoint: Bosdyn_Api_EstopEndpoint?
    var activeConfig: Bosdyn_Api_EstopConfig?
    
    var challenge: UInt64 = 0
    var uniqueID: String = ""
    var configID: String = ""
    
    var desiredEstopLevel = Bosdyn_Api_EstopStopLevel.estopLevelNone
    var keepCheckinAlive = true
    var checkinIntervalSeconds = 1
    var firstCheckin = true
    
    // Constructor
    init(serviceClient: EStopServiceClient, name: String = "", estopTimeout: Int64 = 5, role: String = "PDB_rooted", estopCutPowerTimeout: Int64 = 5) {
        self.serviceClient = serviceClient
        self.name = name
        self.estopTimeout = estopTimeout
        self.role = role
        self.estopCutPowerTimeout = estopCutPowerTimeout
    }
    
    // Create new EStop endpoint object
    func createEndpoint(name: String)  -> Bosdyn_Api_EstopEndpoint {
        let REQUIRED_ROLE = "PDB_rooted"
        var endPoint = Bosdyn_Api_EstopEndpoint()
        endPoint.name = name
        endPoint.role = REQUIRED_ROLE
        endPoint.timeout = Google_Protobuf_Duration(seconds: self.estopTimeout, nanos: 0)
        endPoint.cutPowerTimeout = Google_Protobuf_Duration(seconds: self.estopCutPowerTimeout, nanos: 0)
        //endPoint.uniqueID - assigned by Spot when endPoint is registered
        
        return endPoint
    }
    
    // Set up EStop configuration, active endpoint, and begin periodic checkin
    func doSetup() throws {
        var bosdynApi_EstopEndpoint = Bosdyn_Api_EstopEndpoint()
        bosdynApi_EstopEndpoint.name = self.name
        bosdynApi_EstopEndpoint.role = self.role
        bosdynApi_EstopEndpoint.timeout = Google_Protobuf_Duration(seconds: self.estopTimeout, nanos: 0)
        var newConfig = Bosdyn_Api_EstopConfig()
        newConfig.endpoints.append(bosdynApi_EstopEndpoint)
        do {
            let getResponse = try self.serviceClient.getEstopConfig(targetConfigID: self.configID)  // this doesn't appear to have a status in response. ...how do I know it worked?
            let activeConfig = getResponse.activeConfig
            if (activeConfig.endpoints.count > 0) {
                self.uniqueID = activeConfig.endpoints[0].uniqueID
            } else {
                self.uniqueID = ""
            }
            
            let setResponse = try serviceClient.setEstopConfig(newConfig: newConfig, activeConfigID: activeConfig.uniqueID)
            if (setResponse.status != Bosdyn_Api_SetEstopConfigResponse.Status.success) {
                throw EstopEndpointError.errorStatusInSetEstopConfigResponse
            } else {
                // print("set config success")
            }
            self.activeConfig = setResponse.activeConfig
            
            var endpoint = createEndpoint(name: self.name)
            
            if (activeConfig.endpoints.count > 0) {
                endpoint = activeConfig.endpoints[0]
            }
            
            let registerResponse = try serviceClient.registerEstopEndpoint(targetConfigID: setResponse.activeConfig.uniqueID, bosdynApi_EstopEndpoint: endpoint)
            if (registerResponse.status != Bosdyn_Api_RegisterEstopEndpointResponse.Status.success) {
                throw EstopEndpointError.errorStatusInRegisterEstopEndpointResponse
            } else {
                self.bosdynApiEstopEndPoint =  registerResponse.newEndpoint
                // print("register endpoint success")
            }
            
            self.startPeriodicCheckIn()
        } catch {
            throw error
        }
    }
    
    // Begin async periodic checkin with robot
    func startPeriodicCheckIn() {
        let queueForPeriodicCheckin = DispatchQueue(label: "queueForEndpointPeriodicCheckin")
        self.keepCheckinAlive = true
        
        queueForPeriodicCheckin.async {
            // var iteration: Int64 = 0
            while (self.keepCheckinAlive) {
                // iteration += 1
                // print("checkin on iteration: \(iteration)")
                do {
                    try self.checkIn()
                } catch {
                    if (!self.firstCheckin) {
                        self.keepCheckinAlive = false
                    }
                }
                if (self.firstCheckin) {
                    self.firstCheckin = false
                }
                // sleep between calls
                sleep(useconds_t(self.checkinIntervalSeconds))
            }
        }
    }
    
    // Check in with robot at current EStop status
    func checkIn() throws {
        do {
            let response = ~self.challenge
            guard let endpoint = self.bosdynApiEstopEndPoint else {
                throw EstopEndpointError.noEndpoint
            }
            let checkinResponse = try self.serviceClient.estopCheckin(endpoint: endpoint, stopLevel: self.desiredEstopLevel, challenge: self.challenge, response: response)
            self.challenge = checkinResponse.challenge
            // print("after self.challenge")
            if (checkinResponse.status != Bosdyn_Api_EstopCheckInResponse.Status.ok) {
                print(String(describing: checkinResponse.status))
                throw EstopEndpointError.checkinResponseStatusError
            } else {
                // print("status: ok")
            }
        } catch {
            throw error
        }
    }
    
    // Set desired EStop status
    // Immediate changes in status should be followed by checkIn() function call
    func setDesiredEstopLevel(desiredEstopLevel: Bosdyn_Api_EstopStopLevel) {
        self.desiredEstopLevel = desiredEstopLevel
    }
}
