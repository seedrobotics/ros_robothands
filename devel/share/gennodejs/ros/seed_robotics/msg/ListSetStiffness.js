// Auto-generated. Do not edit!

// (in-package seed_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SetStiffness = require('./SetStiffness.js');

//-----------------------------------------------------------

class ListSetStiffness {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListSetStiffness
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = SetStiffness.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListSetStiffness
    let len;
    let data = new ListSetStiffness(null);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = SetStiffness.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joints.forEach((val) => {
      length += SetStiffness.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/ListSetStiffness';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dba60e53277bd72c114abe7a790b8b92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    seed_robotics/SetStiffness[] joints
    
    ================================================================================
    MSG: seed_robotics/SetStiffness
    string name
    uint8 stiffness
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListSetStiffness(null);
    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = SetStiffness.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

module.exports = ListSetStiffness;
