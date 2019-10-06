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

class SwarmList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.swarm_list = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('swarm_list')) {
        this.swarm_list = initObj.swarm_list
      }
      else {
        this.swarm_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwarmList
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [swarm_list]
    bufferOffset = _arraySerializer.int32(obj.swarm_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwarmList
    let len;
    let data = new SwarmList(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [swarm_list]
    data.swarm_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.swarm_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gsdf_msgs/SwarmList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f621a20b31f30285c93ed9d370693ac7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 robot_id
    int32[] swarm_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwarmList(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.swarm_list !== undefined) {
      resolved.swarm_list = msg.swarm_list;
    }
    else {
      resolved.swarm_list = []
    }

    return resolved;
    }
};

module.exports = SwarmList;
