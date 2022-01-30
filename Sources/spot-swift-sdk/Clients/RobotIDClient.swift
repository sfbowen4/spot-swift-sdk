//
//  RobotIDClient.swift
//  
//
//  Created by Stephen Bowen on 1/30/22.
//

import Foundation
import GRPC
import NIO
import NIOSSL
import SwiftProtobuf

class RobotIDClient: BaseClient {
    
    // RobotIDClient errors
    enum RobotIDClientError: Error {
        case missingChannel
        case missingClient
    }
    
    // Service Client from proto
    var robotIdServiceClient: Bosdyn_Api_RobotIdServiceClient?
    
    // Constructor
    init(hostName: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "robot-id", timeout: timeout)
        
        do {
            try self.createSecureChannel()
            if let channel = self.channel {
                self.robotIdServiceClient = Bosdyn_Api_RobotIdServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
            } else {
                throw RobotIDClientError.missingChannel
            }
        } catch {
            throw error
        }
    }
    
    // Perform GetID rpc
    func getID() throws -> Bosdyn_Api_RobotIdResponse {
        let request = Bosdyn_Api_RobotIdRequest.with {
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
        }
        
        if let client = self.robotIdServiceClient {
            let grpcCall = client.getRobotId(request)
            do {
                return try call(grpcCall: grpcCall)
            }
        } else {
            throw RobotIDClientError.missingClient
        }
    }
}
