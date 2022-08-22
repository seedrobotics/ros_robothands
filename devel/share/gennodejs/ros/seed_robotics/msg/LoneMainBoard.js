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

class LoneMainBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.palm_IR_sensor = null;
      this.capacitive_sensor_1 = null;
      this.capacitive_sensor_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('palm_IR_sensor')) {
        this.palm_IR_sensor = initObj.palm_IR_sensor
      }
      else {
        this.palm_IR_sensor = 0;
      }
      if (initObj.hasOwnProperty('capacitive_sensor_1')) {
        this.capacitive_sensor_1 = initObj.capacitive_sensor_1
      }
      else {
        this.capacitive_sensor_1 = 0;
      }
      if (initObj.hasOwnProperty('capacitive_sensor_2')) {
        this.capacitive_sensor_2 = initObj.capacitive_sensor_2
      }
      else {
        this.capacitive_sensor_2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoneMainBoard
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [palm_IR_sensor]
    bufferOffset = _serializer.uint16(obj.palm_IR_sensor, buffer, bufferOffset);
    // Serialize message field [capacitive_sensor_1]
    bufferOffset = _serializer.uint16(obj.capacitive_sensor_1, buffer, bufferOffset);
    // Serialize message field [capacitive_sensor_2]
    bufferOffset = _serializer.uint16(obj.capacitive_sensor_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoneMainBoard
    let len;
    let data = new LoneMainBoard(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [palm_IR_sensor]
    data.palm_IR_sensor = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [capacitive_sensor_1]
    data.capacitive_sensor_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [capacitive_sensor_2]
    data.capacitive_sensor_2 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/LoneMainBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '875f68e3bca4fff5a77828447db760f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    string name
    uint16 palm_IR_sensor
    uint16 capacitive_sensor_1
    uint16 capacitive_sensor_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoneMainBoard(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.palm_IR_sensor !== undefined) {
      resolved.palm_IR_sensor = msg.palm_IR_sensor;
    }
    else {
      resolved.palm_IR_sensor = 0
    }

    if (msg.capacitive_sensor_1 !== undefined) {
      resolved.capacitive_sensor_1 = msg.capacitive_sensor_1;
    }
    else {
      resolved.capacitive_sensor_1 = 0
    }

    if (msg.capacitive_sensor_2 !== undefined) {
      resolved.capacitive_sensor_2 = msg.capacitive_sensor_2;
    }
    else {
      resolved.capacitive_sensor_2 = 0
    }

    return resolved;
    }
};

module.exports = LoneMainBoard;
