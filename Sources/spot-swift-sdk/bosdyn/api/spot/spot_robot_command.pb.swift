// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/spot/robot_command.proto
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

/// The locomotion hint specifying the gait of the robot.
public enum Bosdyn_Api_Spot_LocomotionHint: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Invalid; do not use.
  case hintUnknown // = 0

  /// No hint, robot chooses an appropriate gait (typically trot.)
  case hintAuto // = 1

  /// Most robust gait which moves diagonal legs together.
  case hintTrot // = 2

  /// Trot which comes to a stand when not commanded to move.
  case hintSpeedSelectTrot // = 3

  /// Slow and steady gait which moves only one foot at a time.
  case hintCrawl // = 4

  /// Crawl which comes to a stand when not commanded to move.
  case hintSpeedSelectCrawl // = 10

  /// Four beat gait where one foot touches down at a time.
  case hintAmble // = 5

  /// Amble which comes to a stand when not commanded to move.
  case hintSpeedSelectAmble // = 6

  /// Demo gait which moves diagonal leg pairs together with an aerial phase.
  case hintJog // = 7

  /// Demo gait which hops while holding some feet in the air.
  case hintHop // = 8

  /// HINT_AUTO_TROT is deprecated due to the name being too similar to the Spot Autowalk feature.
  /// It has been replaced by HINT_SPEED_SELECT_TROT. Keeping this value in here for now for backwards
  /// compatibility, but this may be removed in future releases.
  public static let hintAutoTrot = hintSpeedSelectTrot

  /// HINT_AUTO_AMBLE is deprecated due to the name being too similar to the Spot Autowalk feature.
  /// It has been replaced by HINT_SPEED_SELECT_AMBLE. Keeping this value in here for now for backwards
  /// compatibility, but this may be removed in future releases.
  public static let hintAutoAmble = hintSpeedSelectAmble
  case UNRECOGNIZED(Int)

  public init() {
    self = .hintUnknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .hintUnknown
    case 1: self = .hintAuto
    case 2: self = .hintTrot
    case 3: self = .hintSpeedSelectTrot
    case 4: self = .hintCrawl
    case 5: self = .hintAmble
    case 6: self = .hintSpeedSelectAmble
    case 7: self = .hintJog
    case 8: self = .hintHop
    case 10: self = .hintSpeedSelectCrawl
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .hintUnknown: return 0
    case .hintAuto: return 1
    case .hintTrot: return 2
    case .hintSpeedSelectTrot: return 3
    case .hintCrawl: return 4
    case .hintAmble: return 5
    case .hintSpeedSelectAmble: return 6
    case .hintJog: return 7
    case .hintHop: return 8
    case .hintSpeedSelectCrawl: return 10
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bosdyn_Api_Spot_LocomotionHint: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Spot_LocomotionHint] = [
    .hintUnknown,
    .hintAuto,
    .hintTrot,
    .hintSpeedSelectTrot,
    .hintCrawl,
    .hintSpeedSelectCrawl,
    .hintAmble,
    .hintSpeedSelectAmble,
    .hintJog,
    .hintHop,
  ]
}

#endif  // swift(>=4.2)

/// The type of swing height for a step.
public enum Bosdyn_Api_Spot_SwingHeight: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Invalid; do not use.
  case unknown // = 0

  /// Low-stepping. Robot will try to only swing legs a few cm away from ground.
  case low // = 1

  /// Default for most cases, use other values with caution.
  case medium // = 2

  /// High-stepping. Possibly useful with degraded vision operation.
  case high // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .low
    case 2: self = .medium
    case 3: self = .high
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .low: return 1
    case .medium: return 2
    case .high: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bosdyn_Api_Spot_SwingHeight: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Spot_SwingHeight] = [
    .unknown,
    .low,
    .medium,
    .high,
  ]
}

#endif  // swift(>=4.2)

