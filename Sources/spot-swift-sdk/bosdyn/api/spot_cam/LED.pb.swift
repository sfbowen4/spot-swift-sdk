// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/spot_cam/LED.proto
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

/// Request the current state of LEDs on the SpotCam.
public struct Bosdyn_Api_SpotCam_GetLEDBrightnessRequest {
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

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Describes the current brightnesses of all LEDs.
public struct Bosdyn_Api_SpotCam_GetLEDBrightnessResponse {
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

  /// Brightness [0, 1] of the LED located at indices [0, 3].
  public var brightnesses: [Float] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

/// Set individual LED brightnesses.
public struct Bosdyn_Api_SpotCam_SetLEDBrightnessRequest {
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

  /// Brightness [0, 1] to assign to the LED located at indices [0, 3].
  public var brightnesses: Dictionary<Int32,Float> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Response with any errors setting LED brightnesses.
public struct Bosdyn_Api_SpotCam_SetLEDBrightnessResponse {
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

fileprivate let _protobuf_package = "bosdyn.api.spot_cam"

extension Bosdyn_Api_SpotCam_GetLEDBrightnessRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetLEDBrightnessRequest"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetLEDBrightnessRequest, rhs: Bosdyn_Api_SpotCam_GetLEDBrightnessRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetLEDBrightnessResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetLEDBrightnessResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "brightnesses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeRepeatedFloatField(value: &self.brightnesses)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.brightnesses.isEmpty {
      try visitor.visitPackedFloatField(value: self.brightnesses, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetLEDBrightnessResponse, rhs: Bosdyn_Api_SpotCam_GetLEDBrightnessResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.brightnesses != rhs.brightnesses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetLEDBrightnessRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetLEDBrightnessRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "brightnesses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: &self.brightnesses)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.brightnesses.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: self.brightnesses, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetLEDBrightnessRequest, rhs: Bosdyn_Api_SpotCam_SetLEDBrightnessRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.brightnesses != rhs.brightnesses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetLEDBrightnessResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetLEDBrightnessResponse"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetLEDBrightnessResponse, rhs: Bosdyn_Api_SpotCam_SetLEDBrightnessResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}