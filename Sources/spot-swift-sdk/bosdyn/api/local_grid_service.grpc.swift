//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bosdyn/api/local_grid_service.proto
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


/// The map service provides access multiple kinds of cell-based map data.
/// It supports querying for the list of available types of local grids provided by the service,
/// and supports requesting a set of the latest local grids by map type name.
///
/// Usage: instantiate `Bosdyn_Api_LocalGridServiceClient`, then call methods of this protocol to make API calls.
public protocol Bosdyn_Api_LocalGridServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Bosdyn_Api_LocalGridServiceClientInterceptorFactoryProtocol? { get }

  func getLocalGridTypes(
    _ request: Bosdyn_Api_GetLocalGridTypesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_GetLocalGridTypesRequest, Bosdyn_Api_GetLocalGridTypesResponse>

  func getLocalGrids(
    _ request: Bosdyn_Api_GetLocalGridsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_GetLocalGridsRequest, Bosdyn_Api_GetLocalGridsResponse>
}

extension Bosdyn_Api_LocalGridServiceClientProtocol {
  public var serviceName: String {
    return "bosdyn.api.LocalGridService"
  }

  /// Obtain the list of available map types.
  /// The name field keys access to individual local grids when calling GetLocalGrids.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLocalGridTypes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLocalGridTypes(
    _ request: Bosdyn_Api_GetLocalGridTypesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_GetLocalGridTypesRequest, Bosdyn_Api_GetLocalGridTypesResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LocalGridService/GetLocalGridTypes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLocalGridTypesInterceptors() ?? []
    )
  }

  /// Request a set of local grids by type name.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLocalGrids.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLocalGrids(
    _ request: Bosdyn_Api_GetLocalGridsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_GetLocalGridsRequest, Bosdyn_Api_GetLocalGridsResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LocalGridService/GetLocalGrids",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLocalGridsInterceptors() ?? []
    )
  }
}

public protocol Bosdyn_Api_LocalGridServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getLocalGridTypes'.
  func makeGetLocalGridTypesInterceptors() -> [ClientInterceptor<Bosdyn_Api_GetLocalGridTypesRequest, Bosdyn_Api_GetLocalGridTypesResponse>]

  /// - Returns: Interceptors to use when invoking 'getLocalGrids'.
  func makeGetLocalGridsInterceptors() -> [ClientInterceptor<Bosdyn_Api_GetLocalGridsRequest, Bosdyn_Api_GetLocalGridsResponse>]
}

public final class Bosdyn_Api_LocalGridServiceClient: Bosdyn_Api_LocalGridServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Bosdyn_Api_LocalGridServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the bosdyn.api.LocalGridService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Bosdyn_Api_LocalGridServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// The map service provides access multiple kinds of cell-based map data.
/// It supports querying for the list of available types of local grids provided by the service,
/// and supports requesting a set of the latest local grids by map type name.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Bosdyn_Api_LocalGridServiceProvider: CallHandlerProvider {
  var interceptors: Bosdyn_Api_LocalGridServiceServerInterceptorFactoryProtocol? { get }

  /// Obtain the list of available map types.
  /// The name field keys access to individual local grids when calling GetLocalGrids.
  func getLocalGridTypes(request: Bosdyn_Api_GetLocalGridTypesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_GetLocalGridTypesResponse>

  /// Request a set of local grids by type name.
  func getLocalGrids(request: Bosdyn_Api_GetLocalGridsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_GetLocalGridsResponse>
}

extension Bosdyn_Api_LocalGridServiceProvider {
  public var serviceName: Substring { return "bosdyn.api.LocalGridService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetLocalGridTypes":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_GetLocalGridTypesRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_GetLocalGridTypesResponse>(),
        interceptors: self.interceptors?.makeGetLocalGridTypesInterceptors() ?? [],
        userFunction: self.getLocalGridTypes(request:context:)
      )

    case "GetLocalGrids":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_GetLocalGridsRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_GetLocalGridsResponse>(),
        interceptors: self.interceptors?.makeGetLocalGridsInterceptors() ?? [],
        userFunction: self.getLocalGrids(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Bosdyn_Api_LocalGridServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getLocalGridTypes'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetLocalGridTypesInterceptors() -> [ServerInterceptor<Bosdyn_Api_GetLocalGridTypesRequest, Bosdyn_Api_GetLocalGridTypesResponse>]

  /// - Returns: Interceptors to use when handling 'getLocalGrids'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetLocalGridsInterceptors() -> [ServerInterceptor<Bosdyn_Api_GetLocalGridsRequest, Bosdyn_Api_GetLocalGridsResponse>]
}
