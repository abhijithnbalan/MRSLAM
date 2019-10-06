// Auto-generated. Do not edit!

// (in-package gsdf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommHeader = require('./CommHeader.js');
let CommContent = require('./CommContent.js');

//-----------------------------------------------------------

class CommPacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CommHeader();
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = new CommContent();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommPacket
    // Serialize message field [header]
    bufferOffset = CommHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = CommContent.serialize(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommPacket
    let len;
    let data = new CommPacket(null);
    // Deserialize message field [header]
    data.header = CommHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = CommContent.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CommContent.getMessageSize(object.content);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/CommPacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46d64b663b4515e9459bdd4c8023f462';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CommHeader header
    CommContent content
    
    ================================================================================
    MSG: gsdf_msgs/CommHeader
    int16 source
    int8 type
    int16 data_len
    int8 version
    int16 checksum
    
    ================================================================================
    MSG: gsdf_msgs/CommContent
    uint8[] buf
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommPacket(null);
    if (msg.header !== undefined) {
      resolved.header = CommHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CommHeader()
    }

    if (msg.content !== undefined) {
      resolved.content = CommContent.Resolve(msg.content)
    }
    else {
      resolved.content = new CommContent()
    }

    return resolved;
    }
};

module.exports = CommPacket;
