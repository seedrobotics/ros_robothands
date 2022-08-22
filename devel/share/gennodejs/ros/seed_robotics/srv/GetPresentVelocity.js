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

class GetPresentVelocityRequest {
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
    // Serializes a message object of type GetPresentVelocityRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPresentVelocityRequest
    let len;
    let data = new GetPresentVelocityRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetPresentVelocityRequest';
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
    const resolved = new GetPresentVelocityRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetPresentVelocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.present_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('present_velocity')) {
        this.present_velocity = initObj.present_velocity
      }
      else {
        this.present_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPresentVelocityResponse
    // Serialize message field [present_velocity]
    bufferOffset = _serializer.int16(obj.present_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPresentVelocityResponse
    let len;
    let data = new GetPresentVelocityResponse(null);
    // Deserialize message field [present_velocity]
    data.present_velocity = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetPresentVelocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe58ed2f3aca75c6c471e970b3c43b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 present_velocity
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPresentVelocityResponse(null);
    if (msg.present_velocity !== undefined) {
      resolved.present_velocity = msg.present_velocity;
    }
    else {
      resolved.present_velocity = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPresentVelocityRequest,
  Response: GetPresentVelocityResponse,
  md5sum() { return '2414cb2e4ff96bd9445295b7a5e4de44'; },
  datatype() { return 'seed_robotics/GetPresentVelocity'; }
};
