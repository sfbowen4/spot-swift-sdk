// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/synchronized_command.proto
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

public struct Bosdyn_Api_SynchronizedCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Request {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var armCommand: Bosdyn_Api_ArmCommand.Request {
      get {return _armCommand ?? Bosdyn_Api_ArmCommand.Request()}
      set {_armCommand = newValue}
    }
    /// Returns true if `armCommand` has been explicitly set.
    public var hasArmCommand: Bool {return self._armCommand != nil}
    /// Clears the value of `armCommand`. Subsequent reads from it will return its default value.
    public mutating func clearArmCommand() {self._armCommand = nil}

    public var mobilityCommand: Bosdyn_Api_MobilityCommand.Request {
      get {return _mobilityCommand ?? Bosdyn_Api_MobilityCommand.Request()}
      set {_mobilityCommand = newValue}
    }
    /// Returns true if `mobilityCommand` has been explicitly set.
    public var hasMobilityCommand: Bool {return self._mobilityCommand != nil}
    /// Clears the value of `mobilityCommand`. Subsequent reads from it will return its default value.
    public mutating func clearMobilityCommand() {self._mobilityCommand = nil}

    public var gripperCommand: Bosdyn_Api_GripperCommand.Request {
      get {return _gripperCommand ?? Bosdyn_Api_GripperCommand.Request()}
      set {_gripperCommand = newValue}
    }
    /// Returns true if `gripperCommand` has been explicitly set.
    public var hasGripperCommand: Bool {return self._gripperCommand != nil}
    /// Clears the value of `gripperCommand`. Subsequent reads from it will return its default value.
    public mutating func clearGripperCommand() {self._gripperCommand = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _armCommand: Bosdyn_Api_ArmCommand.Request? = nil
    fileprivate var _mobilityCommand: Bosdyn_Api_MobilityCommand.Request? = nil
    fileprivate var _gripperCommand: Bosdyn_Api_GripperCommand.Request? = nil
  }

  public struct Feedback {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var armCommandFeedback: Bosdyn_Api_ArmCommand.Feedback {
      get {return _armCommandFeedback ?? Bosdyn_Api_ArmCommand.Feedback()}
      set {_armCommandFeedback = newValue}
    }
    /// Returns true if `armCommandFeedback` has been explicitly set.
    public var hasArmCommandFeedback: Bool {return self._armCommandFeedback != nil}
    /// Clears the value of `armCommandFeedback`. Subsequent reads from it will return its default value.
    public mutating func clearArmCommandFeedback() {self._armCommandFeedback = nil}

    public var mobilityCommandFeedback: Bosdyn_Api_MobilityCommand.Feedback {
      get {return _mobilityCommandFeedback ?? Bosdyn_Api_MobilityCommand.Feedback()}
      set {_mobilityCommandFeedback = newValue}
    }
    /// Returns true if `mobilityCommandFeedback` has been explicitly set.
    public var hasMobilityCommandFeedback: Bool {return self._mobilityCommandFeedback != nil}
    /// Clears the value of `mobilityCommandFeedback`. Subsequent reads from it will return its default value.
    public mutating func clearMobilityCommandFeedback() {self._mobilityCommandFeedback = nil}

    public var gripperCommandFeedback: Bosdyn_Api_GripperCommand.Feedback {
      get {return _gripperCommandFeedback ?? Bosdyn_Api_GripperCommand.Feedback()}
      set {_gripperCommandFeedback = newValue}
    }
    /// Returns true if `gripperCommandFeedback` has been explicitly set.
    public var hasGripperCommandFeedback: Bool {return self._gripperCommandFeedback != nil}
    /// Clears the value of `gripperCommandFeedback`. Subsequent reads from it will return its default value.
    public mutating func clearGripperCommandFeedback() {self._gripperCommandFeedback = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _armCommandFeedback: Bosdyn_Api_ArmCommand.Feedback? = nil
    fileprivate var _mobilityCommandFeedback: Bosdyn_Api_MobilityCommand.Feedback? = nil
    fileprivate var _gripperCommandFeedback: Bosdyn_Api_GripperCommand.Feedback? = nil
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api"

extension Bosdyn_Api_SynchronizedCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SynchronizedCommand"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SynchronizedCommand, rhs: Bosdyn_Api_SynchronizedCommand) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SynchronizedCommand.Request: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Bosdyn_Api_SynchronizedCommand.protoMessageName + ".Request"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "arm_command"),
    2: .standard(proto: "mobility_command"),
    3: .standard(proto: "gripper_command"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._armCommand)
      case 2: try decoder.decodeSingularMessageField(value: &self._mobilityCommand)
      case 3: try decoder.decodeSingularMessageField(value: &self._gripperCommand)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._armCommand {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._mobilityCommand {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._gripperCommand {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SynchronizedCommand.Request, rhs: Bosdyn_Api_SynchronizedCommand.Request) -> Bool {
    if lhs._armCommand != rhs._armCommand {return false}
    if lhs._mobilityCommand != rhs._mobilityCommand {return false}
    if lhs._gripperCommand != rhs._gripperCommand {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_SynchronizedCommand.Feedback: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Bosdyn_Api_SynchronizedCommand.protoMessageName + ".Feedback"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "arm_command_feedback"),
    2: .standard(proto: "mobility_command_feedback"),
    3: .standard(proto: "gripper_command_feedback"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._armCommandFeedback)
      case 2: try decoder.decodeSingularMessageField(value: &self._mobilityCommandFeedback)
      case 3: try decoder.decodeSingularMessageField(value: &self._gripperCommandFeedback)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._armCommandFeedback {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._mobilityCommandFeedback {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._gripperCommandFeedback {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_SynchronizedCommand.Feedback, rhs: Bosdyn_Api_SynchronizedCommand.Feedback) -> Bool {
    if lhs._armCommandFeedback != rhs._armCommandFeedback {return false}
    if lhs._mobilityCommandFeedback != rhs._mobilityCommandFeedback {return false}
    if lhs._gripperCommandFeedback != rhs._gripperCommandFeedback {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
