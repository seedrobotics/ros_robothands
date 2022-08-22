
"use strict";

let SyncGetPosition = require('./SyncGetPosition.js')
let BulkGetItem = require('./BulkGetItem.js')
let GetCurrent = require('./GetCurrent.js')
let GetGoalPosition = require('./GetGoalPosition.js')
let GetPresentVelocity = require('./GetPresentVelocity.js')
let GetPosVelocity = require('./GetPosVelocity.js')
let GetTempCurr = require('./GetTempCurr.js')
let GetGoalVelocity = require('./GetGoalVelocity.js')
let GetTemperature = require('./GetTemperature.js')
let GetPresentPosition = require('./GetPresentPosition.js')

module.exports = {
  SyncGetPosition: SyncGetPosition,
  BulkGetItem: BulkGetItem,
  GetCurrent: GetCurrent,
  GetGoalPosition: GetGoalPosition,
  GetPresentVelocity: GetPresentVelocity,
  GetPosVelocity: GetPosVelocity,
  GetTempCurr: GetTempCurr,
  GetGoalVelocity: GetGoalVelocity,
  GetTemperature: GetTemperature,
  GetPresentPosition: GetPresentPosition,
};
