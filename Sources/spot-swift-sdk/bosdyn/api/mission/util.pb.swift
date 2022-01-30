// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/mission/util.proto
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

/// Results from executing / ticking / running a single node.
public enum Bosdyn_Api_Mission_Result: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Invalid, should not be used.
  case unknown // = 0

  /// The node completed running, but failed.
  case failure // = 1

  /// The node is still in process and has not completed.
  case running // = 2

  /// The node completed, and succeeded.
  case success // = 3

  /// The node encountered an operational error while trying to execute.
  case error // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .failure
    case 2: self = .running
    case 3: self = .success
    case 4: self = .error
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .failure: return 1
    case .running: return 2
    case .success: return 3
    case .error: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_Result] = [
    .unknown,
    .failure,
    .running,
    .success,
    .error,
  ]
}

#endif  // swift(>=4.2)

/// Key/Value pair, used in other messages.
public struct Bosdyn_Api_Mission_KeyValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var key: String = String()

  public var value: Bosdyn_Api_Mission_Value {
    get {return _value ?? Bosdyn_Api_Mission_Value()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {self._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _value: Bosdyn_Api_Mission_Value? = nil
}

/// A value of a run-time or compile-time variable.
public struct Bosdyn_Api_Mission_Value {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var source: Bosdyn_Api_Mission_Value.OneOf_Source? = nil

  /// A constant value.
  public var constant: Bosdyn_Api_Mission_ConstantValue {
    get {
      if case .constant(let v)? = source {return v}
      return Bosdyn_Api_Mission_ConstantValue()
    }
    set {source = .constant(newValue)}
  }

  /// Look up a variable provided at run-time.
  public var runtimeVar: Bosdyn_Api_Mission_VariableDeclaration {
    get {
      if case .runtimeVar(let v)? = source {return v}
      return Bosdyn_Api_Mission_VariableDeclaration()
    }
    set {source = .runtimeVar(newValue)}
  }

  /// Look up a Node Parameter.
  public var parameter: Bosdyn_Api_Mission_VariableDeclaration {
    get {
      if case .parameter(let v)? = source {return v}
      return Bosdyn_Api_Mission_VariableDeclaration()
    }
    set {source = .parameter(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Source: Equatable {
    /// A constant value.
    case constant(Bosdyn_Api_Mission_ConstantValue)
    /// Look up a variable provided at run-time.
    case runtimeVar(Bosdyn_Api_Mission_VariableDeclaration)
    /// Look up a Node Parameter.
    case parameter(Bosdyn_Api_Mission_VariableDeclaration)

  #if !swift(>=4.1)
    public static func ==(lhs: Bosdyn_Api_Mission_Value.OneOf_Source, rhs: Bosdyn_Api_Mission_Value.OneOf_Source) -> Bool {
      switch (lhs, rhs) {
      case (.constant(let l), .constant(let r)): return l == r
      case (.runtimeVar(let l), .runtimeVar(let r)): return l == r
      case (.parameter(let l), .parameter(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Declaration of a run-time or compile-time variable.
public struct Bosdyn_Api_Mission_VariableDeclaration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the variable, to be used as the key in KeyValue pairs.
  public var name: String = String()

  /// Type that this variable is expected to have. Used to verify assignments and comparisons.
  public var type: Bosdyn_Api_Mission_VariableDeclaration.TypeEnum = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Supported types for blackboard or parameter values.
  public enum TypeEnum: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unknown // = 0
    case float // = 1
    case string // = 2
    case int // = 3
    case bool // = 4
    case message // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .float
      case 2: self = .string
      case 3: self = .int
      case 4: self = .bool
      case 5: self = .message
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .float: return 1
      case .string: return 2
      case .int: return 3
      case .bool: return 4
      case .message: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_VariableDeclaration.TypeEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_VariableDeclaration.TypeEnum] = [
    .unknown,
    .float,
    .string,
    .int,
    .bool,
    .message,
  ]
}

#endif  // swift(>=4.2)

/// A constant value. Corresponds to the VariableDeclaration Type enum.
public struct Bosdyn_Api_Mission_ConstantValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var value: Bosdyn_Api_Mission_ConstantValue.OneOf_Value? = nil

  public var floatValue: Double {
    get {
      if case .floatValue(let v)? = value {return v}
      return 0
    }
    set {value = .floatValue(newValue)}
  }

  public var stringValue: String {
    get {
      if case .stringValue(let v)? = value {return v}
      return String()
    }
    set {value = .stringValue(newValue)}
  }

  public var intValue: Int64 {
    get {
      if case .intValue(let v)? = value {return v}
      return 0
    }
    set {value = .intValue(newValue)}
  }

  public var boolValue: Bool {
    get {
      if case .boolValue(let v)? = value {return v}
      return false
    }
    set {value = .boolValue(newValue)}
  }

  public var msgValue: SwiftProtobuf.Google_Protobuf_Any {
    get {
      if case .msgValue(let v)? = value {return v}
      return SwiftProtobuf.Google_Protobuf_Any()
    }
    set {value = .msgValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Value: Equatable {
    case floatValue(Double)
    case stringValue(String)
    case intValue(Int64)
    case boolValue(Bool)
    case msgValue(SwiftProtobuf.Google_Protobuf_Any)

  #if !swift(>=4.1)
    public static func ==(lhs: Bosdyn_Api_Mission_ConstantValue.OneOf_Value, rhs: Bosdyn_Api_Mission_ConstantValue.OneOf_Value) -> Bool {
      switch (lhs, rhs) {
      case (.floatValue(let l), .floatValue(let r)): return l == r
      case (.stringValue(let l), .stringValue(let r)): return l == r
      case (.intValue(let l), .intValue(let r)): return l == r
      case (.boolValue(let l), .boolValue(let r)): return l == r
      case (.msgValue(let l), .msgValue(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Data a user can associate with a node.
public struct Bosdyn_Api_Mission_UserData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifier. Enables matching the Node uploaded to the MissionService with the NodeInfo
  /// downloaded from the MissionService.
  public var id: String = String()

  /// Arbitrary data. We recommend keeping it small, to avoid bloating the size of the mission.
  public var bytestring: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api.mission"

extension Bosdyn_Api_Mission_Result: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RESULT_UNKNOWN"),
    1: .same(proto: "RESULT_FAILURE"),
    2: .same(proto: "RESULT_RUNNING"),
    3: .same(proto: "RESULT_SUCCESS"),
    4: .same(proto: "RESULT_ERROR"),
  ]
}

extension Bosdyn_Api_Mission_KeyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".KeyValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularMessageField(value: &self._value)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if let v = self._value {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_KeyValue, rhs: Bosdyn_Api_Mission_KeyValue) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs._value != rhs._value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_Value: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Value"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "constant"),
    3: .standard(proto: "runtime_var"),
    4: .same(proto: "parameter"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2:
        var v: Bosdyn_Api_Mission_ConstantValue?
        if let current = self.source {
          try decoder.handleConflictingOneOf()
          if case .constant(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.source = .constant(v)}
      case 3:
        var v: Bosdyn_Api_Mission_VariableDeclaration?
        if let current = self.source {
          try decoder.handleConflictingOneOf()
          if case .runtimeVar(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.source = .runtimeVar(v)}
      case 4:
        var v: Bosdyn_Api_Mission_VariableDeclaration?
        if let current = self.source {
          try decoder.handleConflictingOneOf()
          if case .parameter(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.source = .parameter(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.source {
    case .constant(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    case .runtimeVar(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    case .parameter(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_Value, rhs: Bosdyn_Api_Mission_Value) -> Bool {
    if lhs.source != rhs.source {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_VariableDeclaration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VariableDeclaration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularEnumField(value: &self.type)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_VariableDeclaration, rhs: Bosdyn_Api_Mission_VariableDeclaration) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_VariableDeclaration.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TYPE_UNKNOWN"),
    1: .same(proto: "TYPE_FLOAT"),
    2: .same(proto: "TYPE_STRING"),
    3: .same(proto: "TYPE_INT"),
    4: .same(proto: "TYPE_BOOL"),
    5: .same(proto: "TYPE_MESSAGE"),
  ]
}

extension Bosdyn_Api_Mission_ConstantValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConstantValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "float_value"),
    2: .standard(proto: "string_value"),
    3: .standard(proto: "int_value"),
    4: .standard(proto: "bool_value"),
    5: .standard(proto: "msg_value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {self.value = .floatValue(v)}
      case 2:
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.value = .stringValue(v)}
      case 3:
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.value = .intValue(v)}
      case 4:
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {self.value = .boolValue(v)}
      case 5:
        var v: SwiftProtobuf.Google_Protobuf_Any?
        if let current = self.value {
          try decoder.handleConflictingOneOf()
          if case .msgValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.value = .msgValue(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.value {
    case .floatValue(let v)?:
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    case .stringValue(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    case .intValue(let v)?:
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
    case .boolValue(let v)?:
      try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
    case .msgValue(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_ConstantValue, rhs: Bosdyn_Api_Mission_ConstantValue) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_UserData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UserData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    3: .same(proto: "bytestring"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 3: try decoder.decodeSingularBytesField(value: &self.bytestring)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.bytestring.isEmpty {
      try visitor.visitSingularBytesField(value: self.bytestring, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_UserData, rhs: Bosdyn_Api_Mission_UserData) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.bytestring != rhs.bytestring {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
