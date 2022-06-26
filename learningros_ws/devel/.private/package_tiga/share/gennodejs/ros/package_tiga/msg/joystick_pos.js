// Auto-generated. Do not edit!

// (in-package package_tiga.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class joystick_pos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xFixMap = null;
      this.yFixMap = null;
    }
    else {
      if (initObj.hasOwnProperty('xFixMap')) {
        this.xFixMap = initObj.xFixMap
      }
      else {
        this.xFixMap = 0;
      }
      if (initObj.hasOwnProperty('yFixMap')) {
        this.yFixMap = initObj.yFixMap
      }
      else {
        this.yFixMap = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joystick_pos
    // Serialize message field [xFixMap]
    bufferOffset = _serializer.int16(obj.xFixMap, buffer, bufferOffset);
    // Serialize message field [yFixMap]
    bufferOffset = _serializer.int16(obj.yFixMap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joystick_pos
    let len;
    let data = new joystick_pos(null);
    // Deserialize message field [xFixMap]
    data.xFixMap = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [yFixMap]
    data.yFixMap = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'package_tiga/joystick_pos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0619210a7cf29ef0b55e827581daed4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 xFixMap
    int16 yFixMap
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joystick_pos(null);
    if (msg.xFixMap !== undefined) {
      resolved.xFixMap = msg.xFixMap;
    }
    else {
      resolved.xFixMap = 0
    }

    if (msg.yFixMap !== undefined) {
      resolved.yFixMap = msg.yFixMap;
    }
    else {
      resolved.yFixMap = 0
    }

    return resolved;
    }
};

module.exports = joystick_pos;
