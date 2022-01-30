//
//  AuthClient.swift
//  
//
//  Created by Stephen Bowen on 1/30/22.
//

import Foundation
import GRPC
import NIO
import NIOSSL
import SwiftProtobuf

class AuthServiceClient: BaseClient {
    
    // AuthServiceClient errors
    enum AuthServiceClientError: Error {
        case missingChannel
        case missingAuthServiceClient
        case unknown
        case invalidLogin
        case invalidToken
        case temporarilyLockedOut
        case invalidApplicationToken
        case expiredApplicationToken
        case unknownStatus
        case missingAuthToken
    }
    
    // Username and password from user
    private var userName: String = ""
    private var password: String = ""
    
    // Service Client from proto
    var authServiceClient: Bosdyn_Api_AuthServiceClient?
    
    // Currently stored auth token
    var authToken: String = ""

    // Constructor
    init(hostName: String, userName: String, password: String, timeout: Int64) throws {
        super.init(hostName: hostName, clientName: "auth", timeout: timeout)
        do {
            try self.createSecureChannel()
            if let channel = self.channel {
                self.authServiceClient = Bosdyn_Api_AuthServiceClient(channel: channel, defaultCallOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
            } else {
                throw AuthServiceClientError.missingChannel
            }
        } catch {
            throw error
        }
        self.userName = userName
        self.password = password
    }
    
    // Get the currently sored authToken
    func getCurrentAuthToken() -> String {
        if self.authToken != "" {
            return self.authToken
        } else {
            do {
                self.authToken = try getAuthToken().token
            } catch {
                self.authToken = ""
            }
            return self.authToken
        }
    }
    
    // Perform get authToken rpc
    func getAuthToken() throws -> Bosdyn_Api_GetAuthTokenResponse {
        
        let request = Bosdyn_Api_GetAuthTokenRequest.with {
            $0.username = self.userName
            $0.password = self.password
            $0.header = Bosdyn_Api_RequestHeader.with {
                $0.clientName = self.clientName
                $0.requestTimestamp = Google_Protobuf_Timestamp()
                $0.disableRpcLogging = false
            }
        }
        
        if let authServiceClient = self.authServiceClient {
            do {
                let grpcCall = authServiceClient.getAuthToken(request, callOptions: CallOptions(timeLimit: .timeout(.seconds(self.timeout))))
                let response = try call(grpcCall: grpcCall)
                let status = response.status
                switch(status) {
                case Bosdyn_Api_GetAuthTokenResponse.Status.unknown:
                    throw AuthServiceClientError.unknown
                case Bosdyn_Api_GetAuthTokenResponse.Status.ok:
                    self.authToken = response.token
                    return response
                case Bosdyn_Api_GetAuthTokenResponse.Status.invalidLogin:
                    throw AuthServiceClientError.invalidLogin
                case Bosdyn_Api_GetAuthTokenResponse.Status.invalidToken:
                    throw AuthServiceClientError.invalidToken
                case Bosdyn_Api_GetAuthTokenResponse.Status.temporarilyLockedOut:
                    throw AuthServiceClientError.temporarilyLockedOut
                case Bosdyn_Api_GetAuthTokenResponse.Status.invalidApplicationToken:
                    throw AuthServiceClientError.invalidApplicationToken
                case Bosdyn_Api_GetAuthTokenResponse.Status.expiredApplicationToken:
                    throw AuthServiceClientError.expiredApplicationToken
                default:
                    throw AuthServiceClientError.unknownStatus
                }
            } catch {
                throw error
            }
        } else {
            throw AuthServiceClientError.missingAuthServiceClient
        }
    }
}
