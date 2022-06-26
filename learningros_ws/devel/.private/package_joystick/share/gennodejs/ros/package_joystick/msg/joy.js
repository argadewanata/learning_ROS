// Auto-generated. Do not edit!

// (in-package package_joystick.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class joy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posisi_y = null;
    }
    else {
      if (initObj.hasOwnProperty('posisi_y')) {
        this.posisi_y = initObj.posisi_y
      }
      else {
        this.posisi_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joy
    // Serialize message field [posisi_y]
    bufferOffset = _serializer.int16(obj.posisi_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joy
    let len;
    let data = new joy(null);
    // Deserialize message field [posisi_y]
    data.posisi_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'package_joystick/joy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2ddef0f714ebbf16e9d317effdce83d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 posisi_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joy(null);
    if (msg.posisi_y !== undefined) {
      resolved.posisi_y = msg.posisi_y;
    }
    else {
      resolved.posisi_y = 0
    }

    return resolved;
    }
};

module.exports = joy;