/// Params common across spot movement and mobility.
public struct Bosdyn_Api_Spot_MobilityParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Max allowable velocity at any point in trajectory.
  public var velLimit: Bosdyn_Api_SE2VelocityLimit {
    get {return _velLimit ?? Bosdyn_Api_SE2VelocityLimit()}
    set {_velLimit = newValue}
  }
  /// Returns true if `velLimit` has been explicitly set.
  public var hasVelLimit: Bool {return self._velLimit != nil}
  /// Clears the value of `velLimit`. Subsequent reads from it will return its default value.
  public mutating func clearVelLimit() {self._velLimit = nil}

  /// Parameters for controlling Spot's body during motion.
  public var bodyControl: Bosdyn_Api_Spot_BodyControlParams {
    get {return _bodyControl ?? Bosdyn_Api_Spot_BodyControlParams()}
    set {_bodyControl = newValue}
  }
  /// Returns true if `bodyControl` has been explicitly set.
  public var hasBodyControl: Bool {return self._bodyControl != nil}
  /// Clears the value of `bodyControl`. Subsequent reads from it will return its default value.
  public mutating func clearBodyControl() {self._bodyControl = nil}

  /// Desired gait during locomotion
  public var locomotionHint: Bosdyn_Api_Spot_LocomotionHint = .hintUnknown

  /// Stairs are only supported in trot gaits. Using this hint will override some user defaults in
  /// order to optimize stair behavior.
  public var stairHint: Bool = false

  /// Allow the robot to move with degraded perception when there are perception faults.
  public var allowDegradedPerception: Bool = false

  /// Control of obstacle avoidance.
  public var obstacleParams: Bosdyn_Api_Spot_ObstacleParams {
    get {return _obstacleParams ?? Bosdyn_Api_Spot_ObstacleParams()}
    set {_obstacleParams = newValue}
  }
  /// Returns true if `obstacleParams` has been explicitly set.
  public var hasObstacleParams: Bool {return self._obstacleParams != nil}
  /// Clears the value of `obstacleParams`. Subsequent reads from it will return its default value.
  public mutating func clearObstacleParams() {self._obstacleParams = nil}

  /// Swing height setting
  public var swingHeight: Bosdyn_Api_Spot_SwingHeight = .unknown

  /// Ground terrain parameters.
  public var terrainParams: Bosdyn_Api_Spot_TerrainParams {
    get {return _terrainParams ?? Bosdyn_Api_Spot_TerrainParams()}
    set {_terrainParams = newValue}
  }
  /// Returns true if `terrainParams` has been explicitly set.
  public var hasTerrainParams: Bool {return self._terrainParams != nil}
  /// Clears the value of `terrainParams`. Subsequent reads from it will return its default value.
  public mutating func clearTerrainParams() {self._terrainParams = nil}

  /// Prevent the robot from using StairTracker even if in stairs mode.
  public var disallowStairTracker: Bool = false

  /// Robot Body External Force parameters
  public var externalForceParams: Bosdyn_Api_Spot_BodyExternalForceParams {
    get {return _externalForceParams ?? Bosdyn_Api_Spot_BodyExternalForceParams()}
    set {_externalForceParams = newValue}
  }
  /// Returns true if `externalForceParams` has been explicitly set.
  public var hasExternalForceParams: Bool {return self._externalForceParams != nil}
  /// Clears the value of `externalForceParams`. Subsequent reads from it will return its default value.
  public mutating func clearExternalForceParams() {self._externalForceParams = nil}

  /// Prevent the robot from pitching to get a better look at rearward terrain except in stairs mode.
  public var disallowNonStairsPitchLimiting: Bool = false

  /// Disable the secondary nearmap-based cliff avoidance that runs while on stairs.
  public var disableNearmapCliffAvoidance: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _velLimit: Bosdyn_Api_SE2VelocityLimit? = nil
  fileprivate var _bodyControl: Bosdyn_Api_Spot_BodyControlParams? = nil
  fileprivate var _obstacleParams: Bosdyn_Api_Spot_ObstacleParams? = nil
  fileprivate var _terrainParams: Bosdyn_Api_Spot_TerrainParams? = nil
  fileprivate var _externalForceParams: Bosdyn_Api_Spot_BodyExternalForceParams? = nil
}

