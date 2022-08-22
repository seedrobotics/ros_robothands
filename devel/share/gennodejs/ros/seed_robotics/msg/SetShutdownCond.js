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

class SetShutdownCond {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.temperature = null;
      this.overload = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = false;
      }
      if (initObj.hasOwnProperty('overload')) {
        this.overload = initObj.overload
      }
      else {
        this.overload = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetShutdownCond
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.bool(obj.temperature, buffer, bufferOffset);
    // Serialize message field [overload]
    bufferOffset = _serializer.bool(obj.overload, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetShutdownCond
    let len;
    let data = new SetShutdownCond(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overload]
    data.overload = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/SetShutdownCond';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b50d1b8fda73a468067ba7e8581dfde8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    bool temperature
    bool overload
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetShutdownCond(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = false
    }

    if (msg.overload !== undefined) {
      resolved.overload = msg.overload;
    }
    else {
      resolved.overload = false
    }

    return resolved;
    }
};

module.exports = SetShutdownCond;
