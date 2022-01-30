// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/arm_surface_contact_service.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright (c) 2021 Boston Dynamics, Inc.  All rights reserved.
//
// Downloading, reproducing, distributing or otherwise using the SDK Software
// is subject to the terms and conditions of the Boston Dynamics Software
// Development Kit License (20191101-BDSDK-SL).

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Bosdyn_Api_ArmSurfaceContactCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Common request header.
  public var header: Bosdyn_Api_RequestHeader {
    get {return _header ?? Bosdyn_Api_RequestHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The Lease to show ownership of the robot.
  public var lease: Bosdyn_Api_Lease {
    get {return _lease ?? Bosdyn_Api_Lease()}
    set {_lease = newValue}
  }
  /// Returns true if `lease` has been explicitly set.
  public var hasLease: Bool {return self._lease != nil}
  /// Clears the value of `lease`. Subsequent reads from it will return its default value.
  public mutating func clearLease() {self._lease = nil}

  public var request: Bosdyn_Api_ArmSurfaceContact.Request {
    get {return _request ?? Bosdyn_Api_ArmSurfaceContact.Request()}
    set {_request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  public var hasRequest: Bool {return self._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  public mutating func clearRequest() {self._request = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
  fileprivate var _lease: Bosdyn_Api_Lease? = nil
  fileprivate var _request: Bosdyn_Api_ArmSurfaceContact.Request? = nil
}

public struct Bosdyn_Api_ArmSurfaceContactResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Common response header.
  public var header: Bosdyn_Api_ResponseHeader {
    get {return _header ?? Bosdyn_Api_ResponseHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api"

extension Bosdyn_Api_ArmSurfaceContactCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ArmSurfaceContactCommand"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "lease"),
    4: .same(proto: "request"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._lease)
      case 4: try decoder.decodeSingularMessageField(value: &self._request)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._lease {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._request {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_ArmSurfaceContactCommand, rhs: Bosdyn_Api_ArmSurfaceContactCommand) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._lease != rhs._lease {return false}
    if lhs._request != rhs._request {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_ArmSurfaceContactResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ArmSurfaceContactResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_ArmSurfaceContactResponse, rhs: Bosdyn_Api_ArmSurfaceContactResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
