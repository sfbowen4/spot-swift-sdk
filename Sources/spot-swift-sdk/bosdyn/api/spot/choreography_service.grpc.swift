//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bosdyn/api/spot/choreography_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `Bosdyn_Api_Spot_ChoreographyServiceClient`, then call methods of this protocol to make API calls.
public protocol Bosdyn_Api_Spot_ChoreographyServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Bosdyn_Api_Spot_ChoreographyServiceClientInterceptorFactoryProtocol? { get }

  func listAllMoves(
    _ request: Bosdyn_Api_Spot_ListAllMovesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_Spot_ListAllMovesRequest, Bosdyn_Api_Spot_ListAllMovesResponse>

  func uploadChoreography(
    _ request: Bosdyn_Api_Spot_UploadChoreographyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_Spot_UploadChoreographyRequest, Bosdyn_Api_Spot_UploadChoreographyResponse>

  func executeChoreography(
    _ request: Bosdyn_Api_Spot_ExecuteChoreographyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_Spot_ExecuteChoreographyRequest, Bosdyn_Api_Spot_ExecuteChoreographyResponse>
}

extension Bosdyn_Api_Spot_ChoreographyServiceClientProtocol {
  public var serviceName: String {
    return "bosdyn.api.spot.ChoreographyService"
  }

  /// List the available dance moves and their parameter information.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAllMoves.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listAllMoves(
    _ request: Bosdyn_Api_Spot_ListAllMovesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_Spot_ListAllMovesRequest, Bosdyn_Api_Spot_ListAllMovesResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.spot.ChoreographyService/ListAllMoves",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListAllMovesInterceptors() ?? []
    )
  }

  /// Upload a dance to the robot.
  ///
  /// - Parameters:
  ///   - request: Request to send to UploadChoreography.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func uploadChoreography(
    _ request: Bosdyn_Api_Spot_UploadChoreographyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_Spot_UploadChoreographyRequest, Bosdyn_Api_Spot_UploadChoreographyResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.spot.ChoreographyService/UploadChoreography",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUploadChoreographyInterceptors() ?? []
    )
  }

  /// Execute the uploaded dance.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExecuteChoreography.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func executeChoreography(
    _ request: Bosdyn_Api_Spot_ExecuteChoreographyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_Spot_ExecuteChoreographyRequest, Bosdyn_Api_Spot_ExecuteChoreographyResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.spot.ChoreographyService/ExecuteChoreography",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecuteChoreographyInterceptors() ?? []
    )
  }
}

public protocol Bosdyn_Api_Spot_ChoreographyServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'listAllMoves'.
  func makeListAllMovesInterceptors() -> [ClientInterceptor<Bosdyn_Api_Spot_ListAllMovesRequest, Bosdyn_Api_Spot_ListAllMovesResponse>]

  /// - Returns: Interceptors to use when invoking 'uploadChoreography'.
  func makeUploadChoreographyInterceptors() -> [ClientInterceptor<Bosdyn_Api_Spot_UploadChoreographyRequest, Bosdyn_Api_Spot_UploadChoreographyResponse>]

  /// - Returns: Interceptors to use when invoking 'executeChoreography'.
  func makeExecuteChoreographyInterceptors() -> [ClientInterceptor<Bosdyn_Api_Spot_ExecuteChoreographyRequest, Bosdyn_Api_Spot_ExecuteChoreographyResponse>]
}

public final class Bosdyn_Api_Spot_ChoreographyServiceClient: Bosdyn_Api_Spot_ChoreographyServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Bosdyn_Api_Spot_ChoreographyServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the bosdyn.api.spot.ChoreographyService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Bosdyn_Api_Spot_ChoreographyServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Bosdyn_Api_Spot_ChoreographyServiceProvider: CallHandlerProvider {
  var interceptors: Bosdyn_Api_Spot_ChoreographyServiceServerInterceptorFactoryProtocol? { get }

  /// List the available dance moves and their parameter information.
  func listAllMoves(request: Bosdyn_Api_Spot_ListAllMovesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_Spot_ListAllMovesResponse>

  /// Upload a dance to the robot.
  func uploadChoreography(request: Bosdyn_Api_Spot_UploadChoreographyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_Spot_UploadChoreographyResponse>

  /// Execute the uploaded dance.
  func executeChoreography(request: Bosdyn_Api_Spot_ExecuteChoreographyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_Spot_ExecuteChoreographyResponse>
}

extension Bosdyn_Api_Spot_ChoreographyServiceProvider {
  public var serviceName: Substring { return "bosdyn.api.spot.ChoreographyService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "ListAllMoves":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_Spot_ListAllMovesRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_Spot_ListAllMovesResponse>(),
        interceptors: self.interceptors?.makeListAllMovesInterceptors() ?? [],
        userFunction: self.listAllMoves(request:context:)
      )

    case "UploadChoreography":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_Spot_UploadChoreographyRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_Spot_UploadChoreographyResponse>(),
        interceptors: self.interceptors?.makeUploadChoreographyInterceptors() ?? [],
        userFunction: self.uploadChoreography(request:context:)
      )

    case "ExecuteChoreography":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_Spot_ExecuteChoreographyRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_Spot_ExecuteChoreographyResponse>(),
        interceptors: self.interceptors?.makeExecuteChoreographyInterceptors() ?? [],
        userFunction: self.executeChoreography(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Bosdyn_Api_Spot_ChoreographyServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'listAllMoves'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeListAllMovesInterceptors() -> [ServerInterceptor<Bosdyn_Api_Spot_ListAllMovesRequest, Bosdyn_Api_Spot_ListAllMovesResponse>]

  /// - Returns: Interceptors to use when handling 'uploadChoreography'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeUploadChoreographyInterceptors() -> [ServerInterceptor<Bosdyn_Api_Spot_UploadChoreographyRequest, Bosdyn_Api_Spot_UploadChoreographyResponse>]

  /// - Returns: Interceptors to use when handling 'executeChoreography'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeExecuteChoreographyInterceptors() -> [ServerInterceptor<Bosdyn_Api_Spot_ExecuteChoreographyRequest, Bosdyn_Api_Spot_ExecuteChoreographyResponse>]
}