// Auto-generated. Do not edit!

// (in-package seed_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LoneMainBoard = require('./LoneMainBoard.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AllMainBoards {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.length = null;
      this.boards = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('boards')) {
        this.boards = initObj.boards
      }
      else {
        this.boards = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllMainBoards
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [boards]
    // Serialize the length for message field [boards]
    bufferOffset = _serializer.uint32(obj.boards.length, buffer, bufferOffset);
    obj.boards.forEach((val) => {
      bufferOffset = LoneMainBoard.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllMainBoards
    let len;
    let data = new AllMainBoards(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [boards]
    // Deserialize array length for message field [boards]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boards = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boards[i] = LoneMainBoard.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.boards.forEach((val) => {
      length += LoneMainBoard.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seed_robotics/AllMainBoards';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abd5fb0a6ebd19a335f879c68cdd135f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 length
    seed_robotics/LoneMainBoard[] boards
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: seed_robotics/LoneMainBoard
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
    const resolved = new AllMainBoards(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.boards !== undefined) {
      resolved.boards = new Array(msg.boards.length);
      for (let i = 0; i < resolved.boards.length; ++i) {
        resolved.boards[i] = LoneMainBoard.Resolve(msg.boards[i]);
      }
    }
    else {
      resolved.boards = []
    }

    return resolved;
    }
};

module.exports = AllMainBoards;
