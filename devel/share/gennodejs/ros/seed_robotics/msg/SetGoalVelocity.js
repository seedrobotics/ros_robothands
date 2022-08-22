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

class SetGoalVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.goal_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('goal_velocity')) {
        this.goal_velocity = initObj.goal_velocity
      }
      else {
        this.goal_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGoalVelocity
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [goal_velocity]
    bufferOffset = _serializer.int16(obj.goal_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGoalVelocity
    let len;
    let data = new SetGoalVelocity(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/SetGoalVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c16c2214d42fb8949a3d64721f3982d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    int16 goal_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGoalVelocity(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.goal_velocity !== undefined) {
      resolved.goal_velocity = msg.goal_velocity;
    }
    else {
      resolved.goal_velocity = 0
    }

    return resolved;
    }
};

module.exports = SetGoalVelocity;
