// Auto-generated. Do not edit!

// (in-package seed_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ClearHWError = require('./ClearHWError.js');

//-----------------------------------------------------------

class ListClearHWError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListClearHWError
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = ClearHWError.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListClearHWError
    let len;
    let data = new ListClearHWError(null);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = ClearHWError.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joints.forEach((val) => {
      length += ClearHWError.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/ListClearHWError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '958e71b9000541067274a36d79e8291e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 length
    seed_robotics/ClearHWError[] joints
    
    ================================================================================
    MSG: seed_robotics/ClearHWError
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListClearHWError(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = ClearHWError.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

module.exports = ListClearHWError;
