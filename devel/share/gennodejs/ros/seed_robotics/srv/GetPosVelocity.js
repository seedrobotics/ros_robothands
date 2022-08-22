// Auto-generated. Do not edit!

// (in-package seed_robotics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetPosVelocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPosVelocityRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPosVelocityRequest
    let len;
    let data = new GetPosVelocityRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetPosVelocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '541b98e964705918fa8eb206b65347b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPosVelocityRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetPosVelocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.present_position = null;
      this.goal_position = null;
      this.present_velocity = null;
      this.goal_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('present_position')) {
        this.present_position = initObj.present_position
      }
      else {
        this.present_position = 0;
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = 0;
      }
      if (initObj.hasOwnProperty('present_velocity')) {
        this.present_velocity = initObj.present_velocity
      }
      else {
        this.present_velocity = 0;
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
    // Serializes a message object of type GetPosVelocityResponse
    // Serialize message field [present_position]
    bufferOffset = _serializer.int16(obj.present_position, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = _serializer.int16(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [present_velocity]
    bufferOffset = _serializer.int16(obj.present_velocity, buffer, bufferOffset);
    // Serialize message field [goal_velocity]
    bufferOffset = _serializer.int16(obj.goal_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPosVelocityResponse
    let len;
    let data = new GetPosVelocityResponse(null);
    // Deserialize message field [present_position]
    data.present_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [present_velocity]
    data.present_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetPosVelocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f887058957ab1477fd2dccabad72c13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 present_position
    int16 goal_position
    int16 present_velocity
    int16 goal_velocity
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPosVelocityResponse(null);
    if (msg.present_position !== undefined) {
      resolved.present_position = msg.present_position;
    }
    else {
      resolved.present_position = 0
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = msg.goal_position;
    }
    else {
      resolved.goal_position = 0
    }

    if (msg.present_velocity !== undefined) {
      resolved.present_velocity = msg.present_velocity;
    }
    else {
      resolved.present_velocity = 0
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

module.exports = {
  Request: GetPosVelocityRequest,
  Response: GetPosVelocityResponse,
  md5sum() { return '03d33e418b2174778dea8e5cd3831c82'; },
  datatype() { return 'seed_robotics/GetPosVelocity'; }
};
