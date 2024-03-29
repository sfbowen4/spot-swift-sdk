//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bosdyn/api/world_object_service.proto
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


/// The world object service provides a way to track and store objects detected in the world around the robot.
///
/// Usage: instantiate `Bosdyn_Api_WorldObjectServiceClient`, then call methods of this protocol to make API calls.
public protocol Bosdyn_Api_WorldObjectServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Bosdyn_Api_WorldObjectServiceClientInterceptorFactoryProtocol? { get }

  func listWorldObjects(
    _ request: Bosdyn_Api_ListWorldObjectRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_ListWorldObjectRequest, Bosdyn_Api_ListWorldObjectResponse>

  func mutateWorldObjects(
    _ request: Bosdyn_Api_MutateWorldObjectRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_MutateWorldObjectRequest, Bosdyn_Api_MutateWorldObjectResponse>
}

extension Bosdyn_Api_WorldObjectServiceClientProtocol {
  public var serviceName: String {
    return "bosdyn.api.WorldObjectService"
  }

  /// Request a list of all the world objects in the robot's perception scene.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListWorldObjects.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listWorldObjects(
    _ request: Bosdyn_Api_ListWorldObjectRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_ListWorldObjectRequest, Bosdyn_Api_ListWorldObjectResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.WorldObjectService/ListWorldObjects",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListWorldObjectsInterceptors() ?? []
    )
  }

  /// Mutate (add, change, or delete) the world objects.
  ///
  /// - Parameters:
  ///   - request: Request to send to MutateWorldObjects.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func mutateWorldObjects(
    _ request: Bosdyn_Api_MutateWorldObjectRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_MutateWorldObjectRequest, Bosdyn_Api_MutateWorldObjectResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.WorldObjectService/MutateWorldObjects",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeMutateWorldObjectsInterceptors() ?? []
    )
  }
}

public protocol Bosdyn_Api_WorldObjectServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'listWorldObjects'.
  func makeListWorldObjectsInterceptors() -> [ClientInterceptor<Bosdyn_Api_ListWorldObjectRequest, Bosdyn_Api_ListWorldObjectResponse>]

  /// - Returns: Interceptors to use when invoking 'mutateWorldObjects'.
  func makeMutateWorldObjectsInterceptors() -> [ClientInterceptor<Bosdyn_Api_MutateWorldObjectRequest, Bosdyn_Api_MutateWorldObjectResponse>]
}

public final class Bosdyn_Api_WorldObjectServiceClient: Bosdyn_Api_WorldObjectServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Bosdyn_Api_WorldObjectServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the bosdyn.api.WorldObjectService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Bosdyn_Api_WorldObjectServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// The world object service provides a way to track and store objects detected in the world around the robot.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Bosdyn_Api_WorldObjectServiceProvider: CallHandlerProvider {
  var interceptors: Bosdyn_Api_WorldObjectServiceServerInterceptorFactoryProtocol? { get }

  /// Request a list of all the world objects in the robot's perception scene.
  func listWorldObjects(request: Bosdyn_Api_ListWorldObjectRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_ListWorldObjectResponse>

  /// Mutate (add, change, or delete) the world objects.
  func mutateWorldObjects(request: Bosdyn_Api_MutateWorldObjectRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_MutateWorldObjectResponse>
}

extension Bosdyn_Api_WorldObjectServiceProvider {
  public var serviceName: Substring { return "bosdyn.api.WorldObjectService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "ListWorldObjects":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_ListWorldObjectRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_ListWorldObjectResponse>(),
        interceptors: self.interceptors?.makeListWorldObjectsInterceptors() ?? [],
        userFunction: self.listWorldObjects(request:context:)
      )

    case "MutateWorldObjects":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_MutateWorldObjectRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_MutateWorldObjectResponse>(),
        interceptors: self.interceptors?.makeMutateWorldObjectsInterceptors() ?? [],
        userFunction: self.mutateWorldObjects(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Bosdyn_Api_WorldObjectServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'listWorldObjects'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeListWorldObjectsInterceptors() -> [ServerInterceptor<Bosdyn_Api_ListWorldObjectRequest, Bosdyn_Api_ListWorldObjectResponse>]

  /// - Returns: Interceptors to use when handling 'mutateWorldObjects'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeMutateWorldObjectsInterceptors() -> [ServerInterceptor<Bosdyn_Api_MutateWorldObjectRequest, Bosdyn_Api_MutateWorldObjectResponse>]
}
