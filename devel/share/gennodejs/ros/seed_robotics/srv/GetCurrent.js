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

class GetCurrentRequest {
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
    // Serializes a message object of type GetCurrentRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentRequest
    let len;
    let data = new GetCurrentRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetCurrentRequest';
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
    const resolved = new GetCurrentRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetCurrentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentResponse
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentResponse
    let len;
    let data = new GetCurrentResponse(null);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetCurrentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '356c7207b80d4fd7fe00c928de25f840';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 current
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentResponse(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCurrentRequest,
  Response: GetCurrentResponse,
  md5sum() { return 'e5afeed341ec02e41760a747f3e580ae'; },
  datatype() { return 'seed_robotics/GetCurrent'; }
};