/// Parameters for offsetting the body from the normal default.
public struct Bosdyn_Api_Spot_BodyControlParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Desired base offset relative to the footprint pseudo-frame.
  /// The footprint pseudo-frame is a gravity aligned frame with its origin located at the
  /// geometric center of the feet in the X-Y axis, and at the nominal height of the hips in the Z axis.
  /// The yaw of the frame (wrt the world) is calcuated by the average foot locations, and is aligned with the feet.
  public var baseOffsetRtFootprint: Bosdyn_Api_SE3Trajectory {
    get {return _baseOffsetRtFootprint ?? Bosdyn_Api_SE3Trajectory()}
    set {_baseOffsetRtFootprint = newValue}
  }
  /// Returns true if `baseOffsetRtFootprint` has been explicitly set.
  public var hasBaseOffsetRtFootprint: Bool {return self._baseOffsetRtFootprint != nil}
  /// Clears the value of `baseOffsetRtFootprint`. Subsequent reads from it will return its default value.
  public mutating func clearBaseOffsetRtFootprint() {self._baseOffsetRtFootprint = nil}

  /// The rotation setting for the robot body.
  public var rotationSetting: Bosdyn_Api_Spot_BodyControlParams.RotationSetting = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Setting for how the robot interprets base offset pitch & roll components.
  /// In the default case (ROTATION_SETTING_OFFSET) the robot will naturally align the body to the pitch of the current terrain.
  /// In some circumstances, the user may wish to override this value and try to maintain alignment
  /// with respect to gravity. Be careful with this setting as it may likely degrade robot performance in
  /// complex terrain, e.g. stairs, platforms, or slopes of sufficiently high grade.
  public enum RotationSetting: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid; do not use.
    case unknown // = 0

    /// Pitch & Roll are offset with respect to orientation of the footprint.
    case offset // = 1

    /// Pitch & Roll are offset with respect to gravity.
    case absolute // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .offset
      case 2: self = .absolute
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .offset: return 1
      case .absolute: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _baseOffsetRtFootprint: Bosdyn_Api_SE3Trajectory? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Spot_BodyControlParams.RotationSetting: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Spot_BodyControlParams.RotationSetting] = [
    .unknown,
    .offset,
    .absolute,
  ]
}

#endif  // swift(>=4.2)

/// Parameters for obstacle avoidance types.
public struct Bosdyn_Api_Spot_ObstacleParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Use vision to make the feet avoid obstacles by swinging higher?
  public var disableVisionFootObstacleAvoidance: Bool = false

  /// Use vision to make the feet avoid constraints like edges of stairs?
  public var disableVisionFootConstraintAvoidance: Bool = false

  /// Use vision to make the body avoid obstacles?
  public var disableVisionBodyObstacleAvoidance: Bool = false

  /// Desired padding around the body to use when attempting to avoid obstacles.
  /// Described in meters. Must be >= 0.
  public var obstacleAvoidancePadding: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Ground contact parameters that describe the terrain.
public struct Bosdyn_Api_Spot_TerrainParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Terrain coefficient of friction user hint. This value must be postive and will clamped if
  /// necessary on the robot side. Best suggested values lie in the range between 0.4 and 0.8
  /// (which is the robot's default.)
  public var groundMuHint: SwiftProtobuf.Google_Protobuf_DoubleValue {
    get {return _groundMuHint ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
    set {_groundMuHint = newValue}
  }
  /// Returns true if `groundMuHint` has been explicitly set.
  public var hasGroundMuHint: Bool {return self._groundMuHint != nil}
  /// Clears the value of `groundMuHint`. Subsequent reads from it will return its default value.
  public mutating func clearGroundMuHint() {self._groundMuHint = nil}

  /// When true, the robot will assume the ground below it is made of grated metal.
  public var enableGratedFloor: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _groundMuHint: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
}

