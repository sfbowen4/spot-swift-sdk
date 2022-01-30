// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/spot_cam/network.proto
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

/// Network configuration data.
public struct Bosdyn_Api_SpotCam_NetworkTuple {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///a big-endian representation of an IPv4 address
  public var address: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _address ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_address = newValue}
  }
  /// Returns true if `address` has been explicitly set.
  public var hasAddress: Bool {return self._address != nil}
  /// Clears the value of `address`. Subsequent reads from it will return its default value.
  public mutating func clearAddress() {self._address = nil}

  ///The mask used for defining the system's subnet
  public var netmask: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _netmask ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_netmask = newValue}
  }
  /// Returns true if `netmask` has been explicitly set.
  public var hasNetmask: Bool {return self._netmask != nil}
  /// Clears the value of `netmask`. Subsequent reads from it will return its default value.
  public mutating func clearNetmask() {self._netmask = nil}

  ///A global routing is set up for the address defined below (if present)
  public var gateway: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _gateway ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_gateway = newValue}
  }
  /// Returns true if `gateway` has been explicitly set.
  public var hasGateway: Bool {return self._gateway != nil}
  /// Clears the value of `gateway`. Subsequent reads from it will return its default value.
  public mutating func clearGateway() {self._gateway = nil}

  ///If MTU is present, and <16 bits wide, then it is set for the ethernet interface's MTU
  ///if not, the MTU is set to 1500
  public var mtu: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _mtu ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_mtu = newValue}
  }
  /// Returns true if `mtu` has been explicitly set.
  public var hasMtu: Bool {return self._mtu != nil}
  /// Clears the value of `mtu`. Subsequent reads from it will return its default value.
  public mutating func clearMtu() {self._mtu = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _address: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _netmask: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _gateway: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _mtu: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

/// Retrieve current network configuration.
public struct Bosdyn_Api_SpotCam_GetNetworkSettingsRequest {
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

/// Provides the current network configuration.
public struct Bosdyn_Api_SpotCam_GetNetworkSettingsResponse {
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

  /// Current network configuration.
  public var settings: Bosdyn_Api_SpotCam_NetworkTuple {
    get {return _settings ?? Bosdyn_Api_SpotCam_NetworkTuple()}
    set {_settings = newValue}
  }
  /// Returns true if `settings` has been explicitly set.
  public var hasSettings: Bool {return self._settings != nil}
  /// Clears the value of `settings`. Subsequent reads from it will return its default value.
  public mutating func clearSettings() {self._settings = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
  fileprivate var _settings: Bosdyn_Api_SpotCam_NetworkTuple? = nil
}

/// Request the SSL certificate currently in use.
public struct Bosdyn_Api_SpotCam_GetSSLCertRequest {
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

/// Provides the SSL certificate currently in use.
public struct Bosdyn_Api_SpotCam_GetSSLCertResponse {
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

  /// An ASCII-armored representation of the SSL certificate
  public var certificate: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

/// Servers used in the ICE resolution process.
public struct Bosdyn_Api_SpotCam_ICEServer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// STUN or TURN server.
  public var type: Bosdyn_Api_SpotCam_ICEServer.servertype = .unknown

  /// Network address of the server.
  public var address: String = String()

  /// Only the least significant 16 bits are used.
  public var port: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible types of servers
  public enum servertype: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unknown // = 0
    case stun // = 1
    case turn // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .stun
      case 2: self = .turn
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .stun: return 1
      case .turn: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Bosdyn_Api_SpotCam_ICEServer.servertype: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_SpotCam_ICEServer.servertype] = [
    .unknown,
    .stun,
    .turn,
  ]
}

#endif  // swift(>=4.2)

/// Request the servers used for ICE resolution.
public struct Bosdyn_Api_SpotCam_GetICEConfigurationRequest {
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

/// Provides the ICE resolution servers.
public struct Bosdyn_Api_SpotCam_GetICEConfigurationResponse {
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

  /// List of servers used for ICE resolution.
  public var servers: [Bosdyn_Api_SpotCam_ICEServer] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

/// Modify the ICE configuration.
/// Note: this configuration replaces any configuration currently present.
/// It is *not* appended.
public struct Bosdyn_Api_SpotCam_SetICEConfigurationRequest {
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

  /// List of servers used for ICE resolution.
  public var servers: [Bosdyn_Api_SpotCam_ICEServer] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Result of modifying the ICE configuration.
public struct Bosdyn_Api_SpotCam_SetICEConfigurationResponse {
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

extension Bosdyn_Api_SpotCam_NetworkTuple: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NetworkTuple"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "address"),
    3: .same(proto: "netmask"),
    4: .same(proto: "gateway"),
    5: .same(proto: "mtu"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularMessageField(value: &self._address)
      case 3: try decoder.decodeSingularMessageField(value: &self._netmask)
      case 4: try decoder.decodeSingularMessageField(value: &self._gateway)
      case 5: try decoder.decodeSingularMessageField(value: &self._mtu)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._address {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._netmask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._gateway {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._mtu {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_NetworkTuple, rhs: Bosdyn_Api_SpotCam_NetworkTuple) -> Bool {
    if lhs._address != rhs._address {return false}
    if lhs._netmask != rhs._netmask {return false}
    if lhs._gateway != rhs._gateway {return false}
    if lhs._mtu != rhs._mtu {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetNetworkSettingsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNetworkSettingsRequest"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetNetworkSettingsRequest, rhs: Bosdyn_Api_SpotCam_GetNetworkSettingsRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetNetworkSettingsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNetworkSettingsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "settings"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._settings)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._settings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetNetworkSettingsResponse, rhs: Bosdyn_Api_SpotCam_GetNetworkSettingsResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._settings != rhs._settings {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetSSLCertRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetSSLCertRequest"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetSSLCertRequest, rhs: Bosdyn_Api_SpotCam_GetSSLCertRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetSSLCertResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetSSLCertResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "certificate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularStringField(value: &self.certificate)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.certificate.isEmpty {
      try visitor.visitSingularStringField(value: self.certificate, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetSSLCertResponse, rhs: Bosdyn_Api_SpotCam_GetSSLCertResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.certificate != rhs.certificate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_ICEServer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ICEServer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "address"),
    3: .same(proto: "port"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.type)
      case 2: try decoder.decodeSingularStringField(value: &self.address)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.port)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    if self.port != 0 {
      try visitor.visitSingularUInt32Field(value: self.port, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_ICEServer, rhs: Bosdyn_Api_SpotCam_ICEServer) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.address != rhs.address {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_ICEServer.servertype: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "STUN"),
    2: .same(proto: "TURN"),
  ]
}

extension Bosdyn_Api_SpotCam_GetICEConfigurationRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetICEConfigurationRequest"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetICEConfigurationRequest, rhs: Bosdyn_Api_SpotCam_GetICEConfigurationRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_GetICEConfigurationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetICEConfigurationResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "servers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.servers)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.servers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.servers, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_GetICEConfigurationResponse, rhs: Bosdyn_Api_SpotCam_GetICEConfigurationResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.servers != rhs.servers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetICEConfigurationRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetICEConfigurationRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "servers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.servers)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.servers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.servers, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetICEConfigurationRequest, rhs: Bosdyn_Api_SpotCam_SetICEConfigurationRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.servers != rhs.servers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SpotCam_SetICEConfigurationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetICEConfigurationResponse"
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

  public static func ==(lhs: Bosdyn_Api_SpotCam_SetICEConfigurationResponse, rhs: Bosdyn_Api_SpotCam_SetICEConfigurationResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
