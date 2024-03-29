// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bosdyn/api/arm_surface_contact.proto
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

/// ArmSurfaceContact lets you accurately move the robot's arm in the world while having some ability
/// to perform force control.  This mode is useful for drawing, wiping, and other similar behaviors.
///
/// The message is similar to the ArmCartesianCommand message, which you can look at for additional
/// details.
public struct Bosdyn_Api_ArmSurfaceContact {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Request {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The root frame is used to set the optional task frame that all trajectories are 
    /// specified with respect to.  If the optional task frame is left un-specified it defaults
    /// to the identity transform and the root frame becomes the task frame.
    public var rootFrameName: String {
      get {return _storage._rootFrameName}
      set {_uniqueStorage()._rootFrameName = newValue}
    }

    /// The tool pose relative to the parent link (wrist).
    /// Defaults to
    ///    [0.19557 0 0]
    ///    [1 0 0 0]
    /// a frame with it's origin slightly in front of the gripper's palm plate aligned with wrists orientation.
    public var wristTformTool: Bosdyn_Api_SE3Pose {
      get {return _storage._wristTformTool ?? Bosdyn_Api_SE3Pose()}
      set {_uniqueStorage()._wristTformTool = newValue}
    }
    /// Returns true if `wristTformTool` has been explicitly set.
    public var hasWristTformTool: Bool {return _storage._wristTformTool != nil}
    /// Clears the value of `wristTformTool`. Subsequent reads from it will return its default value.
    public mutating func clearWristTformTool() {_uniqueStorage()._wristTformTool = nil}

    /// The fields below are specified in this optional task frame.  If unset int defaults
    /// to the identity transform and all quantities are therefore expressed in the root_frame_name.
    public var rootTformTask: Bosdyn_Api_SE3Pose {
      get {return _storage._rootTformTask ?? Bosdyn_Api_SE3Pose()}
      set {_uniqueStorage()._rootTformTask = newValue}
    }
    /// Returns true if `rootTformTask` has been explicitly set.
    public var hasRootTformTask: Bool {return _storage._rootTformTask != nil}
    /// Clears the value of `rootTformTask`. Subsequent reads from it will return its default value.
    public mutating func clearRootTformTask() {_uniqueStorage()._rootTformTask = nil}

    /// A 3D pose trajectory for the tool expressed in the task frame, e.g. task_T_tool.
    /// This pose trajectory is optional if requesting a pure wrench at the end-effector, 
    /// otherwise required for position or mixed force/position end-effector requests.
    public var poseTrajectoryInTask: Bosdyn_Api_SE3Trajectory {
      get {return _storage._poseTrajectoryInTask ?? Bosdyn_Api_SE3Trajectory()}
      set {_uniqueStorage()._poseTrajectoryInTask = newValue}
    }
    /// Returns true if `poseTrajectoryInTask` has been explicitly set.
    public var hasPoseTrajectoryInTask: Bool {return _storage._poseTrajectoryInTask != nil}
    /// Clears the value of `poseTrajectoryInTask`. Subsequent reads from it will return its default value.
    public mutating func clearPoseTrajectoryInTask() {_uniqueStorage()._poseTrajectoryInTask = nil}

