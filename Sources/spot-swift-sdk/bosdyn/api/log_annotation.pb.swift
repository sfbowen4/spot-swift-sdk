// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/log_annotation.proto
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

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// The AddLogAnnotation request sends the information that should be added into the log.
public struct Bosdyn_Api_AddLogAnnotationRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Common request/response header.
  public var header: Bosdyn_Api_RequestHeader {
    get {return _header ?? Bosdyn_Api_RequestHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The annotations to be aded into the log (can be text messages, blobs or robot operator messages).
  public var annotations: Bosdyn_Api_LogAnnotations {
    get {return _annotations ?? Bosdyn_Api_LogAnnotations()}
    set {_annotations = newValue}
  }
  /// Returns true if `annotations` has been explicitly set.
  public var hasAnnotations: Bool {return self._annotations != nil}
  /// Clears the value of `annotations`. Subsequent reads from it will return its default value.
  public mutating func clearAnnotations() {self._annotations = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
  fileprivate var _annotations: Bosdyn_Api_LogAnnotations? = nil
}

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// A container for elements to be added to the robot's logs.
public struct Bosdyn_Api_LogAnnotations {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Text messages to be added to the log.
  public var textMessages: [Bosdyn_Api_LogAnnotationTextMessage] = []

  /// Messages from the robot operator to be added to the log.
  public var operatorMessages: [Bosdyn_Api_LogAnnotationOperatorMessage] = []

  /// One or more binary blobs to add to the log.
  public var blobData: [Bosdyn_Api_LogAnnotationLogBlob] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// A text message to add to the robot's logs.
/// These could be internal text-log messages from a client for use in debugging, for
/// example.
public struct Bosdyn_Api_LogAnnotationTextMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// String annotation message to add to the log.
  public var message: String = String()

  /// Required timestamp of data in robot clock time.
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// The service responsible for the annotation. May be omitted.
  public var service: String = String()

  /// Level of significance of the text message.
  public var level: Bosdyn_Api_LogAnnotationTextMessage.Level = .unknown

  /// Optional tag to identify from what code/module this message originated from.
  public var tag: String = String()

  /// Optional source file name originating the log message.
  public var filename: String = String()

  /// Optional source file line number originating the log message.
  public var lineNumber: Int32 = 0

  /// Optional timestamp of data in client clock time.
  public var timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestampClient ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestampClient = newValue}
  }
  /// Returns true if `timestampClient` has been explicitly set.
  public var hasTimestampClient: Bool {return self._timestampClient != nil}
  /// Clears the value of `timestampClient`. Subsequent reads from it will return its default value.
  public mutating func clearTimestampClient() {self._timestampClient = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum Level: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid, do not use.
    case unknown // = 0

    /// Events likely of interest only in a debugging context.
    case debug // = 1

    /// Informational message during normal operation.
    case info // = 2

    /// Information about an unexpected but recoverable condition.
    case warn // = 3

    /// Information about an operation which did not succeed.
    case error // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .debug
      case 2: self = .info
      case 3: self = .warn
      case 4: self = .error
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .debug: return 1
      case .info: return 2
      case .warn: return 3
      case .error: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_LogAnnotationTextMessage.Level: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_LogAnnotationTextMessage.Level] = [
    .unknown,
    .debug,
    .info,
    .warn,
    .error,
  ]
}

