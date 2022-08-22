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

class GetTempCurrRequest {
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
    // Serializes a message object of type GetTempCurrRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTempCurrRequest
    let len;
    let data = new GetTempCurrRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetTempCurrRequest';
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
    const resolved = new GetTempCurrRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetTempCurrResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTempCurrResponse
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int8(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTempCurrResponse
    let len;
    let data = new GetTempCurrResponse(null);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_robotics/GetTempCurrResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ae3f2dc226dc1f4c2bdafe4330e5666';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 current
    int8 temperature
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTempCurrResponse(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTempCurrRequest,
  Response: GetTempCurrResponse,
  md5sum() { return 'f7123ebb92ae5f9e20543d821a1be8fe'; },
  datatype() { return 'seed_robotics/GetTempCurr'; }
};