/// External Force on robot body parameters. This is a beta feature and still can have some odd behaviors.
/// By default, the external force estimator is disabled on the robot.
public struct Bosdyn_Api_Spot_BodyExternalForceParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of external force described by the parameters.
  public var externalForceIndicator: Bosdyn_Api_Spot_BodyExternalForceParams.ExternalForceIndicator = .externalForceNone

  /// The frame name for which the external_force_override is defined in. The frame must be known to the robot.
  public var frameName: String = String()

  /// Specifies a force that the body should expect to feel. This allows the robot to "lean into"
  /// an external force. Be careful using this override, since incorrect information can cause
  /// the robot to fall over.
  /// For example, if the robot is leaning against a wall in front of it, the force override would be in the
  /// negative x dimension. If the robot was pulling something directly behind it, the force override would
  /// be in the negative x dimension as well.
  public var externalForceOverride: Bosdyn_Api_Vec3 {
    get {return _externalForceOverride ?? Bosdyn_Api_Vec3()}
    set {_externalForceOverride = newValue}
  }
  /// Returns true if `externalForceOverride` has been explicitly set.
  public var hasExternalForceOverride: Bool {return self._externalForceOverride != nil}
  /// Clears the value of `externalForceOverride`. Subsequent reads from it will return its default value.
  public mutating func clearExternalForceOverride() {self._externalForceOverride = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Indicates what external force estimate/override the robot should use.
  /// By default, the external force estimator is disabled on the robot.
  public enum ExternalForceIndicator: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// No external forces considered.
    case externalForceNone // = 0

    /// Use external forces estimated by the robot
    case externalForceUseEstimate // = 1

    /// Use external forces specified in an override vector.
    case externalForceUseOverride // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .externalForceNone
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .externalForceNone
      case 1: self = .externalForceUseEstimate
      case 2: self = .externalForceUseOverride
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .externalForceNone: return 0
      case .externalForceUseEstimate: return 1
      case .externalForceUseOverride: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _externalForceOverride: Bosdyn_Api_Vec3? = nil
}

#if swift(>=4.2)

extension Bosdyn_Api_Spot_BodyExternalForceParams.ExternalForceIndicator: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_Spot_BodyExternalForceParams.ExternalForceIndicator] = [
    .externalForceNone,
    .externalForceUseEstimate,
    .externalForceUseOverride,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api.spot"

extension Bosdyn_Api_Spot_LocomotionHint: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HINT_UNKNOWN"),
    1: .same(proto: "HINT_AUTO"),
    2: .same(proto: "HINT_TROT"),
    3: .aliased(proto: "HINT_SPEED_SELECT_TROT", aliases: ["HINT_AUTO_TROT"]),
    4: .same(proto: "HINT_CRAWL"),
    5: .same(proto: "HINT_AMBLE"),
    6: .aliased(proto: "HINT_SPEED_SELECT_AMBLE", aliases: ["HINT_AUTO_AMBLE"]),
    7: .same(proto: "HINT_JOG"),
    8: .same(proto: "HINT_HOP"),
    10: .same(proto: "HINT_SPEED_SELECT_CRAWL"),
  ]
}

extension Bosdyn_Api_Spot_SwingHeight: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SWING_HEIGHT_UNKNOWN"),
    1: .same(proto: "SWING_HEIGHT_LOW"),
    2: .same(proto: "SWING_HEIGHT_MEDIUM"),
    3: .same(proto: "SWING_HEIGHT_HIGH"),
  ]
}

