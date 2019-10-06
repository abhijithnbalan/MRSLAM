// Auto-generated. Do not edit!

// (in-package gsdf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.type = null;
      this.data_len = null;
      this.version = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('data_len')) {
        this.data_len = initObj.data_len
      }
      else {
        this.data_len = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommHeader
    // Serialize message field [source]
    bufferOffset = _serializer.int16(obj.source, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [data_len]
    bufferOffset = _serializer.int16(obj.data_len, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.int8(obj.version, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.int16(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommHeader
    let len;
    let data = new CommHeader(null);
    // Deserialize message field [source]
    data.source = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [data_len]
    data.data_len = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/CommHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d7273660b11e3521033af5d52ed4460';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 source
    int8 type
    int16 data_len
    int8 version
    int16 checksum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommHeader(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.data_len !== undefined) {
      resolved.data_len = msg.data_len;
    }
    else {
      resolved.data_len = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = CommHeader;
