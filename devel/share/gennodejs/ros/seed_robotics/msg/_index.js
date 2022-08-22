
"use strict";

let JointListSetSpeedPos = require('./JointListSetSpeedPos.js');
let LoneJoint = require('./LoneJoint.js');
let JointListSetStiffness = require('./JointListSetStiffness.js');
let AllMainBoards = require('./AllMainBoards.js');
let LoneMainBoard = require('./LoneMainBoard.js');
let SetStiffness = require('./SetStiffness.js');
let ClearHWError = require('./ClearHWError.js');
let SetShutdownCond = require('./SetShutdownCond.js');
let AllJoints = require('./AllJoints.js');
let JointSetSpeedPos = require('./JointSetSpeedPos.js');

module.exports = {
  JointListSetSpeedPos: JointListSetSpeedPos,
  LoneJoint: LoneJoint,
  JointListSetStiffness: JointListSetStiffness,
  AllMainBoards: AllMainBoards,
  LoneMainBoard: LoneMainBoard,
  SetStiffness: SetStiffness,
  ClearHWError: ClearHWError,
  SetShutdownCond: SetShutdownCond,
  AllJoints: AllJoints,
  JointSetSpeedPos: JointSetSpeedPos,
};
