// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/mission/remote.proto
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

/// Information to initialize a session to the remote service
/// for a particular mission node.
public struct Bosdyn_Api_Mission_EstablishSessionRequest {
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

  /// All leases that the remote service may need.
  public var leases: [Bosdyn_Api_Lease] = []

  /// Use this to provide other data (e.g. from the blackboard).
  /// The RemoteGrpc node will provide the name of the node automatically.
  public var inputs: [Bosdyn_Api_Mission_VariableDeclaration] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Provide the id to use for the particular mission node to tick this remote service.
public struct Bosdyn_Api_Mission_EstablishSessionResponse {
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

  /// Result of this establish session request.
  public var status: Bosdyn_Api_Mission_EstablishSessionResponse.Status = .unknown

  /// On success, contains an ID for this session.
  public var sessionID: String = String()

  /// Need to provide leases on these resources.
  public var missingLeaseResources: [String] = []

  /// Details about how any leases were used.
  /// Allowed to be empty, if leases were not actually used.
  public var leaseUseResults: [Bosdyn_Api_LeaseUseResult] = []

  /// The inputs required by the contacted node that were not mentioned in the request.
  public var missingInputs: [Bosdyn_Api_Mission_VariableDeclaration] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results of establishing a session.
  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Status unknown/unset.
    case unknown // = 0

    /// Provided inputs / outputs are compatible.
    case ok // = 1

    /// Remote service needs leases on additional resources.
    /// If set, the missing_lease_resources field should contain the resources needed but not
    /// provided.
    case missingLeases // = 2

    /// Remote service needs additional inputs.
    case missingInputs // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .ok
      case 2: self = .missingLeases
      case 3: self = .missingInputs
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .ok: return 1
      case .missingLeases: return 2
      case .missingInputs: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_EstablishSessionResponse.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_EstablishSessionResponse.Status] = [
    .unknown,
    .ok,
    .missingLeases,
    .missingInputs,
  ]
}

#endif  // swift(>=4.2)

/// Request that the remote tick itself for a particular node in the mission.
public struct Bosdyn_Api_Mission_TickRequest {
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

  /// Session ID as returned by the EstablishSessionResponse.
  /// Used to guarantee coherence between a single client and a servicer.
  public var sessionID: String = String()

  /// All leases that the remote service may need.
  public var leases: [Bosdyn_Api_Lease] = []

  /// Inputs provided to the servicer.
  public var inputs: [Bosdyn_Api_Mission_KeyValue] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Response with the results of the tick.
/// Remote services should strive to return quickly, even if only returning RUNNING.
public struct Bosdyn_Api_Mission_TickResponse {
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

  /// Result of the current tick.
  public var status: Bosdyn_Api_Mission_TickResponse.Status = .unknown

  /// Need to provide leases on these resources.
  public var missingLeaseResources: [String] = []

  /// Details about how any leases were used.
  /// Allowed to be empty, if leases were not actually used.
  public var leaseUseResults: [Bosdyn_Api_LeaseUseResult] = []

  /// Filled out when status is STATUS_MISSING_INPUTS, indicating what inputs were not in the
  /// request.
  public var missingInputs: [Bosdyn_Api_Mission_VariableDeclaration] = []

  /// If you need to report other error details, you can use this field.
  public var errorMessage: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results from the node. The FAILURE, RUNNING, and SUCCESS statuses map to the
  /// behavior tree terms, all others indicate an error in the TickRequest.
  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid; do not use.
    case unknown // = 0

    /// Node completed but failed.
    case failure // = 1

    /// Node is processing and may finish in a future tick.
    case running // = 2

    /// Node completed and succeeded.
    case success // = 3

    /// The request provided an invalid session ID.
    case invalidSessionID // = 4

    /// The request was missing required leases.
    case missingLeases // = 5

