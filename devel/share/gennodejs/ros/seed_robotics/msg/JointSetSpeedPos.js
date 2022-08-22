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

class JointSetSpeedPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.target_pos = null;
      this.target_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = 0;
      }
      if (initObj.hasOwnProperty('target_speed')) {
        this.target_speed = initObj.target_speed
      }
      else {
        this.target_speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSetSpeedPos
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = _serializer.uint16(obj.target_pos, buffer, bufferOffset);
    // Serialize message field [target_speed]
    bufferOffset = _serializer.int16(obj.target_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSetSpeedPos
    let len;
    let data = new JointSetSpeedPos(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_speed]
    data.target_speed = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/JointSetSpeedPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '081224d8d07c92db7062a286ebd648c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint16 target_pos
    int16 target_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSetSpeedPos(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = 0
    }

    if (msg.target_speed !== undefined) {
      resolved.target_speed = msg.target_speed;
    }
    else {
      resolved.target_speed = 0
    }

    return resolved;
    }
};

module.exports = JointSetSpeedPos;