    /// Optional Maximum acceleration magnitude of the end-effector.
    /// Valid ranges (0, 20]
    public var maximumAcceleration: SwiftProtobuf.Google_Protobuf_DoubleValue {
      get {return _storage._maximumAcceleration ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
      set {_uniqueStorage()._maximumAcceleration = newValue}
    }
    /// Returns true if `maximumAcceleration` has been explicitly set.
    public var hasMaximumAcceleration: Bool {return _storage._maximumAcceleration != nil}
    /// Clears the value of `maximumAcceleration`. Subsequent reads from it will return its default value.
    public mutating func clearMaximumAcceleration() {_uniqueStorage()._maximumAcceleration = nil}

    /// Optional Maximum linear velocity magnitude of the end-effector. (m/s)
    public var maxLinearVelocity: SwiftProtobuf.Google_Protobuf_DoubleValue {
      get {return _storage._maxLinearVelocity ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
      set {_uniqueStorage()._maxLinearVelocity = newValue}
    }
    /// Returns true if `maxLinearVelocity` has been explicitly set.
    public var hasMaxLinearVelocity: Bool {return _storage._maxLinearVelocity != nil}
    /// Clears the value of `maxLinearVelocity`. Subsequent reads from it will return its default value.
    public mutating func clearMaxLinearVelocity() {_uniqueStorage()._maxLinearVelocity = nil}

    /// Optional Maximum angular velocity magnitude of the end-effector. (rad/s)
    public var maxAngularVelocity: SwiftProtobuf.Google_Protobuf_DoubleValue {
      get {return _storage._maxAngularVelocity ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
      set {_uniqueStorage()._maxAngularVelocity = newValue}
    }
    /// Returns true if `maxAngularVelocity` has been explicitly set.
    public var hasMaxAngularVelocity: Bool {return _storage._maxAngularVelocity != nil}
    /// Clears the value of `maxAngularVelocity`. Subsequent reads from it will return its default value.
    public mutating func clearMaxAngularVelocity() {_uniqueStorage()._maxAngularVelocity = nil}

    /// Maximum allowable tracking error of the tool frame from the desired trajectory
    /// before the arm will stop moving and cancel the rest of the trajectory. When this limit is exceeded, the
    /// hand will stay at the pose it was at when it exceeded the tracking error, and any other part of the
    /// trajectory specified in the rest of this message will be ignored.
    /// max position tracking error in meters
    public var maxPosTrackingError: SwiftProtobuf.Google_Protobuf_DoubleValue {
      get {return _storage._maxPosTrackingError ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
      set {_uniqueStorage()._maxPosTrackingError = newValue}
    }
    /// Returns true if `maxPosTrackingError` has been explicitly set.
    public var hasMaxPosTrackingError: Bool {return _storage._maxPosTrackingError != nil}
    /// Clears the value of `maxPosTrackingError`. Subsequent reads from it will return its default value.
    public mutating func clearMaxPosTrackingError() {_uniqueStorage()._maxPosTrackingError = nil}

    /// max orientation tracking error in radians
    public var maxRotTrackingError: SwiftProtobuf.Google_Protobuf_DoubleValue {
      get {return _storage._maxRotTrackingError ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
      set {_uniqueStorage()._maxRotTrackingError = newValue}
    }
    /// Returns true if `maxRotTrackingError` has been explicitly set.
    public var hasMaxRotTrackingError: Bool {return _storage._maxRotTrackingError != nil}
    /// Clears the value of `maxRotTrackingError`. Subsequent reads from it will return its default value.
    public mutating func clearMaxRotTrackingError() {_uniqueStorage()._maxRotTrackingError = nil}

    /// Set a "preferred joint configuration" for this trajectory. When near a singularity, the robot will move towards
    /// the specified pose. If no pose is provided (ie no value is set for this oneof), a default one will be
    /// chosen. If the user wishes to explicitly tell the robot to not prefer any pose, (useful if doing a
    /// local move, and the user wants to avoid large joint motions) they should set ignore_joint_configuration
    /// to be true. The robot's behavior around singularities will then be to simply minimize joint velocity,
    /// resulting in the robot coming in and out of the singularity with similar joint angles
    public var jointConfiguration: OneOf_JointConfiguration? {
      get {return _storage._jointConfiguration}
      set {_uniqueStorage()._jointConfiguration = newValue}
    }

    public var forceRemainNearCurrentJointConfiguration: Bool {
      get {
        if case .forceRemainNearCurrentJointConfiguration(let v)? = _storage._jointConfiguration {return v}
        return false
      }
      set {_uniqueStorage()._jointConfiguration = .forceRemainNearCurrentJointConfiguration(newValue)}
    }

    public var preferredJointConfiguration: Bosdyn_Api_ArmJointPosition {
      get {
        if case .preferredJointConfiguration(let v)? = _storage._jointConfiguration {return v}
        return Bosdyn_Api_ArmJointPosition()
      }
      set {_uniqueStorage()._jointConfiguration = .preferredJointConfiguration(newValue)}
    }

    public var xAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode {
      get {return _storage._xAxis}
      set {_uniqueStorage()._xAxis = newValue}
    }

    public var yAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode {
      get {return _storage._yAxis}
      set {_uniqueStorage()._yAxis = newValue}
    }

    public var zAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode {
      get {return _storage._zAxis}
      set {_uniqueStorage()._zAxis = newValue}
    }

    /// Amount of force to use on each axis, from 0 (no force) to 1.0 (maximum force), can also
    /// be negative.  Full range: [-1.0, 1.0]
    public var pressForcePercentage: Bosdyn_Api_Vec3 {
      get {return _storage._pressForcePercentage ?? Bosdyn_Api_Vec3()}
      set {_uniqueStorage()._pressForcePercentage = newValue}
    }
    /// Returns true if `pressForcePercentage` has been explicitly set.
    public var hasPressForcePercentage: Bool {return _storage._pressForcePercentage != nil}
    /// Clears the value of `pressForcePercentage`. Subsequent reads from it will return its default value.
    public mutating func clearPressForcePercentage() {_uniqueStorage()._pressForcePercentage = nil}

    /// Admittance settings for each axis in the admittance frame.
    public var xyAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting {
      get {return _storage._xyAdmittance}
      set {_uniqueStorage()._xyAdmittance = newValue}
    }

    public var zAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting {
      get {return _storage._zAdmittance}
      set {_uniqueStorage()._zAdmittance = newValue}
    }

    /// Cross term, making force in the XY axis cause movement in the z-axis.
    /// By default is OFF
    /// Setting this value will make the arm move in the negative Z-axis whenever it feels force in
    /// the XY axis.
    public var xyToZCrossTermAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting {
      get {return _storage._xyToZCrossTermAdmittance}
      set {_uniqueStorage()._xyToZCrossTermAdmittance = newValue}
    }

    /// Specifies a force that the body should expect to feel.  This allows the robot to "lean into"
    /// an external force.  Be careful using this field, because if you lie to the robot, it can
    /// fall over.
    public var biasForceEwrtBody: Bosdyn_Api_Vec3 {
      get {return _storage._biasForceEwrtBody ?? Bosdyn_Api_Vec3()}
      set {_uniqueStorage()._biasForceEwrtBody = newValue}
    }
    /// Returns true if `biasForceEwrtBody` has been explicitly set.
    public var hasBiasForceEwrtBody: Bool {return _storage._biasForceEwrtBody != nil}
    /// Clears the value of `biasForceEwrtBody`. Subsequent reads from it will return its default value.
    public mutating func clearBiasForceEwrtBody() {_uniqueStorage()._biasForceEwrtBody = nil}

    /// Gripper control
    public var gripperCommand: Bosdyn_Api_ClawGripperCommand.Request {
      get {return _storage._gripperCommand ?? Bosdyn_Api_ClawGripperCommand.Request()}
      set {_uniqueStorage()._gripperCommand = newValue}
    }
    /// Returns true if `gripperCommand` has been explicitly set.
    public var hasGripperCommand: Bool {return _storage._gripperCommand != nil}
    /// Clears the value of `gripperCommand`. Subsequent reads from it will return its default value.
    public mutating func clearGripperCommand() {_uniqueStorage()._gripperCommand = nil}

    /// Set to true to have robot is walk around to follow the hand.
    public var isRobotFollowingHand: Bool {
      get {return _storage._isRobotFollowingHand}
      set {_uniqueStorage()._isRobotFollowingHand = newValue}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Set a "preferred joint configuration" for this trajectory. When near a singularity, the robot will move towards
    /// the specified pose. If no pose is provided (ie no value is set for this oneof), a default one will be
    /// chosen. If the user wishes to explicitly tell the robot to not prefer any pose, (useful if doing a
    /// local move, and the user wants to avoid large joint motions) they should set ignore_joint_configuration
    /// to be true. The robot's behavior around singularities will then be to simply minimize joint velocity,
    /// resulting in the robot coming in and out of the singularity with similar joint angles
    public enum OneOf_JointConfiguration: Equatable {
      case forceRemainNearCurrentJointConfiguration(Bool)
      case preferredJointConfiguration(Bosdyn_Api_ArmJointPosition)

    #if !swift(>=4.1)
      public static func ==(lhs: Bosdyn_Api_ArmSurfaceContact.Request.OneOf_JointConfiguration, rhs: Bosdyn_Api_ArmSurfaceContact.Request.OneOf_JointConfiguration) -> Bool {
        switch (lhs, rhs) {
        case (.forceRemainNearCurrentJointConfiguration(let l), .forceRemainNearCurrentJointConfiguration(let r)): return l == r
        case (.preferredJointConfiguration(let l), .preferredJointConfiguration(let r)): return l == r
        default: return false
        }
      }
    #endif
    }

    /// If an axis is set to position mode (default), read desired from SE3Trajectory command.
    /// If mode is set to force, use the "press_force_percentage" field to determine force.
    public enum AxisMode: SwiftProtobuf.Enum {
      public typealias RawValue = Int
      case position // = 0
      case force // = 1
      case UNRECOGNIZED(Int)

      public init() {
        self = .position
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .position
        case 1: self = .force
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .position: return 0
        case .force: return 1
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    /// Parameters for controlling admittance.  By default, the robot will
    /// stop moving the arm when it encounters resistance.  You can control that reaction to
    /// make the robot stiffer or less stiff by changing the parameters.
    public enum AdmittanceSetting: SwiftProtobuf.Enum {
      public typealias RawValue = Int
      case unknown // = 0

      /// No admittance.
      case off // = 1

      /// Normal reaction to touching things in the world
      case normal // = 2

      /// Robot will not push very hard against objects
      case loose // = 3

      /// Robot will push hard against the world
      case stiff // = 4

      /// Robot will push very hard against the world
      case veryStiff // = 5
      case UNRECOGNIZED(Int)

      public init() {
        self = .unknown
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unknown
        case 1: self = .off
        case 2: self = .normal
        case 3: self = .loose
        case 4: self = .stiff
        case 5: self = .veryStiff
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unknown: return 0
        case .off: return 1
        case .normal: return 2
        case .loose: return 3
        case .stiff: return 4
        case .veryStiff: return 5
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public struct Feedback {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension Bosdyn_Api_ArmSurfaceContact.Request.AxisMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_ArmSurfaceContact.Request.AxisMode] = [
    .position,
    .force,
  ]
}

extension Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting] = [
    .unknown,
    .off,
    .normal,
    .loose,
    .stiff,
    .veryStiff,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bosdyn.api"

extension Bosdyn_Api_ArmSurfaceContact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ArmSurfaceContact"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_ArmSurfaceContact, rhs: Bosdyn_Api_ArmSurfaceContact) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_ArmSurfaceContact.Request: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Bosdyn_Api_ArmSurfaceContact.protoMessageName + ".Request"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    25: .standard(proto: "root_frame_name"),
    6: .standard(proto: "wrist_tform_tool"),
    26: .standard(proto: "root_tform_task"),
    2: .standard(proto: "pose_trajectory_in_task"),
    3: .standard(proto: "maximum_acceleration"),
    4: .standard(proto: "max_linear_velocity"),
    5: .standard(proto: "max_angular_velocity"),
    18: .standard(proto: "max_pos_tracking_error"),
    19: .standard(proto: "max_rot_tracking_error"),
    15: .standard(proto: "force_remain_near_current_joint_configuration"),
    16: .standard(proto: "preferred_joint_configuration"),
    8: .standard(proto: "x_axis"),
    9: .standard(proto: "y_axis"),
    10: .standard(proto: "z_axis"),
    12: .standard(proto: "press_force_percentage"),
    21: .standard(proto: "xy_admittance"),
    22: .standard(proto: "z_admittance"),
    17: .standard(proto: "xy_to_z_cross_term_admittance"),
    20: .standard(proto: "bias_force_ewrt_body"),
    23: .standard(proto: "gripper_command"),
    24: .standard(proto: "is_robot_following_hand"),
  ]

  fileprivate class _StorageClass {
    var _rootFrameName: String = String()
    var _wristTformTool: Bosdyn_Api_SE3Pose? = nil
    var _rootTformTask: Bosdyn_Api_SE3Pose? = nil
    var _poseTrajectoryInTask: Bosdyn_Api_SE3Trajectory? = nil
    var _maximumAcceleration: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
    var _maxLinearVelocity: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
    var _maxAngularVelocity: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
    var _maxPosTrackingError: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
    var _maxRotTrackingError: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
    var _jointConfiguration: Bosdyn_Api_ArmSurfaceContact.Request.OneOf_JointConfiguration?
    var _xAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode = .position
    var _yAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode = .position
    var _zAxis: Bosdyn_Api_ArmSurfaceContact.Request.AxisMode = .position
    var _pressForcePercentage: Bosdyn_Api_Vec3? = nil
    var _xyAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting = .unknown
    var _zAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting = .unknown
    var _xyToZCrossTermAdmittance: Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting = .unknown
    var _biasForceEwrtBody: Bosdyn_Api_Vec3? = nil
    var _gripperCommand: Bosdyn_Api_ClawGripperCommand.Request? = nil
    var _isRobotFollowingHand: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _rootFrameName = source._rootFrameName
      _wristTformTool = source._wristTformTool
      _rootTformTask = source._rootTformTask
      _poseTrajectoryInTask = source._poseTrajectoryInTask
      _maximumAcceleration = source._maximumAcceleration
      _maxLinearVelocity = source._maxLinearVelocity
      _maxAngularVelocity = source._maxAngularVelocity
      _maxPosTrackingError = source._maxPosTrackingError
      _maxRotTrackingError = source._maxRotTrackingError
      _jointConfiguration = source._jointConfiguration
      _xAxis = source._xAxis
      _yAxis = source._yAxis
      _zAxis = source._zAxis
      _pressForcePercentage = source._pressForcePercentage
      _xyAdmittance = source._xyAdmittance
      _zAdmittance = source._zAdmittance
      _xyToZCrossTermAdmittance = source._xyToZCrossTermAdmittance
      _biasForceEwrtBody = source._biasForceEwrtBody
      _gripperCommand = source._gripperCommand
      _isRobotFollowingHand = source._isRobotFollowingHand
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 2: try decoder.decodeSingularMessageField(value: &_storage._poseTrajectoryInTask)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._maximumAcceleration)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._maxLinearVelocity)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._maxAngularVelocity)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._wristTformTool)
        case 8: try decoder.decodeSingularEnumField(value: &_storage._xAxis)
        case 9: try decoder.decodeSingularEnumField(value: &_storage._yAxis)
        case 10: try decoder.decodeSingularEnumField(value: &_storage._zAxis)
        case 12: try decoder.decodeSingularMessageField(value: &_storage._pressForcePercentage)
        case 15:
          if _storage._jointConfiguration != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._jointConfiguration = .forceRemainNearCurrentJointConfiguration(v)}
        case 16:
          var v: Bosdyn_Api_ArmJointPosition?
          if let current = _storage._jointConfiguration {
            try decoder.handleConflictingOneOf()
            if case .preferredJointConfiguration(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._jointConfiguration = .preferredJointConfiguration(v)}
        case 17: try decoder.decodeSingularEnumField(value: &_storage._xyToZCrossTermAdmittance)
        case 18: try decoder.decodeSingularMessageField(value: &_storage._maxPosTrackingError)
        case 19: try decoder.decodeSingularMessageField(value: &_storage._maxRotTrackingError)
        case 20: try decoder.decodeSingularMessageField(value: &_storage._biasForceEwrtBody)
        case 21: try decoder.decodeSingularEnumField(value: &_storage._xyAdmittance)
        case 22: try decoder.decodeSingularEnumField(value: &_storage._zAdmittance)
        case 23: try decoder.decodeSingularMessageField(value: &_storage._gripperCommand)
        case 24: try decoder.decodeSingularBoolField(value: &_storage._isRobotFollowingHand)
        case 25: try decoder.decodeSingularStringField(value: &_storage._rootFrameName)
        case 26: try decoder.decodeSingularMessageField(value: &_storage._rootTformTask)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._poseTrajectoryInTask {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._maximumAcceleration {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._maxLinearVelocity {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._maxAngularVelocity {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._wristTformTool {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if _storage._xAxis != .position {
        try visitor.visitSingularEnumField(value: _storage._xAxis, fieldNumber: 8)
      }
      if _storage._yAxis != .position {
        try visitor.visitSingularEnumField(value: _storage._yAxis, fieldNumber: 9)
      }
      if _storage._zAxis != .position {
        try visitor.visitSingularEnumField(value: _storage._zAxis, fieldNumber: 10)
      }
      if let v = _storage._pressForcePercentage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      }
      switch _storage._jointConfiguration {
      case .forceRemainNearCurrentJointConfiguration(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 15)
      case .preferredJointConfiguration(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      case nil: break
      }
      if _storage._xyToZCrossTermAdmittance != .unknown {
        try visitor.visitSingularEnumField(value: _storage._xyToZCrossTermAdmittance, fieldNumber: 17)
      }
      if let v = _storage._maxPosTrackingError {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 18)
      }
      if let v = _storage._maxRotTrackingError {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
      }
      if let v = _storage._biasForceEwrtBody {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 20)
      }
      if _storage._xyAdmittance != .unknown {
        try visitor.visitSingularEnumField(value: _storage._xyAdmittance, fieldNumber: 21)
      }
      if _storage._zAdmittance != .unknown {
        try visitor.visitSingularEnumField(value: _storage._zAdmittance, fieldNumber: 22)
      }
      if let v = _storage._gripperCommand {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 23)
      }
      if _storage._isRobotFollowingHand != false {
        try visitor.visitSingularBoolField(value: _storage._isRobotFollowingHand, fieldNumber: 24)
      }
      if !_storage._rootFrameName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._rootFrameName, fieldNumber: 25)
      }
      if let v = _storage._rootTformTask {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 26)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_ArmSurfaceContact.Request, rhs: Bosdyn_Api_ArmSurfaceContact.Request) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._rootFrameName != rhs_storage._rootFrameName {return false}
        if _storage._wristTformTool != rhs_storage._wristTformTool {return false}
        if _storage._rootTformTask != rhs_storage._rootTformTask {return false}
        if _storage._poseTrajectoryInTask != rhs_storage._poseTrajectoryInTask {return false}
        if _storage._maximumAcceleration != rhs_storage._maximumAcceleration {return false}
        if _storage._maxLinearVelocity != rhs_storage._maxLinearVelocity {return false}
        if _storage._maxAngularVelocity != rhs_storage._maxAngularVelocity {return false}
        if _storage._maxPosTrackingError != rhs_storage._maxPosTrackingError {return false}
        if _storage._maxRotTrackingError != rhs_storage._maxRotTrackingError {return false}
        if _storage._jointConfiguration != rhs_storage._jointConfiguration {return false}
        if _storage._xAxis != rhs_storage._xAxis {return false}
        if _storage._yAxis != rhs_storage._yAxis {return false}
        if _storage._zAxis != rhs_storage._zAxis {return false}
        if _storage._pressForcePercentage != rhs_storage._pressForcePercentage {return false}
        if _storage._xyAdmittance != rhs_storage._xyAdmittance {return false}
        if _storage._zAdmittance != rhs_storage._zAdmittance {return false}
        if _storage._xyToZCrossTermAdmittance != rhs_storage._xyToZCrossTermAdmittance {return false}
        if _storage._biasForceEwrtBody != rhs_storage._biasForceEwrtBody {return false}
        if _storage._gripperCommand != rhs_storage._gripperCommand {return false}
        if _storage._isRobotFollowingHand != rhs_storage._isRobotFollowingHand {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bosdyn_Api_ArmSurfaceContact.Request.AxisMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AXIS_MODE_POSITION"),
    1: .same(proto: "AXIS_MODE_FORCE"),
  ]
}

extension Bosdyn_Api_ArmSurfaceContact.Request.AdmittanceSetting: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADMITTANCE_SETTING_UNKNOWN"),
    1: .same(proto: "ADMITTANCE_SETTING_OFF"),
    2: .same(proto: "ADMITTANCE_SETTING_NORMAL"),
    3: .same(proto: "ADMITTANCE_SETTING_LOOSE"),
    4: .same(proto: "ADMITTANCE_SETTING_STIFF"),
    5: .same(proto: "ADMITTANCE_SETTING_VERY_STIFF"),
  ]
}

extension Bosdyn_Api_ArmSurfaceContact.Feedback: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Bosdyn_Api_ArmSurfaceContact.protoMessageName + ".Feedback"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bosdyn_Api_ArmSurfaceContact.Feedback, rhs: Bosdyn_Api_ArmSurfaceContact.Feedback) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
