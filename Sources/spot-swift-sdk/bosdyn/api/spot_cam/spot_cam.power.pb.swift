// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/spot_cam/power.proto
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

/// Power on or off of components of the SpotCam.
public struct Bosdyn_Api_SpotCam_PowerStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///these switches are 'true' for power-on, 'false' for power-off
  public var ptz: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _ptz ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_ptz = newValue}
  }
  /// Returns true if `ptz` has been explicitly set.
  public var hasPtz: Bool {return self._ptz != nil}
  /// Clears the value of `ptz`. Subsequent reads from it will return its default value.
  public mutating func clearPtz() {self._ptz = nil}

  public var aux1: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _aux1 ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_aux1 = newValue}
  }
  /// Returns true if `aux1` has been explicitly set.
  public var hasAux1: Bool {return self._aux1 != nil}
  /// Clears the value of `aux1`. Subsequent reads from it will return its default value.
  public mutating func clearAux1() {self._aux1 = nil}

  public var aux2: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _aux2 ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_aux2 = newValue}
  }
  /// Returns true if `aux2` has been explicitly set.
  public var hasAux2: Bool {return self._aux2 != nil}
  /// Clears the value of `aux2`. Subsequent reads from it will return its default value.
  public mutating func clearAux2() {self._aux2 = nil}

  public var externalMic: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _externalMic ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_externalMic = newValue}
  }
  /// Returns true if `externalMic` has been explicitly set.
  public var hasExternalMic: Bool {return self._externalMic != nil}
  /// Clears the value of `externalMic`. Subsequent reads from it will return its default value.
  public mutating func clearExternalMic() {self._externalMic = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _ptz: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _aux1: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _aux2: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _externalMic: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
}

/// Request component power status.
public struct Bosdyn_Api_SpotCam_GetPowerStatusRequest {
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

/// Provides the power status of all components.
public struct Bosdyn_Api_SpotCam_GetPowerStatusResponse {
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

  ///status indicates the power status of the controllable devices
  ///'true' for power-on, 'false' for power-off
  public var status: Bosdyn_Api_SpotCam_PowerStatus {
    get {return _status ?? Bosdyn_Api_SpotCam_PowerStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
  fileprivate var _status: Bosdyn_Api_SpotCam_PowerStatus? = nil
}

/// Turn components on or off.
public struct Bosdyn_Api_SpotCam_SetPowerStatusRequest {
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

  ///status indicates the requested power status of the controllable devices
  ///'true' for power-on, 'false' for power-off
  public var status: Bosdyn_Api_SpotCam_PowerStatus {
    get {return _status ?? Bosdyn_Api_SpotCam_PowerStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
  fileprivate var _status: Bosdyn_Api_SpotCam_PowerStatus? = nil
}

/// Result of turning components on or off.
public struct Bosdyn_Api_SpotCam_SetPowerStatusResponse {
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

  ///status indicates the requested changes upon success
  ///'true' for power-on, 'false' for power-off
  public var status: Bosdyn_Api_SpotCam_PowerStatus {
    get {return _status ?? Bosdyn_Api_SpotCam_PowerStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
  fileprivate var _status: Bosdyn_Api_SpotCam_PowerStatus? = nil
}

/// Turn components off and then back on without needing two separate requests.
public struct Bosdyn_Api_SpotCam_CyclePowerRequest {
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

  ///status indicates the devices for which cycle-power is requested
  ///'true' for cycle-power, else no effect
  ///power cycle will not be performed on a given device if its state is power-off prior to this call
  public var status: Bosdyn_Api_SpotCam_PowerStatus {
    get {return _status ?? Bosdyn_Api_SpotCam_PowerStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
  fileprivate var _status: Bosdyn_Api_SpotCam_PowerStatus? = nil
}

/// Result of power cycling components.
public struct Bosdyn_Api_SpotCam_CyclePowerResponse {
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

  ///status indicates the power status of the controllable devices after a successful power cycle
  ///'true' for power-on, 'false' for power-off
  public var status: Bosdyn_Api_SpotCam_PowerStatus {
    get {return _status ?? Bosdyn_Api_SpotCam_PowerStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
  fileprivate var _status: Bosdyn_Api_SpotCam_PowerStatus? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api.spot_cam"

extension Bosdyn_Api_SpotCam_PowerStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PowerStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "ptz"),
    3: .same(proto: "aux1"),
    4: .same(proto: "aux2"),
    5: .standard(proto: "external_mic"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularMessageField(value: &self._ptz)
      case 3: try decoder.decodeSingularMessageField(value: &self._aux1)
      case 4: try decoder.decodeSingularMessageField(value: &self._aux2)
      case 5: try decoder.decodeSingularMessageField(value: &self._externalMic)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._ptz {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._aux1 {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._aux2 {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._externalMic {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_PowerStatus, rhs: Bosdyn_Api_SpotCam_PowerStatus) -> Bool {
    if lhs._ptz != rhs._ptz {return false}
    if lhs._aux1 != rhs._aux1 {return false}
    if lhs._aux2 != rhs._aux2 {return false}
    if lhs._externalMic != rhs._externalMic {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetPowerStatusRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetPowerStatusRequest"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetPowerStatusRequest, rhs: Bosdyn_Api_SpotCam_GetPowerStatusRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetPowerStatusResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetPowerStatusResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetPowerStatusResponse, rhs: Bosdyn_Api_SpotCam_GetPowerStatusResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetPowerStatusRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetPowerStatusRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetPowerStatusRequest, rhs: Bosdyn_Api_SpotCam_SetPowerStatusRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetPowerStatusResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetPowerStatusResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetPowerStatusResponse, rhs: Bosdyn_Api_SpotCam_SetPowerStatusResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_CyclePowerRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CyclePowerRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_CyclePowerRequest, rhs: Bosdyn_Api_SpotCam_CyclePowerRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_CyclePowerResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CyclePowerResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_CyclePowerResponse, rhs: Bosdyn_Api_SpotCam_CyclePowerResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}