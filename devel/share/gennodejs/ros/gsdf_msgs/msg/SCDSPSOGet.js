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

class SCDSPSOGet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.pos = null;
      this.val = null;
      this.robot_id = null;
      this.gen = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0.0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('gen')) {
        this.gen = initObj.gen
      }
      else {
        this.gen = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SCDSPSOGet
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [val]
    bufferOffset = _serializer.float32(obj.val, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [gen]
    bufferOffset = _serializer.int32(obj.gen, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int32(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SCDSPSOGet
    let len;
    let data = new SCDSPSOGet(null);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [val]
    data.val = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gen]
    data.gen = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    length += 4 * object.pos.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/SCDSPSOGet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4df795d490b81d6e66669b482531c966';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string key
    float32[] pos
    float32 val
    int32 robot_id
    int32 gen
    int32 timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SCDSPSOGet(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0.0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.gen !== undefined) {
      resolved.gen = msg.gen;
    }
    else {
      resolved.gen = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    return resolved;
    }
};

module.exports = SCDSPSOGet;
