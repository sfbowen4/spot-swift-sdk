//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bosdyn/api/lease_service.proto
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


/// LeaseService provides Leases of shared resources to clients.
/// An example of a shared resource is the set of leg motors on Spot, which
/// has the resource name of "body".
/// Clients can delegate out the Leases they receive from the LeaseService
/// to additional clients or services by generating sub-leases.
/// Leases obtained from the LeaseService may be revoked if the Lease holder
/// does not check in frequently to the LeaseService, or if another client
/// force-acquires a Lease.
///
/// Usage: instantiate `Bosdyn_Api_LeaseServiceClient`, then call methods of this protocol to make API calls.
public protocol Bosdyn_Api_LeaseServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Bosdyn_Api_LeaseServiceClientInterceptorFactoryProtocol? { get }

  func acquireLease(
    _ request: Bosdyn_Api_AcquireLeaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_AcquireLeaseRequest, Bosdyn_Api_AcquireLeaseResponse>

  func takeLease(
    _ request: Bosdyn_Api_TakeLeaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_TakeLeaseRequest, Bosdyn_Api_TakeLeaseResponse>

  func returnLease(
    _ request: Bosdyn_Api_ReturnLeaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_ReturnLeaseRequest, Bosdyn_Api_ReturnLeaseResponse>

  func listLeases(
    _ request: Bosdyn_Api_ListLeasesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_ListLeasesRequest, Bosdyn_Api_ListLeasesResponse>

  func retainLease(
    _ request: Bosdyn_Api_RetainLeaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bosdyn_Api_RetainLeaseRequest, Bosdyn_Api_RetainLeaseResponse>
}

extension Bosdyn_Api_LeaseServiceClientProtocol {
  public var serviceName: String {
    return "bosdyn.api.LeaseService"
  }

  /// Acquire a lease to a specific resource if the resource is available.
  ///
  /// - Parameters:
  ///   - request: Request to send to AcquireLease.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func acquireLease(
    _ request: Bosdyn_Api_AcquireLeaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_AcquireLeaseRequest, Bosdyn_Api_AcquireLeaseResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LeaseService/AcquireLease",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAcquireLeaseInterceptors() ?? []
    )
  }

  /// Take a lease for a specific resource even if another client has a lease.
  ///
  /// - Parameters:
  ///   - request: Request to send to TakeLease.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func takeLease(
    _ request: Bosdyn_Api_TakeLeaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_TakeLeaseRequest, Bosdyn_Api_TakeLeaseResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LeaseService/TakeLease",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeTakeLeaseInterceptors() ?? []
    )
  }

  /// Return a lease to the LeaseService.
  ///
  /// - Parameters:
  ///   - request: Request to send to ReturnLease.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func returnLease(
    _ request: Bosdyn_Api_ReturnLeaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_ReturnLeaseRequest, Bosdyn_Api_ReturnLeaseResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LeaseService/ReturnLease",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeReturnLeaseInterceptors() ?? []
    )
  }

  /// List state of all leases managed by the LeaseService.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListLeases.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listLeases(
    _ request: Bosdyn_Api_ListLeasesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_ListLeasesRequest, Bosdyn_Api_ListLeasesResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LeaseService/ListLeases",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListLeasesInterceptors() ?? []
    )
  }

  /// Retain possession of a lease.
  ///
  /// - Parameters:
  ///   - request: Request to send to RetainLease.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func retainLease(
    _ request: Bosdyn_Api_RetainLeaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bosdyn_Api_RetainLeaseRequest, Bosdyn_Api_RetainLeaseResponse> {
    return self.makeUnaryCall(
      path: "/bosdyn.api.LeaseService/RetainLease",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRetainLeaseInterceptors() ?? []
    )
  }
}

public protocol Bosdyn_Api_LeaseServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'acquireLease'.
  func makeAcquireLeaseInterceptors() -> [ClientInterceptor<Bosdyn_Api_AcquireLeaseRequest, Bosdyn_Api_AcquireLeaseResponse>]

  /// - Returns: Interceptors to use when invoking 'takeLease'.
  func makeTakeLeaseInterceptors() -> [ClientInterceptor<Bosdyn_Api_TakeLeaseRequest, Bosdyn_Api_TakeLeaseResponse>]

  /// - Returns: Interceptors to use when invoking 'returnLease'.
  func makeReturnLeaseInterceptors() -> [ClientInterceptor<Bosdyn_Api_ReturnLeaseRequest, Bosdyn_Api_ReturnLeaseResponse>]

  /// - Returns: Interceptors to use when invoking 'listLeases'.
  func makeListLeasesInterceptors() -> [ClientInterceptor<Bosdyn_Api_ListLeasesRequest, Bosdyn_Api_ListLeasesResponse>]

  /// - Returns: Interceptors to use when invoking 'retainLease'.
  func makeRetainLeaseInterceptors() -> [ClientInterceptor<Bosdyn_Api_RetainLeaseRequest, Bosdyn_Api_RetainLeaseResponse>]
}

