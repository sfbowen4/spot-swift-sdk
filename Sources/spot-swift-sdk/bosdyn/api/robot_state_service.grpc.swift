//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bosdyn/api/robot_state_service.proto
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


/// The robot state service tracks all information about the measured and computed states of the robot at the current time.
///
/// Usage: instantiate `Bosdyn_Api_RobotStateServiceClient`, then call methods of this protocol to make API calls.
public protocol Bosdyn_Api_RobotStateServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Bosdyn_Api_RobotStateServiceClientInterceptorFactoryProtocol? { get }

  func getRobotState(
    _ request: Bosdyn_Api_RobotStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_RobotStateRequest, Bosdyn_Api_RobotStateResponse>

  func getRobotMetrics(
    _ request: Bosdyn_Api_RobotMetricsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_RobotMetricsRequest, Bosdyn_Api_RobotMetricsResponse>

  func getRobotHardwareConfiguration(
    _ request: Bosdyn_Api_RobotHardwareConfigurationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_RobotHardwareConfigurationRequest, Bosdyn_Api_RobotHardwareConfigurationResponse>

  func getRobotLinkModel(
    _ request: Bosdyn_Api_RobotLinkModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_RobotLinkModelRequest, Bosdyn_Api_RobotLinkModelResponse>
}

extension Bosdyn_Api_RobotStateServiceClientProtocol {
  public var serviceName: String {
    return "bosdyn.api.RobotStateService"
  }

  /// Get robot state information (such as kinematic state, power state, or faults).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRobotState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRobotState(
    _ request: Bosdyn_Api_RobotStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_RobotStateRequest, Bosdyn_Api_RobotStateResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.RobotStateService/GetRobotState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRobotStateInterceptors() ?? []
    )
  }

  /// Get different robot metrics and parameters from the robot.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRobotMetrics.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRobotMetrics(
    _ request: Bosdyn_Api_RobotMetricsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_RobotMetricsRequest, Bosdyn_Api_RobotMetricsResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.RobotStateService/GetRobotMetrics",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRobotMetricsInterceptors() ?? []
    )
  }

  /// Get the hardware configuration of the robot, which describes the robot skeleton and urdf.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRobotHardwareConfiguration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRobotHardwareConfiguration(
    _ request: Bosdyn_Api_RobotHardwareConfigurationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_RobotHardwareConfigurationRequest, Bosdyn_Api_RobotHardwareConfigurationResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.RobotStateService/GetRobotHardwareConfiguration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRobotHardwareConfigurationInterceptors() ?? []
    )
  }

  /// Returns the OBJ file for a specifc robot link. Intended to be called after
  /// GetRobotHardwareConfiguration, using the link names returned by that call.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRobotLinkModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRobotLinkModel(
    _ request: Bosdyn_Api_RobotLinkModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_RobotLinkModelRequest, Bosdyn_Api_RobotLinkModelResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.RobotStateService/GetRobotLinkModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRobotLinkModelInterceptors() ?? []
    )
  }
}

public protocol Bosdyn_Api_RobotStateServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getRobotState'.
  func makeGetRobotStateInterceptors() -> [ClientInterceptor<Bosdyn_Api_RobotStateRequest, Bosdyn_Api_RobotStateResponse>]

  /// - Returns: Interceptors to use when invoking 'getRobotMetrics'.
  func makeGetRobotMetricsInterceptors() -> [ClientInterceptor<Bosdyn_Api_RobotMetricsRequest, Bosdyn_Api_RobotMetricsResponse>]

  /// - Returns: Interceptors to use when invoking 'getRobotHardwareConfiguration'.
  func makeGetRobotHardwareConfigurationInterceptors() -> [ClientInterceptor<Bosdyn_Api_RobotHardwareConfigurationRequest, Bosdyn_Api_RobotHardwareConfigurationResponse>]

  /// - Returns: Interceptors to use when invoking 'getRobotLinkModel'.
  func makeGetRobotLinkModelInterceptors() -> [ClientInterceptor<Bosdyn_Api_RobotLinkModelRequest, Bosdyn_Api_RobotLinkModelResponse>]
}

public final class Bosdyn_Api_RobotStateServiceClient: Bosdyn_Api_RobotStateServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Bosdyn_Api_RobotStateServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the bosdyn.api.RobotStateService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Bosdyn_Api_RobotStateServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// The robot state service tracks all information about the measured and computed states of the robot at the current time.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Bosdyn_Api_RobotStateServiceProvider: CallHandlerProvider {
  var interceptors: Bosdyn_Api_RobotStateServiceServerInterceptorFactoryProtocol? { get }

  /// Get robot state information (such as kinematic state, power state, or faults).
  func getRobotState(request: Bosdyn_Api_RobotStateRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_RobotStateResponse>

  /// Get different robot metrics and parameters from the robot.
  func getRobotMetrics(request: Bosdyn_Api_RobotMetricsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_RobotMetricsResponse>

  /// Get the hardware configuration of the robot, which describes the robot skeleton and urdf.
  func getRobotHardwareConfiguration(request: Bosdyn_Api_RobotHardwareConfigurationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_RobotHardwareConfigurationResponse>

  /// Returns the OBJ file for a specifc robot link. Intended to be called after
  /// GetRobotHardwareConfiguration, using the link names returned by that call.
  func getRobotLinkModel(request: Bosdyn_Api_RobotLinkModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_RobotLinkModelResponse>
}

extension Bosdyn_Api_RobotStateServiceProvider {
  public var serviceName: Substring { return "bosdyn.api.RobotStateService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetRobotState":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_RobotStateRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_RobotStateResponse>(),
        interceptors: self.interceptors?.makeGetRobotStateInterceptors() ?? [],
        userFunction: self.getRobotState(request:context:)
      )

    case "GetRobotMetrics":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_RobotMetricsRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_RobotMetricsResponse>(),
        interceptors: self.interceptors?.makeGetRobotMetricsInterceptors() ?? [],
        userFunction: self.getRobotMetrics(request:context:)
      )

    case "GetRobotHardwareConfiguration":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_RobotHardwareConfigurationRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_RobotHardwareConfigurationResponse>(),
        interceptors: self.interceptors?.makeGetRobotHardwareConfigurationInterceptors() ?? [],
        userFunction: self.getRobotHardwareConfiguration(request:context:)
      )

    case "GetRobotLinkModel":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_RobotLinkModelRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_RobotLinkModelResponse>(),
        interceptors: self.interceptors?.makeGetRobotLinkModelInterceptors() ?? [],
        userFunction: self.getRobotLinkModel(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Bosdyn_Api_RobotStateServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getRobotState'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetRobotStateInterceptors() -> [ServerInterceptor<Bosdyn_Api_RobotStateRequest, Bosdyn_Api_RobotStateResponse>]

  /// - Returns: Interceptors to use when handling 'getRobotMetrics'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetRobotMetricsInterceptors() -> [ServerInterceptor<Bosdyn_Api_RobotMetricsRequest, Bosdyn_Api_RobotMetricsResponse>]

  /// - Returns: Interceptors to use when handling 'getRobotHardwareConfiguration'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetRobotHardwareConfigurationInterceptors() -> [ServerInterceptor<Bosdyn_Api_RobotHardwareConfigurationRequest, Bosdyn_Api_RobotHardwareConfigurationResponse>]

  /// - Returns: Interceptors to use when handling 'getRobotLinkModel'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetRobotLinkModelInterceptors() -> [ServerInterceptor<Bosdyn_Api_RobotLinkModelRequest, Bosdyn_Api_RobotLinkModelResponse>]
}