    /// The request was missing required inputs.
    case missingInputs // = 6
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
      case 4: self = .invalidSessionID
      case 5: self = .missingLeases
      case 6: self = .missingInputs
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .failure: return 1
      case .running: return 2
      case .success: return 3
      case .invalidSessionID: return 4
      case .missingLeases: return 5
      case .missingInputs: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_TickResponse.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_TickResponse.Status] = [
    .unknown,
    .failure,
    .running,
    .success,
    .invalidSessionID,
    .missingLeases,
    .missingInputs,
  ]
}

#endif  // swift(>=4.2)

/// Used to stop a node that was previously ticked, so that it knows that
/// the next Tick represents a restart rather than a continuation.
public struct Bosdyn_Api_Mission_StopRequest {
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

  /// Session ID as returned by the EstablishSessionResponse.
  /// Used to guarantee coherence between a single client and a servicer.
  public var sessionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Results of attempting to stop a remote node.
public struct Bosdyn_Api_Mission_StopResponse {
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

  /// Result of the stop request.
  public var status: Bosdyn_Api_Mission_StopResponse.Status = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results for a StopRequest.
  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Status unknown/unset.
    case unknown // = 0

    /// Service stopped.
    case ok // = 1

    /// The request provided an invalid session ID.
    case invalidSessionID // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .ok
      case 2: self = .invalidSessionID
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .ok: return 1
      case .invalidSessionID: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_StopResponse.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_StopResponse.Status] = [
    .unknown,
    .ok,
    .invalidSessionID,
  ]
}

#endif  // swift(>=4.2)

/// End the session originally established by an EstablishSessionRequest.
public struct Bosdyn_Api_Mission_TeardownSessionRequest {
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

  /// Session ID as returned by the EstablishSessionResponse.
  /// Used to guarantee coherence between a single client and a servicer.
  public var sessionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// Results of ending a session.
public struct Bosdyn_Api_Mission_TeardownSessionResponse {
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

  /// The result of a TeardownSessionRequest.
  public var status: Bosdyn_Api_Mission_TeardownSessionResponse.Status = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results of ending a session.
  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Status unknown/unset.
    case unknown // = 0

    /// Session was torn down -- servicer has probably wiped all associated data / state.
    case ok // = 1

    /// The request provided an invalid session ID.
    /// This may mean the session was already torn down.
    case invalidSessionID // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .ok
      case 2: self = .invalidSessionID
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .ok: return 1
      case .invalidSessionID: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Mission_TeardownSessionResponse.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Mission_TeardownSessionResponse.Status] = [
    .unknown,
    .ok,
    .invalidSessionID,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api.mission"

extension Bosdyn_Api_Mission_EstablishSessionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EstablishSessionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "leases"),
    3: .same(proto: "inputs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.leases)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.inputs)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.leases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.leases, fieldNumber: 2)
    }
    if !self.inputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.inputs, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_EstablishSessionRequest, rhs: Bosdyn_Api_Mission_EstablishSessionRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.leases != rhs.leases {return false}
    if lhs.inputs != rhs.inputs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_EstablishSessionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EstablishSessionResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
    3: .standard(proto: "session_id"),
    4: .standard(proto: "missing_lease_resources"),
    5: .standard(proto: "lease_use_results"),
    6: .standard(proto: "missing_inputs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularEnumField(value: &self.status)
      case 3: try decoder.decodeSingularStringField(value: &self.sessionID)
      case 4: try decoder.decodeRepeatedStringField(value: &self.missingLeaseResources)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.leaseUseResults)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.missingInputs)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 2)
    }
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 3)
    }
    if !self.missingLeaseResources.isEmpty {
      try visitor.visitRepeatedStringField(value: self.missingLeaseResources, fieldNumber: 4)
    }
    if !self.leaseUseResults.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.leaseUseResults, fieldNumber: 5)
    }
    if !self.missingInputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.missingInputs, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_EstablishSessionResponse, rhs: Bosdyn_Api_Mission_EstablishSessionResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.status != rhs.status {return false}
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.missingLeaseResources != rhs.missingLeaseResources {return false}
    if lhs.leaseUseResults != rhs.leaseUseResults {return false}
    if lhs.missingInputs != rhs.missingInputs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_EstablishSessionResponse.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATUS_UNKNOWN"),
    1: .same(proto: "STATUS_OK"),
    2: .same(proto: "STATUS_MISSING_LEASES"),
    3: .same(proto: "STATUS_MISSING_INPUTS"),
  ]
}

