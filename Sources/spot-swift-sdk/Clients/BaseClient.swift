//
//  BaseClient.swift
//  
//
//  Created by Stephen Bowen on 1/30/22.
//

import Foundation
import GRPC
import NIO
import NIOSSL
import SwiftProtobuf

protocol BaseClientProtocol {
    
    // Required functions to make a client
    func createSecureChannel() throws
    func call<Request,Response>(grpcCall: UnaryCall<Request,Response>) throws -> Response
    func asyncCall<Request,Response>(grpcCall: UnaryCall<Request,Response>, completed: @escaping (Response) -> Void) throws
    func deregister()
    
    // Required variables to make a client
    var hostName: String { get set }
    var clientName: String { get set }
    var timeout: Int64 { get set }
    var port:Int { get set }
    var channel: ClientConnection? { get set }
    
}

class BaseClient: BaseClientProtocol {
    
    // BaseClient errors
    enum ClientError: Error {
        case missingPEM
        case invalidPEM
        case channelNotCreated
        case callFailed
    }
    
    // Call errors
    enum CallError: Error {
        case failure(errorDescription: String)
    }
    
    // All possible client authorities
    let clientAuthorityLibrary: [String: String] = [
        "auth": "auth.spot.robot",
        "auto-return": "auto-return.spot.robot",
        "choreography": "choreographyservice.spot.robot",
        "data": "data.spot.robot",
        "data-acquisition": "data-acquisition.spot.robot",
        "data-acquisition-store": " data-acquisition-store.spot.robot",
        "data-buffer": "buffer.spot.robot",
        "data-buffer-private": "bufferprivate.spot.robot",
        "directory": "api.spot.robot",
        "directory-registration": "api.spot.robot",
        "docking": "docking.spot.robot",
        "echo": "echo.spot.robot",
        "estop": "estop.spot.robot",
        "fault": "fault.spot.robot",
        "graph-nav-service": "graph-nav.spot.robot",
        "image": "api.spot.robot",
        "internal.localnav": "localnav.spot.robot",
        "lease": "api.spot.robot",
        "license": "api.spot.robot",
        "local-grid-service": "localgrid.spot.robot",
        "log-annotation": "log.spot.robot",
        "metrics-logging": "metricslogging.spot.robot",
        "network-compute-bridge": "network-compute-bridge.spot.robot",
        "payload": "payload.spot.robot",
        "payload-registration": "payload-registration.spot.robot",
        "power": "power.spot.robot",
        "public_api": "api.spot.robot",
        "public_estop_api": "estop-api.spot.robot",
        "ray-cast": "bosdyn.api.internal.RayCastService",
        "recording-service": "recordingv2.spot.robot",
        "robot-command": "command.spot.robot",
        "robot-id": "id.spot.robot",
        "robot-mission": "robot-mission.spot.robot",
        "robot-state": "state.spot.robot",
        "robot_images": "api.spot.robot",
        "spot-check": "check.spot.robot",
        "time-sync": "api.spot.robot",
        "world-objects": "world-objects.spot.robot"
    ]
    
    var hostName: String
    var clientName: String
    var timeout: Int64
    var port:Int = 443  // always use secure connection
    var channel: ClientConnection?

    // Generic Constructor
    init(hostName: String, clientName: String, timeout: Int64) {
        self.hostName = hostName
        self.clientName = clientName
        self.timeout = timeout
    }
    
//    TODO: Error handling for incorrect client authority
    // Perform TLS Handshake and open connection
    func createSecureChannel() throws {
        let group = PlatformSupport.makeEventLoopGroup(loopCount: 1)
        
        if let serverHostnameOverride = clientAuthorityLibrary[self.clientName] {

            if let pemFilePath = Bundle.main.path(forResource: "robot", ofType: "pem") {
                if let config = try? NIOSSLCertificate.fromPEMFile(pemFilePath) {
                    self.channel = ClientConnection.usingTLSBackedByNIOSSL(on: group)
                        .withTLS(certificateVerification: CertificateVerification.noHostnameVerification)
                        .withTLS(trustRoots: .certificates(config))
                        .withTLS(serverHostnameOverride: serverHostnameOverride)
                        .connect(host: self.hostName, port: self.port)
                    if (self.channel == nil) {
                        throw ClientError.channelNotCreated
                    }
                } else {
                    throw ClientError.invalidPEM
                }
            } else {
                throw ClientError.missingPEM
            }
            
        }
    }

    // Wrapper function to synchronously call the supplied RPC function
    func call<Request,Response>(grpcCall: UnaryCall<Request,Response>) throws -> Response {
        
        // Wait on call to finish then return the value
        do {
            return try grpcCall.response.wait()
        }
        catch {
            throw ClientError.callFailed
        }
    }

    // MARK: Untested
    // Wrapper function to asynchronously call the supplied RPC function
    func asyncCall<Request,Response>(grpcCall: UnaryCall<Request,Response>, completed: @escaping (Response) -> Void) throws {

        // Successful return from RPC call
        grpcCall.response.whenSuccess { summary in
            completed(summary)
        }
        // TODO: Better response handling of error cases
        
        // Failed return from RPC call
        grpcCall.response.whenFailure { error in
            if let status = error as? GRPCStatus {
                let code = status.localizedDescription
                print(CallError.failure(errorDescription: code))
            } else {
                print(CallError.failure(errorDescription: "Generic Failure... Something really bad happened."))
            }
        }
    }
    
    func deregister() {
        _ = self.channel?.close()
    }
}