#endif  // swift(>=4.2)

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// An operator message to be added to the robot's logs.
/// These are notes especially intended to mark when logs should be preserved and reviewed
/// to ensure that robot hardware and/or software is working as intended.
public struct Bosdyn_Api_LogAnnotationOperatorMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// String annotation message to add to the log.
  public var message: String = String()

  /// Required timestamp of data in robot clock time.
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// Optional timestamp of data in client clock time.
  public var timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestampClient ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestampClient = newValue}
  }
  /// Returns true if `timestampClient` has been explicitly set.
  public var hasTimestampClient: Bool {return self._timestampClient != nil}
  /// Clears the value of `timestampClient`. Subsequent reads from it will return its default value.
  public mutating func clearTimestampClient() {self._timestampClient = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// A unit of binary data to be entered in a log.
public struct Bosdyn_Api_LogAnnotationLogBlob {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required timestamp of data in robot clock time.
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// A general label for this blob.
  /// This is distinct from type_id, which identifies how the blob is to be parsed.
  public var channel: String = String()

  /// A description of the data's content and its encoding.
  /// This should be sufficient for deciding how to deserialize the data.
  /// For example, this could be the full name of a protobuf message type.
  public var typeID: String = String()

  /// Raw data to be included as the blob log.
  public var data: Data = SwiftProtobuf.Internal.emptyData

  /// Optional timestamp of data in client clock time.
  public var timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestampClient ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestampClient = newValue}
  }
  /// Returns true if `timestampClient` has been explicitly set.
  public var hasTimestampClient: Bool {return self._timestampClient != nil}
  /// Clears the value of `timestampClient`. Subsequent reads from it will return its default value.
  public mutating func clearTimestampClient() {self._timestampClient = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _timestampClient: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// DEPRECATED as of 2.1.0: Please use the DataBufferService instead of the LogAnnotationService.
/// The AddLogAnnotation response message, which is empty except for any potential header errors/warnings.
public struct Bosdyn_Api_AddLogAnnotationResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Common request/response header.
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

extension Bosdyn_Api_AddLogAnnotationRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddLogAnnotationRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "annotations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularMessageField(value: &self._annotations)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._annotations {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_AddLogAnnotationRequest, rhs: Bosdyn_Api_AddLogAnnotationRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs._annotations != rhs._annotations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_LogAnnotations: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogAnnotations"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "text_messages"),
    2: .standard(proto: "operator_messages"),
    3: .standard(proto: "blob_data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.textMessages)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.operatorMessages)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.blobData)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.textMessages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.textMessages, fieldNumber: 1)
    }
    if !self.operatorMessages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.operatorMessages, fieldNumber: 2)
    }
    if !self.blobData.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.blobData, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_LogAnnotations, rhs: Bosdyn_Api_LogAnnotations) -> Bool {
    if lhs.textMessages != rhs.textMessages {return false}
    if lhs.operatorMessages != rhs.operatorMessages {return false}
    if lhs.blobData != rhs.blobData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_LogAnnotationTextMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogAnnotationTextMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
    2: .same(proto: "timestamp"),
    3: .same(proto: "service"),
    4: .same(proto: "level"),
    5: .same(proto: "tag"),
    6: .same(proto: "filename"),
    7: .standard(proto: "line_number"),
    8: .standard(proto: "timestamp_client"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.message)
      case 2: try decoder.decodeSingularMessageField(value: &self._timestamp)
      case 3: try decoder.decodeSingularStringField(value: &self.service)
      case 4: try decoder.decodeSingularEnumField(value: &self.level)
      case 5: try decoder.decodeSingularStringField(value: &self.tag)
      case 6: try decoder.decodeSingularStringField(value: &self.filename)
      case 7: try decoder.decodeSingularInt32Field(value: &self.lineNumber)
      case 8: try decoder.decodeSingularMessageField(value: &self._timestampClient)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 1)
    }
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.service.isEmpty {
      try visitor.visitSingularStringField(value: self.service, fieldNumber: 3)
    }
    if self.level != .unknown {
      try visitor.visitSingularEnumField(value: self.level, fieldNumber: 4)
    }
    if !self.tag.isEmpty {
      try visitor.visitSingularStringField(value: self.tag, fieldNumber: 5)
    }
    if !self.filename.isEmpty {
      try visitor.visitSingularStringField(value: self.filename, fieldNumber: 6)
    }
    if self.lineNumber != 0 {
      try visitor.visitSingularInt32Field(value: self.lineNumber, fieldNumber: 7)
    }
    if let v = self._timestampClient {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_LogAnnotationTextMessage, rhs: Bosdyn_Api_LogAnnotationTextMessage) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.service != rhs.service {return false}
    if lhs.level != rhs.level {return false}
    if lhs.tag != rhs.tag {return false}
    if lhs.filename != rhs.filename {return false}
    if lhs.lineNumber != rhs.lineNumber {return false}
    if lhs._timestampClient != rhs._timestampClient {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_LogAnnotationTextMessage.Level: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LEVEL_UNKNOWN"),
    1: .same(proto: "LEVEL_DEBUG"),
    2: .same(proto: "LEVEL_INFO"),
    3: .same(proto: "LEVEL_WARN"),
    4: .same(proto: "LEVEL_ERROR"),
  ]
}

extension Bosdyn_Api_LogAnnotationOperatorMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogAnnotationOperatorMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
    2: .same(proto: "timestamp"),
    3: .standard(proto: "timestamp_client"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.message)
      case 2: try decoder.decodeSingularMessageField(value: &self._timestamp)
      case 3: try decoder.decodeSingularMessageField(value: &self._timestampClient)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 1)
    }
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._timestampClient {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_LogAnnotationOperatorMessage, rhs: Bosdyn_Api_LogAnnotationOperatorMessage) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs._timestampClient != rhs._timestampClient {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_LogAnnotationLogBlob: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogAnnotationLogBlob"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .same(proto: "channel"),
    3: .standard(proto: "type_id"),
    4: .same(proto: "data"),
    5: .standard(proto: "timestamp_client"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._timestamp)
      case 2: try decoder.decodeSingularStringField(value: &self.channel)
      case 3: try decoder.decodeSingularStringField(value: &self.typeID)
      case 4: try decoder.decodeSingularBytesField(value: &self.data)
      case 5: try decoder.decodeSingularMessageField(value: &self._timestampClient)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.channel.isEmpty {
      try visitor.visitSingularStringField(value: self.channel, fieldNumber: 2)
    }
    if !self.typeID.isEmpty {
      try visitor.visitSingularStringField(value: self.typeID, fieldNumber: 3)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 4)
    }
    if let v = self._timestampClient {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_LogAnnotationLogBlob, rhs: Bosdyn_Api_LogAnnotationLogBlob) -> Bool {
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.channel != rhs.channel {return false}
    if lhs.typeID != rhs.typeID {return false}
    if lhs.data != rhs.data {return false}
    if lhs._timestampClient != rhs._timestampClient {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_AddLogAnnotationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddLogAnnotationResponse"
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

  public static func ==(lhs: Bosdyn_Api_AddLogAnnotationResponse, rhs: Bosdyn_Api_AddLogAnnotationResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
