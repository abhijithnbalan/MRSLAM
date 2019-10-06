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

class VirtualStigmergyPuts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vstig_id = null;
      this.key = null;
      this.value = null;
      this.lamport_clock = null;
      this.robot_id = null;
      this.prob = null;
    }
    else {
      if (initObj.hasOwnProperty('vstig_id')) {
        this.vstig_id = initObj.vstig_id
      }
      else {
        this.vstig_id = 0;
      }
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
      if (initObj.hasOwnProperty('lamport_clock')) {
        this.lamport_clock = initObj.lamport_clock
      }
      else {
        this.lamport_clock = 0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VirtualStigmergyPuts
    // Serialize message field [vstig_id]
    bufferOffset = _serializer.int32(obj.vstig_id, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _arraySerializer.uint8(obj.value, buffer, bufferOffset, null);
    // Serialize message field [lamport_clock]
    bufferOffset = _serializer.int32(obj.lamport_clock, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualStigmergyPuts
    let len;
    let data = new VirtualStigmergyPuts(null);
    // Deserialize message field [vstig_id]
    data.vstig_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lamport_clock]
    data.lamport_clock = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    length += object.value.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/VirtualStigmergyPuts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d15d0ec52ccefdcd3684a495dca041b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 vstig_id
    string key
    uint8[] value
    int32 lamport_clock
    int32 robot_id
    float32 prob
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VirtualStigmergyPuts(null);
    if (msg.vstig_id !== undefined) {
      resolved.vstig_id = msg.vstig_id;
    }
    else {
      resolved.vstig_id = 0
    }

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

    if (msg.lamport_clock !== undefined) {
      resolved.lamport_clock = msg.lamport_clock;
    }
    else {
      resolved.lamport_clock = 0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    return resolved;
    }
};

module.exports = VirtualStigmergyPuts;
