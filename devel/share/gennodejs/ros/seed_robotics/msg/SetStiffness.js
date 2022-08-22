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

class SetStiffness {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.stiffness = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetStiffness
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [stiffness]
    bufferOffset = _serializer.uint8(obj.stiffness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetStiffness
    let len;
    let data = new SetStiffness(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stiffness]
    data.stiffness = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/SetStiffness';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e627d33eb361fcbabec59ee9bcb98a67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint8 stiffness
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetStiffness(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = 0
    }

    return resolved;
    }
};

module.exports = SetStiffness;
