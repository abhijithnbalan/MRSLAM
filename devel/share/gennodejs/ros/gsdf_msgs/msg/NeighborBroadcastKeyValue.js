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

class NeighborBroadcastKeyValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeighborBroadcastKeyValue
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _arraySerializer.uint8(obj.value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeighborBroadcastKeyValue
    let len;
    let data = new NeighborBroadcastKeyValue(null);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    length += object.value.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/NeighborBroadcastKeyValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1657889729a0518095a6771ffa7222a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string key
    uint8[] value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeighborBroadcastKeyValue(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = []
    }

    return resolved;
    }
};

module.exports = NeighborBroadcastKeyValue;
