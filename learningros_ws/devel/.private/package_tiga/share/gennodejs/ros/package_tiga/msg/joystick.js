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

class joystick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posisi_x = null;
      this.posisi_y = null;
    }
    else {
      if (initObj.hasOwnProperty('posisi_x')) {
        this.posisi_x = initObj.posisi_x
      }
      else {
        this.posisi_x = 0;
      }
      if (initObj.hasOwnProperty('posisi_y')) {
        this.posisi_y = initObj.posisi_y
      }
      else {
        this.posisi_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joystick
    // Serialize message field [posisi_x]
    bufferOffset = _serializer.int16(obj.posisi_x, buffer, bufferOffset);
    // Serialize message field [posisi_y]
    bufferOffset = _serializer.int16(obj.posisi_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joystick
    let len;
    let data = new joystick(null);
    // Deserialize message field [posisi_x]
    data.posisi_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [posisi_y]
    data.posisi_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'package_tiga/joystick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6960680023b8cf73c32d80881e01cc9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 posisi_x
    int16 posisi_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joystick(null);
    if (msg.posisi_x !== undefined) {
      resolved.posisi_x = msg.posisi_x;
    }
    else {
      resolved.posisi_x = 0
    }

    if (msg.posisi_y !== undefined) {
      resolved.posisi_y = msg.posisi_y;
    }
    else {
      resolved.posisi_y = 0
    }

    return resolved;
    }
};

module.exports = joystick;
