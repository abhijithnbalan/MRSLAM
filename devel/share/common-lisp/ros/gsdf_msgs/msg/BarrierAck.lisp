; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude BarrierAck.msg.html

(cl:defclass <BarrierAck> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass BarrierAck (<BarrierAck>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BarrierAck>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BarrierAck)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<BarrierAck> is deprecated: use gsdf_msgs-msg:BarrierAck instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <BarrierAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:robot_id-val is deprecated.  Use gsdf_msgs-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BarrierAck>) ostream)
  "Serializes a message object of type '<BarrierAck>"
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BarrierAck>) istream)
  "Deserializes a message object of type '<BarrierAck>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BarrierAck>)))
  "Returns string type for a message object of type '<BarrierAck>"
  "gsdf_msgs/BarrierAck")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BarrierAck)))
  "Returns string type for a message object of type 'BarrierAck"
  "gsdf_msgs/BarrierAck")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BarrierAck>)))
  "Returns md5sum for a message object of type '<BarrierAck>"
  "91b3babccc3ad4274601f80c372a0375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BarrierAck)))
  "Returns md5sum for a message object of type 'BarrierAck"
  "91b3babccc3ad4274601f80c372a0375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BarrierAck>)))
  "Returns full string definition for message of type '<BarrierAck>"
  (cl:format cl:nil "int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BarrierAck)))
  "Returns full string definition for message of type 'BarrierAck"
  (cl:format cl:nil "int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BarrierAck>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BarrierAck>))
  "Converts a ROS message object to a list"
  (cl:list 'BarrierAck
    (cl:cons ':robot_id (robot_id msg))
))
