// Auto-generated. Do not edit!

// (in-package seed_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SetGoalProfileVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.goal_profile_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('goal_profile_velocity')) {
        this.goal_profile_velocity = initObj.goal_profile_velocity
      }
      else {
        this.goal_profile_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGoalProfileVelocity
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [goal_profile_velocity]
    bufferOffset = _serializer.int32(obj.goal_profile_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGoalProfileVelocity
    let len;
    let data = new SetGoalProfileVelocity(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal_profile_velocity]
    data.goal_profile_velocity = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/SetGoalProfileVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46b70f7b9e0160279323583cbdf16e19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    int32 goal_profile_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGoalProfileVelocity(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.goal_profile_velocity !== undefined) {
      resolved.goal_profile_velocity = msg.goal_profile_velocity;
    }
    else {
      resolved.goal_profile_velocity = 0
    }

    return resolved;
    }
};

module.exports = SetGoalProfileVelocity;
