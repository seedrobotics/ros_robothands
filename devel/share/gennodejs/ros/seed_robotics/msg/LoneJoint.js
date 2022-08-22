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

class LoneJoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.bus_id = null;
      this.stiffness = null;
      this.stress_level = null;
      this.target_position = null;
      this.target_speed = null;
      this.torque_limit = null;
      this.present_position = null;
      this.present_speed = null;
      this.temperature = null;
      this.moving = null;
      this.HW_error_condition = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('bus_id')) {
        this.bus_id = initObj.bus_id
      }
      else {
        this.bus_id = 0;
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = 0;
      }
      if (initObj.hasOwnProperty('stress_level')) {
        this.stress_level = initObj.stress_level
      }
      else {
        this.stress_level = 0;
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = 0;
      }
      if (initObj.hasOwnProperty('target_speed')) {
        this.target_speed = initObj.target_speed
      }
      else {
        this.target_speed = 0;
      }
      if (initObj.hasOwnProperty('torque_limit')) {
        this.torque_limit = initObj.torque_limit
      }
      else {
        this.torque_limit = 0;
      }
      if (initObj.hasOwnProperty('present_position')) {
        this.present_position = initObj.present_position
      }
      else {
        this.present_position = 0;
      }
      if (initObj.hasOwnProperty('present_speed')) {
        this.present_speed = initObj.present_speed
      }
      else {
        this.present_speed = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = 0;
      }
      if (initObj.hasOwnProperty('HW_error_condition')) {
        this.HW_error_condition = initObj.HW_error_condition
      }
      else {
        this.HW_error_condition = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoneJoint
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [bus_id]
    bufferOffset = _serializer.uint8(obj.bus_id, buffer, bufferOffset);
    // Serialize message field [stiffness]
    bufferOffset = _serializer.uint8(obj.stiffness, buffer, bufferOffset);
    // Serialize message field [stress_level]
    bufferOffset = _serializer.uint8(obj.stress_level, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = _serializer.uint16(obj.target_position, buffer, bufferOffset);
    // Serialize message field [target_speed]
    bufferOffset = _serializer.uint16(obj.target_speed, buffer, bufferOffset);
    // Serialize message field [torque_limit]
    bufferOffset = _serializer.uint16(obj.torque_limit, buffer, bufferOffset);
    // Serialize message field [present_position]
    bufferOffset = _serializer.uint16(obj.present_position, buffer, bufferOffset);
    // Serialize message field [present_speed]
    bufferOffset = _serializer.int16(obj.present_speed, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.uint8(obj.temperature, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.uint8(obj.moving, buffer, bufferOffset);
    // Serialize message field [HW_error_condition]
    bufferOffset = _serializer.uint8(obj.HW_error_condition, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoneJoint
    let len;
    let data = new LoneJoint(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bus_id]
    data.bus_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stiffness]
    data.stiffness = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stress_level]
    data.stress_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_speed]
    data.target_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [torque_limit]
    data.torque_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [present_position]
    data.present_position = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [present_speed]
    data.present_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HW_error_condition]
    data.HW_error_condition = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/LoneJoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6abe499ce867c10d257cf3acca9de505';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint8 bus_id
    uint8 stiffness
    uint8 stress_level
    uint16 target_position
    uint16 target_speed
    uint16 torque_limit
    uint16 present_position
    int16 present_speed
    uint8 temperature
    uint8 moving
    uint8 HW_error_condition
    int16 current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoneJoint(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.bus_id !== undefined) {
      resolved.bus_id = msg.bus_id;
    }
    else {
      resolved.bus_id = 0
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = 0
    }

    if (msg.stress_level !== undefined) {
      resolved.stress_level = msg.stress_level;
    }
    else {
      resolved.stress_level = 0
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = msg.target_position;
    }
    else {
      resolved.target_position = 0
    }

    if (msg.target_speed !== undefined) {
      resolved.target_speed = msg.target_speed;
    }
    else {
      resolved.target_speed = 0
    }

    if (msg.torque_limit !== undefined) {
      resolved.torque_limit = msg.torque_limit;
    }
    else {
      resolved.torque_limit = 0
    }

    if (msg.present_position !== undefined) {
      resolved.present_position = msg.present_position;
    }
    else {
      resolved.present_position = 0
    }

    if (msg.present_speed !== undefined) {
      resolved.present_speed = msg.present_speed;
    }
    else {
      resolved.present_speed = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = 0
    }

    if (msg.HW_error_condition !== undefined) {
      resolved.HW_error_condition = msg.HW_error_condition;
    }
    else {
      resolved.HW_error_condition = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    return resolved;
    }
};

module.exports = LoneJoint;
