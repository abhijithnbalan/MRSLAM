
"use strict";

let VelocityXYCommand = require('./VelocityXYCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let ControllerState = require('./ControllerState.js');
let HeightCommand = require('./HeightCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let RawImu = require('./RawImu.js');
let HeadingCommand = require('./HeadingCommand.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let RawRC = require('./RawRC.js');
let MotorCommand = require('./MotorCommand.js');
let RawMagnetic = require('./RawMagnetic.js');
let Supply = require('./Supply.js');
let ThrustCommand = require('./ThrustCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let ServoCommand = require('./ServoCommand.js');
let MotorPWM = require('./MotorPWM.js');
let MotorStatus = require('./MotorStatus.js');
let RC = require('./RC.js');
let Compass = require('./Compass.js');
let Altimeter = require('./Altimeter.js');
let TakeoffGoal = require('./TakeoffGoal.js');
let LandingFeedback = require('./LandingFeedback.js');
let TakeoffActionFeedback = require('./TakeoffActionFeedback.js');
let TakeoffResult = require('./TakeoffResult.js');
let PoseFeedback = require('./PoseFeedback.js');
let TakeoffFeedback = require('./TakeoffFeedback.js');
let TakeoffActionResult = require('./TakeoffActionResult.js');
let TakeoffActionGoal = require('./TakeoffActionGoal.js');
let TakeoffAction = require('./TakeoffAction.js');
let PoseActionGoal = require('./PoseActionGoal.js');
let LandingAction = require('./LandingAction.js');
let PoseGoal = require('./PoseGoal.js');
let LandingResult = require('./LandingResult.js');
let LandingActionGoal = require('./LandingActionGoal.js');
let PoseAction = require('./PoseAction.js');
let PoseActionResult = require('./PoseActionResult.js');
let LandingActionResult = require('./LandingActionResult.js');
let LandingGoal = require('./LandingGoal.js');
let LandingActionFeedback = require('./LandingActionFeedback.js');
let PoseActionFeedback = require('./PoseActionFeedback.js');
let PoseResult = require('./PoseResult.js');

module.exports = {
  VelocityXYCommand: VelocityXYCommand,
  YawrateCommand: YawrateCommand,
  ControllerState: ControllerState,
  HeightCommand: HeightCommand,
  RuddersCommand: RuddersCommand,
  VelocityZCommand: VelocityZCommand,
  RawImu: RawImu,
  HeadingCommand: HeadingCommand,
  AttitudeCommand: AttitudeCommand,
  RawRC: RawRC,
  MotorCommand: MotorCommand,
  RawMagnetic: RawMagnetic,
  Supply: Supply,
  ThrustCommand: ThrustCommand,
  PositionXYCommand: PositionXYCommand,
  ServoCommand: ServoCommand,
  MotorPWM: MotorPWM,
  MotorStatus: MotorStatus,
  RC: RC,
  Compass: Compass,
  Altimeter: Altimeter,
  TakeoffGoal: TakeoffGoal,
  LandingFeedback: LandingFeedback,
  TakeoffActionFeedback: TakeoffActionFeedback,
  TakeoffResult: TakeoffResult,
  PoseFeedback: PoseFeedback,
  TakeoffFeedback: TakeoffFeedback,
  TakeoffActionResult: TakeoffActionResult,
  TakeoffActionGoal: TakeoffActionGoal,
  TakeoffAction: TakeoffAction,
  PoseActionGoal: PoseActionGoal,
  LandingAction: LandingAction,
  PoseGoal: PoseGoal,
  LandingResult: LandingResult,
  LandingActionGoal: LandingActionGoal,
  PoseAction: PoseAction,
  PoseActionResult: PoseActionResult,
  LandingActionResult: LandingActionResult,
  LandingGoal: LandingGoal,
  LandingActionFeedback: LandingActionFeedback,
  PoseActionFeedback: PoseActionFeedback,
  PoseResult: PoseResult,
};