extension Bosdyn_Api_Mission_TickRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TickRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .standard(proto: "session_id"),
    3: .same(proto: "leases"),
    4: .same(proto: "inputs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularStringField(value: &self.sessionID)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.leases)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.inputs)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 2)
    }
    if !self.leases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.leases, fieldNumber: 3)
    }
    if !self.inputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.inputs, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_TickRequest, rhs: Bosdyn_Api_Mission_TickRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.leases != rhs.leases {return false}
    if lhs.inputs != rhs.inputs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_TickResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TickResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    3: .same(proto: "status"),
    4: .standard(proto: "missing_lease_resources"),
    5: .standard(proto: "lease_use_results"),
    7: .standard(proto: "missing_inputs"),
    8: .standard(proto: "error_message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 3: try decoder.decodeSingularEnumField(value: &self.status)
      case 4: try decoder.decodeRepeatedStringField(value: &self.missingLeaseResources)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.leaseUseResults)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.missingInputs)
      case 8: try decoder.decodeSingularStringField(value: &self.errorMessage)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 3)
    }
    if !self.missingLeaseResources.isEmpty {
      try visitor.visitRepeatedStringField(value: self.missingLeaseResources, fieldNumber: 4)
    }
    if !self.leaseUseResults.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.leaseUseResults, fieldNumber: 5)
    }
    if !self.missingInputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.missingInputs, fieldNumber: 7)
    }
    if !self.errorMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.errorMessage, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_TickResponse, rhs: Bosdyn_Api_Mission_TickResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.status != rhs.status {return false}
    if lhs.missingLeaseResources != rhs.missingLeaseResources {return false}
    if lhs.leaseUseResults != rhs.leaseUseResults {return false}
    if lhs.missingInputs != rhs.missingInputs {return false}
    if lhs.errorMessage != rhs.errorMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_TickResponse.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATUS_UNKNOWN"),
    1: .same(proto: "STATUS_FAILURE"),
    2: .same(proto: "STATUS_RUNNING"),
    3: .same(proto: "STATUS_SUCCESS"),
    4: .same(proto: "STATUS_INVALID_SESSION_ID"),
    5: .same(proto: "STATUS_MISSING_LEASES"),
    6: .same(proto: "STATUS_MISSING_INPUTS"),
  ]
}

extension Bosdyn_Api_Mission_StopRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StopRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .standard(proto: "session_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularStringField(value: &self.sessionID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_StopRequest, rhs: Bosdyn_Api_Mission_StopRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_StopResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StopResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularEnumField(value: &self.status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_StopResponse, rhs: Bosdyn_Api_Mission_StopResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_StopResponse.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATUS_UNKNOWN"),
    1: .same(proto: "STATUS_OK"),
    2: .same(proto: "STATUS_INVALID_SESSION_ID"),
  ]
}

extension Bosdyn_Api_Mission_TeardownSessionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TeardownSessionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .standard(proto: "session_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularStringField(value: &self.sessionID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_TeardownSessionRequest, rhs: Bosdyn_Api_Mission_TeardownSessionRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_TeardownSessionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TeardownSessionResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularEnumField(value: &self.status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Mission_TeardownSessionResponse, rhs: Bosdyn_Api_Mission_TeardownSessionResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Mission_TeardownSessionResponse.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATUS_UNKNOWN"),
    1: .same(proto: "STATUS_OK"),
    2: .same(proto: "STATUS_INVALID_SESSION_ID"),
  ]
}
