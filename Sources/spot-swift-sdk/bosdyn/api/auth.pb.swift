// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/auth.proto
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

/// The GetAuthToken request message includes login information for the robot.
public struct Bosdyn_Api_GetAuthTokenRequest {
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

  /// Username to authenticate with. Must be set if password is set.
  public var username: String = String()

  /// Password to authenticate with. Not neccessary if token is set.
  public var password: String = String()

  /// Token to authenticate with. Can be used in place of the password, to re-mint a token.
  public var token: String = String()

  /// Deprecated as of 2.0.1. Application Token for authenticating with robots on older releases.
  public var applicationToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: Bosdyn_Api_RequestHeader? = nil
}

/// The GetAuthToken response message includes an authentication token if the login information
/// is correct and succeeds.
public struct Bosdyn_Api_GetAuthTokenResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var header: Bosdyn_Api_ResponseHeader {
    get {return _header ?? Bosdyn_Api_ResponseHeader()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// The status of the grpc GetAuthToken request.
  public var status: Bosdyn_Api_GetAuthTokenResponse.Status = .unknown

  /// Token data. Only specified if status == STATUS_OK.
  public var token: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// STATUS_UNKNOWN should never be used. If used, an internal error has happend.
    case unknown // = 0

    /// STATUS_OK indicates that authentication has succeeded. The 'token' field field will
    /// be populated with a session token that can be used to authenticate the user.
    case ok // = 1

    /// STATUS_INVALID_LOGIN indicates that authentication has failed since an invalid
    /// username and/or password were provided.
    case invalidLogin // = 2

    /// STATUS_INVALID_TOKEN indicates that authentication has failed since the 'token'
    /// provided in the request is invalid. Reasons for the token being invalid could be
    /// because it has expired, because it is improperly formed, for the wrong robot, the
    /// user that the token is for has changed a password, or many other reasons. Clients
    /// should use username/password-based authentication when refreshing the token fails.
    case invalidToken // = 3

    /// STATUS_TEMPORARILY_LOCKED_OUT indicates that authentication has failed since
    /// authentication for the user is temporarily locked out due to too many unsuccessful
    /// attempts. Any new authentication attempts should be delayed so they may happen after
    /// the lock out period ends.
    case temporarilyLockedOut // = 4

    /// STATUS_INVALID_APPLICATION_TOKEN indicates that the 'application_token' field in the
    /// request was invalid.
    case invalidApplicationToken // = 5

    /// STATUS_EXPIRED_APPLICATION_TOKEN indicates that the 'application_token' field in the
    /// request was valid, but has expired.
    case expiredApplicationToken // = 6
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .ok
      case 2: self = .invalidLogin
      case 3: self = .invalidToken
      case 4: self = .temporarilyLockedOut
      case 5: self = .invalidApplicationToken
      case 6: self = .expiredApplicationToken
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .ok: return 1
      case .invalidLogin: return 2
      case .invalidToken: return 3
      case .temporarilyLockedOut: return 4
      case .invalidApplicationToken: return 5
      case .expiredApplicationToken: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _header: Bosdyn_Api_ResponseHeader? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_GetAuthTokenResponse.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_GetAuthTokenResponse.Status] = [
    .unknown,
    .ok,
    .invalidLogin,
    .invalidToken,
    .temporarilyLockedOut,
    .invalidApplicationToken,
    .expiredApplicationToken,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api"

extension Bosdyn_Api_GetAuthTokenRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAuthTokenRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "username"),
    3: .same(proto: "password"),
    4: .same(proto: "token"),
    5: .standard(proto: "application_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularStringField(value: &self.username)
      case 3: try decoder.decodeSingularStringField(value: &self.password)
      case 4: try decoder.decodeSingularStringField(value: &self.token)
      case 5: try decoder.decodeSingularStringField(value: &self.applicationToken)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 2)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularStringField(value: self.password, fieldNumber: 3)
    }
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 4)
    }
    if !self.applicationToken.isEmpty {
      try visitor.visitSingularStringField(value: self.applicationToken, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_GetAuthTokenRequest, rhs: Bosdyn_Api_GetAuthTokenRequest) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.username != rhs.username {return false}
    if lhs.password != rhs.password {return false}
    if lhs.token != rhs.token {return false}
    if lhs.applicationToken != rhs.applicationToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_GetAuthTokenResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAuthTokenResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "status"),
    3: .same(proto: "token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeSingularEnumField(value: &self.status)
      case 3: try decoder.decodeSingularStringField(value: &self.token)
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
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_GetAuthTokenResponse, rhs: Bosdyn_Api_GetAuthTokenResponse) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.status != rhs.status {return false}
    if lhs.token != rhs.token {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_GetAuthTokenResponse.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATUS_UNKNOWN"),
    1: .same(proto: "STATUS_OK"),
    2: .same(proto: "STATUS_INVALID_LOGIN"),
    3: .same(proto: "STATUS_INVALID_TOKEN"),
    4: .same(proto: "STATUS_TEMPORARILY_LOCKED_OUT"),
    5: .same(proto: "STATUS_INVALID_APPLICATION_TOKEN"),
    6: .same(proto: "STATUS_EXPIRED_APPLICATION_TOKEN"),
  ]
}