public final class Bosdyn_Api_LeaseServiceClient: Bosdyn_Api_LeaseServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Bosdyn_Api_LeaseServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the bosdyn.api.LeaseService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Bosdyn_Api_LeaseServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// LeaseService provides Leases of shared resources to clients.
/// An example of a shared resource is the set of leg motors on Spot, which
/// has the resource name of "body".
/// Clients can delegate out the Leases they receive from the LeaseService
/// to additional clients or services by generating sub-leases.
/// Leases obtained from the LeaseService may be revoked if the Lease holder
/// does not check in frequently to the LeaseService, or if another client
/// force-acquires a Lease.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Bosdyn_Api_LeaseServiceProvider: CallHandlerProvider {
  var interceptors: Bosdyn_Api_LeaseServiceServerInterceptorFactoryProtocol? { get }

  /// Acquire a lease to a specific resource if the resource is available.
  func acquireLease(request: Bosdyn_Api_AcquireLeaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_AcquireLeaseResponse>

  /// Take a lease for a specific resource even if another client has a lease.
  func takeLease(request: Bosdyn_Api_TakeLeaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_TakeLeaseResponse>

  /// Return a lease to the LeaseService.
  func returnLease(request: Bosdyn_Api_ReturnLeaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_ReturnLeaseResponse>

  /// List state of all leases managed by the LeaseService.
  func listLeases(request: Bosdyn_Api_ListLeasesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_ListLeasesResponse>

  /// Retain possession of a lease.
  func retainLease(request: Bosdyn_Api_RetainLeaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bosdyn_Api_RetainLeaseResponse>
}

extension Bosdyn_Api_LeaseServiceProvider {
  public var serviceName: Substring { return "bosdyn.api.LeaseService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "AcquireLease":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_AcquireLeaseRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_AcquireLeaseResponse>(),
        interceptors: self.interceptors?.makeAcquireLeaseInterceptors() ?? [],
        userFunction: self.acquireLease(request:context:)
      )

    case "TakeLease":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_TakeLeaseRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_TakeLeaseResponse>(),
        interceptors: self.interceptors?.makeTakeLeaseInterceptors() ?? [],
        userFunction: self.takeLease(request:context:)
      )

    case "ReturnLease":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_ReturnLeaseRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_ReturnLeaseResponse>(),
        interceptors: self.interceptors?.makeReturnLeaseInterceptors() ?? [],
        userFunction: self.returnLease(request:context:)
      )

    case "ListLeases":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_ListLeasesRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_ListLeasesResponse>(),
        interceptors: self.interceptors?.makeListLeasesInterceptors() ?? [],
        userFunction: self.listLeases(request:context:)
      )

    case "RetainLease":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Bosdyn_Api_RetainLeaseRequest>(),
        responseSerializer: ProtobufSerializer<Bosdyn_Api_RetainLeaseResponse>(),
        interceptors: self.interceptors?.makeRetainLeaseInterceptors() ?? [],
        userFunction: self.retainLease(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Bosdyn_Api_LeaseServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'acquireLease'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAcquireLeaseInterceptors() -> [ServerInterceptor<Bosdyn_Api_AcquireLeaseRequest, Bosdyn_Api_AcquireLeaseResponse>]

  /// - Returns: Interceptors to use when handling 'takeLease'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeTakeLeaseInterceptors() -> [ServerInterceptor<Bosdyn_Api_TakeLeaseRequest, Bosdyn_Api_TakeLeaseResponse>]

  /// - Returns: Interceptors to use when handling 'returnLease'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeReturnLeaseInterceptors() -> [ServerInterceptor<Bosdyn_Api_ReturnLeaseRequest, Bosdyn_Api_ReturnLeaseResponse>]

  /// - Returns: Interceptors to use when handling 'listLeases'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeListLeasesInterceptors() -> [ServerInterceptor<Bosdyn_Api_ListLeasesRequest, Bosdyn_Api_ListLeasesResponse>]

  /// - Returns: Interceptors to use when handling 'retainLease'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeRetainLeaseInterceptors() -> [ServerInterceptor<Bosdyn_Api_RetainLeaseRequest, Bosdyn_Api_RetainLeaseResponse>]
}