extension Bosdyn_Api_Spot_MobilityParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MobilityParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "vel_limit"),
    2: .standard(proto: "body_control"),
    3: .standard(proto: "locomotion_hint"),
    4: .standard(proto: "stair_hint"),
    5: .standard(proto: "allow_degraded_perception"),
    6: .standard(proto: "obstacle_params"),
    7: .standard(proto: "swing_height"),
    8: .standard(proto: "terrain_params"),
    9: .standard(proto: "disallow_stair_tracker"),
    10: .standard(proto: "external_force_params"),
    11: .standard(proto: "disallow_non_stairs_pitch_limiting"),
    12: .standard(proto: "disable_nearmap_cliff_avoidance"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._velLimit)
      case 2: try decoder.decodeSingularMessageField(value: &self._bodyControl)
      case 3: try decoder.decodeSingularEnumField(value: &self.locomotionHint)
      case 4: try decoder.decodeSingularBoolField(value: &self.stairHint)
      case 5: try decoder.decodeSingularBoolField(value: &self.allowDegradedPerception)
      case 6: try decoder.decodeSingularMessageField(value: &self._obstacleParams)
      case 7: try decoder.decodeSingularEnumField(value: &self.swingHeight)
      case 8: try decoder.decodeSingularMessageField(value: &self._terrainParams)
      case 9: try decoder.decodeSingularBoolField(value: &self.disallowStairTracker)
      case 10: try decoder.decodeSingularMessageField(value: &self._externalForceParams)
      case 11: try decoder.decodeSingularBoolField(value: &self.disallowNonStairsPitchLimiting)
      case 12: try decoder.decodeSingularBoolField(value: &self.disableNearmapCliffAvoidance)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._velLimit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._bodyControl {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.locomotionHint != .hintUnknown {
      try visitor.visitSingularEnumField(value: self.locomotionHint, fieldNumber: 3)
    }
    if self.stairHint != false {
      try visitor.visitSingularBoolField(value: self.stairHint, fieldNumber: 4)
    }
    if self.allowDegradedPerception != false {
      try visitor.visitSingularBoolField(value: self.allowDegradedPerception, fieldNumber: 5)
    }
    if let v = self._obstacleParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.swingHeight != .unknown {
      try visitor.visitSingularEnumField(value: self.swingHeight, fieldNumber: 7)
    }
    if let v = self._terrainParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if self.disallowStairTracker != false {
      try visitor.visitSingularBoolField(value: self.disallowStairTracker, fieldNumber: 9)
    }
    if let v = self._externalForceParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }
    if self.disallowNonStairsPitchLimiting != false {
      try visitor.visitSingularBoolField(value: self.disallowNonStairsPitchLimiting, fieldNumber: 11)
    }
    if self.disableNearmapCliffAvoidance != false {
      try visitor.visitSingularBoolField(value: self.disableNearmapCliffAvoidance, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Spot_MobilityParams, rhs: Bosdyn_Api_Spot_MobilityParams) -> Bool {
    if lhs._velLimit != rhs._velLimit {return false}
    if lhs._bodyControl != rhs._bodyControl {return false}
    if lhs.locomotionHint != rhs.locomotionHint {return false}
    if lhs.stairHint != rhs.stairHint {return false}
    if lhs.allowDegradedPerception != rhs.allowDegradedPerception {return false}
    if lhs._obstacleParams != rhs._obstacleParams {return false}
    if lhs.swingHeight != rhs.swingHeight {return false}
    if lhs._terrainParams != rhs._terrainParams {return false}
    if lhs.disallowStairTracker != rhs.disallowStairTracker {return false}
    if lhs._externalForceParams != rhs._externalForceParams {return false}
    if lhs.disallowNonStairsPitchLimiting != rhs.disallowNonStairsPitchLimiting {return false}
    if lhs.disableNearmapCliffAvoidance != rhs.disableNearmapCliffAvoidance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Spot_BodyControlParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BodyControlParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_offset_rt_footprint"),
    2: .standard(proto: "rotation_setting"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._baseOffsetRtFootprint)
      case 2: try decoder.decodeSingularEnumField(value: &self.rotationSetting)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._baseOffsetRtFootprint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.rotationSetting != .unknown {
      try visitor.visitSingularEnumField(value: self.rotationSetting, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Spot_BodyControlParams, rhs: Bosdyn_Api_Spot_BodyControlParams) -> Bool {
    if lhs._baseOffsetRtFootprint != rhs._baseOffsetRtFootprint {return false}
    if lhs.rotationSetting != rhs.rotationSetting {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Spot_BodyControlParams.RotationSetting: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ROTATION_SETTING_UNKNOWN"),
    1: .same(proto: "ROTATION_SETTING_OFFSET"),
    2: .same(proto: "ROTATION_SETTING_ABSOLUTE"),
  ]
}

extension Bosdyn_Api_Spot_ObstacleParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ObstacleParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "disable_vision_foot_obstacle_avoidance"),
    2: .standard(proto: "disable_vision_foot_constraint_avoidance"),
    3: .standard(proto: "disable_vision_body_obstacle_avoidance"),
    4: .standard(proto: "obstacle_avoidance_padding"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.disableVisionFootObstacleAvoidance)
      case 2: try decoder.decodeSingularBoolField(value: &self.disableVisionFootConstraintAvoidance)
      case 3: try decoder.decodeSingularBoolField(value: &self.disableVisionBodyObstacleAvoidance)
      case 4: try decoder.decodeSingularDoubleField(value: &self.obstacleAvoidancePadding)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.disableVisionFootObstacleAvoidance != false {
      try visitor.visitSingularBoolField(value: self.disableVisionFootObstacleAvoidance, fieldNumber: 1)
    }
    if self.disableVisionFootConstraintAvoidance != false {
      try visitor.visitSingularBoolField(value: self.disableVisionFootConstraintAvoidance, fieldNumber: 2)
    }
    if self.disableVisionBodyObstacleAvoidance != false {
      try visitor.visitSingularBoolField(value: self.disableVisionBodyObstacleAvoidance, fieldNumber: 3)
    }
    if self.obstacleAvoidancePadding != 0 {
      try visitor.visitSingularDoubleField(value: self.obstacleAvoidancePadding, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Spot_ObstacleParams, rhs: Bosdyn_Api_Spot_ObstacleParams) -> Bool {
    if lhs.disableVisionFootObstacleAvoidance != rhs.disableVisionFootObstacleAvoidance {return false}
    if lhs.disableVisionFootConstraintAvoidance != rhs.disableVisionFootConstraintAvoidance {return false}
    if lhs.disableVisionBodyObstacleAvoidance != rhs.disableVisionBodyObstacleAvoidance {return false}
    if lhs.obstacleAvoidancePadding != rhs.obstacleAvoidancePadding {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Spot_TerrainParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TerrainParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "ground_mu_hint"),
    3: .standard(proto: "enable_grated_floor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularMessageField(value: &self._groundMuHint)
      case 3: try decoder.decodeSingularBoolField(value: &self.enableGratedFloor)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._groundMuHint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.enableGratedFloor != false {
      try visitor.visitSingularBoolField(value: self.enableGratedFloor, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Spot_TerrainParams, rhs: Bosdyn_Api_Spot_TerrainParams) -> Bool {
    if lhs._groundMuHint != rhs._groundMuHint {return false}
    if lhs.enableGratedFloor != rhs.enableGratedFloor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Spot_BodyExternalForceParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BodyExternalForceParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "external_force_indicator"),
    4: .standard(proto: "frame_name"),
    3: .standard(proto: "external_force_override"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.externalForceIndicator)
      case 3: try decoder.decodeSingularMessageField(value: &self._externalForceOverride)
      case 4: try decoder.decodeSingularStringField(value: &self.frameName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.externalForceIndicator != .externalForceNone {
      try visitor.visitSingularEnumField(value: self.externalForceIndicator, fieldNumber: 1)
    }
    if let v = self._externalForceOverride {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.frameName.isEmpty {
      try visitor.visitSingularStringField(value: self.frameName, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_Spot_BodyExternalForceParams, rhs: Bosdyn_Api_Spot_BodyExternalForceParams) -> Bool {
    if lhs.externalForceIndicator != rhs.externalForceIndicator {return false}
    if lhs.frameName != rhs.frameName {return false}
    if lhs._externalForceOverride != rhs._externalForceOverride {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_Spot_BodyExternalForceParams.ExternalForceIndicator: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EXTERNAL_FORCE_NONE"),
    1: .same(proto: "EXTERNAL_FORCE_USE_ESTIMATE"),
    2: .same(proto: "EXTERNAL_FORCE_USE_OVERRIDE"),
  ]
}
