// Auto-generated. Do not edit!

// (in-package atags.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AprilTag = require('./AprilTag.js');

//-----------------------------------------------------------

class AprilTagList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.april_tags = null;
    }
    else {
      if (initObj.hasOwnProperty('april_tags')) {
        this.april_tags = initObj.april_tags
      }
      else {
        this.april_tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AprilTagList
    // Serialize message field [april_tags]
    // Serialize the length for message field [april_tags]
    bufferOffset = _serializer.uint32(obj.april_tags.length, buffer, bufferOffset);
    obj.april_tags.forEach((val) => {
      bufferOffset = AprilTag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AprilTagList
    let len;
    let data = new AprilTagList(null);
    // Deserialize message field [april_tags]
    // Deserialize array length for message field [april_tags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.april_tags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.april_tags[i] = AprilTag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 64 * object.april_tags.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atags/AprilTagList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '213573b69d7bd9ad75dae95f24eb462e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AprilTag[] april_tags
    ================================================================================
    MSG: atags/AprilTag
    uint32 	id
    uint32 	hamming_distance
    float64 distance
    float64 x
    float64 y
    float64 z
    float64 yaw
    float64 pitch
    float64 roll
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AprilTagList(null);
    if (msg.april_tags !== undefined) {
      resolved.april_tags = new Array(msg.april_tags.length);
      for (let i = 0; i < resolved.april_tags.length; ++i) {
        resolved.april_tags[i] = AprilTag.Resolve(msg.april_tags[i]);
      }
    }
    else {
      resolved.april_tags = []
    }

    return resolved;
    }
};

module.exports = AprilTagList;
