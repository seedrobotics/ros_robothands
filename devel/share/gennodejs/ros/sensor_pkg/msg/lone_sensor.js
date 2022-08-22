// Auto-generated. Do not edit!

// (in-package sensor_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class lone_sensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.fx = null;
      this.fy = null;
      this.fz = null;
      this.abs = null;
      this.yaw = null;
      this.pitch = null;
      this.is_present = null;
      this.is_3D = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = 0;
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0;
      }
      if (initObj.hasOwnProperty('fz')) {
        this.fz = initObj.fz
      }
      else {
        this.fz = 0;
      }
      if (initObj.hasOwnProperty('abs')) {
        this.abs = initObj.abs
      }
      else {
        this.abs = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('is_present')) {
        this.is_present = initObj.is_present
      }
      else {
        this.is_present = false;
      }
      if (initObj.hasOwnProperty('is_3D')) {
        this.is_3D = initObj.is_3D
      }
      else {
        this.is_3D = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lone_sensor
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = _serializer.int64(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = _serializer.int64(obj.fy, buffer, bufferOffset);
    // Serialize message field [fz]
    bufferOffset = _serializer.int64(obj.fz, buffer, bufferOffset);
    // Serialize message field [abs]
    bufferOffset = _serializer.float64(obj.abs, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [is_present]
    bufferOffset = _serializer.bool(obj.is_present, buffer, bufferOffset);
    // Serialize message field [is_3D]
    bufferOffset = _serializer.bool(obj.is_3D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lone_sensor
    let len;
    let data = new lone_sensor(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fz]
    data.fz = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [abs]
    data.abs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_present]
    data.is_present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_3D]
    data.is_3D = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_pkg/lone_sensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd74951cd5ea9208665af447aa3c67759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 id
    int64 fx
    int64 fy
    int64 fz
    float64 abs
    float64 yaw
    float64 pitch
    bool is_present
    bool is_3D
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lone_sensor(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = 0
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0
    }

    if (msg.fz !== undefined) {
      resolved.fz = msg.fz;
    }
    else {
      resolved.fz = 0
    }

    if (msg.abs !== undefined) {
      resolved.abs = msg.abs;
    }
    else {
      resolved.abs = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.is_present !== undefined) {
      resolved.is_present = msg.is_present;
    }
    else {
      resolved.is_present = false
    }

    if (msg.is_3D !== undefined) {
      resolved.is_3D = msg.is_3D;
    }
    else {
      resolved.is_3D = false
    }

    return resolved;
    }
};

module.exports = lone_sensor;
