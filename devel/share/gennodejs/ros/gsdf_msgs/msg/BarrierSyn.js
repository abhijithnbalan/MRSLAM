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

class BarrierSyn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BarrierSyn
    // Serialize message field [s]
    bufferOffset = _serializer.string(obj.s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BarrierSyn
    let len;
    let data = new BarrierSyn(null);
    // Deserialize message field [s]
    data.s = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.s.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/BarrierSyn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81af3411577d82a6786258523fc891ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BarrierSyn(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = ''
    }

    return resolved;
    }
};

module.exports = BarrierSyn;
