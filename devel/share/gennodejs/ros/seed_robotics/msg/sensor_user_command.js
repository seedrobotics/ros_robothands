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

class sensor_user_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.calibrate = null;
      this.setepoch = null;
      this.epoch_sec = null;
      this.epoch_msec = null;
      this.diagnosis_request = null;
      this.set_frequency = null;
      this.frequency = null;
      this.raw_string = null;
      this.raw = null;
    }
    else {
      if (initObj.hasOwnProperty('calibrate')) {
        this.calibrate = initObj.calibrate
      }
      else {
        this.calibrate = false;
      }
      if (initObj.hasOwnProperty('setepoch')) {
        this.setepoch = initObj.setepoch
      }
      else {
        this.setepoch = false;
      }
      if (initObj.hasOwnProperty('epoch_sec')) {
        this.epoch_sec = initObj.epoch_sec
      }
      else {
        this.epoch_sec = '';
      }
      if (initObj.hasOwnProperty('epoch_msec')) {
        this.epoch_msec = initObj.epoch_msec
      }
      else {
        this.epoch_msec = '';
      }
      if (initObj.hasOwnProperty('diagnosis_request')) {
        this.diagnosis_request = initObj.diagnosis_request
      }
      else {
        this.diagnosis_request = false;
      }
      if (initObj.hasOwnProperty('set_frequency')) {
        this.set_frequency = initObj.set_frequency
      }
      else {
        this.set_frequency = false;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0;
      }
      if (initObj.hasOwnProperty('raw_string')) {
        this.raw_string = initObj.raw_string
      }
      else {
        this.raw_string = false;
      }
      if (initObj.hasOwnProperty('raw')) {
        this.raw = initObj.raw
      }
      else {
        this.raw = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensor_user_command
    // Serialize message field [calibrate]
    bufferOffset = _serializer.bool(obj.calibrate, buffer, bufferOffset);
    // Serialize message field [setepoch]
    bufferOffset = _serializer.bool(obj.setepoch, buffer, bufferOffset);
    // Serialize message field [epoch_sec]
    bufferOffset = _serializer.string(obj.epoch_sec, buffer, bufferOffset);
    // Serialize message field [epoch_msec]
    bufferOffset = _serializer.string(obj.epoch_msec, buffer, bufferOffset);
    // Serialize message field [diagnosis_request]
    bufferOffset = _serializer.bool(obj.diagnosis_request, buffer, bufferOffset);
    // Serialize message field [set_frequency]
    bufferOffset = _serializer.bool(obj.set_frequency, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.int8(obj.frequency, buffer, bufferOffset);
    // Serialize message field [raw_string]
    bufferOffset = _serializer.bool(obj.raw_string, buffer, bufferOffset);
    // Serialize message field [raw]
    bufferOffset = _serializer.string(obj.raw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensor_user_command
    let len;
    let data = new sensor_user_command(null);
    // Deserialize message field [calibrate]
    data.calibrate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [setepoch]
    data.setepoch = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [epoch_sec]
    data.epoch_sec = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [epoch_msec]
    data.epoch_msec = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [diagnosis_request]
    data.diagnosis_request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_frequency]
    data.set_frequency = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [raw_string]
    data.raw_string = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw]
    data.raw = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.epoch_sec);
    length += _getByteLength(object.epoch_msec);
    length += _getByteLength(object.raw);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/sensor_user_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07453c0ab726c6f2c228b4f0e11711ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool calibrate
    bool setepoch
    string epoch_sec
    string epoch_msec
    bool diagnosis_request
    bool set_frequency
    int8 frequency
    bool raw_string
    string raw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensor_user_command(null);
    if (msg.calibrate !== undefined) {
      resolved.calibrate = msg.calibrate;
    }
    else {
      resolved.calibrate = false
    }

    if (msg.setepoch !== undefined) {
      resolved.setepoch = msg.setepoch;
    }
    else {
      resolved.setepoch = false
    }

    if (msg.epoch_sec !== undefined) {
      resolved.epoch_sec = msg.epoch_sec;
    }
    else {
      resolved.epoch_sec = ''
    }

    if (msg.epoch_msec !== undefined) {
      resolved.epoch_msec = msg.epoch_msec;
    }
    else {
      resolved.epoch_msec = ''
    }

    if (msg.diagnosis_request !== undefined) {
      resolved.diagnosis_request = msg.diagnosis_request;
    }
    else {
      resolved.diagnosis_request = false
    }

    if (msg.set_frequency !== undefined) {
      resolved.set_frequency = msg.set_frequency;
    }
    else {
      resolved.set_frequency = false
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0
    }

    if (msg.raw_string !== undefined) {
      resolved.raw_string = msg.raw_string;
    }
    else {
      resolved.raw_string = false
    }

    if (msg.raw !== undefined) {
      resolved.raw = msg.raw;
    }
    else {
      resolved.raw = ''
    }

    return resolved;
    }
};

module.exports = sensor_user_command;
