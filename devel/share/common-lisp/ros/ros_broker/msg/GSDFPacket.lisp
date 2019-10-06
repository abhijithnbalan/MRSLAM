; Auto-generated. Do not edit!


(cl:in-package ros_broker-msg)


;//! \htmlinclude GSDFPacket.msg.html

(cl:defclass <GSDFPacket> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GSDFPacket (<GSDFPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GSDFPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GSDFPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_broker-msg:<GSDFPacket> is deprecated: use ros_broker-msg:GSDFPacket instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GSDFPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_broker-msg:data-val is deprecated.  Use ros_broker-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GSDFPacket>) ostream)
  "Serializes a message object of type '<GSDFPacket>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GSDFPacket>) istream)
  "Deserializes a message object of type '<GSDFPacket>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GSDFPacket>)))
  "Returns string type for a message object of type '<GSDFPacket>"
  "ros_broker/GSDFPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GSDFPacket)))
  "Returns string type for a message object of type 'GSDFPacket"
  "ros_broker/GSDFPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GSDFPacket>)))
  "Returns md5sum for a message object of type '<GSDFPacket>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GSDFPacket)))
  "Returns md5sum for a message object of type 'GSDFPacket"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GSDFPacket>)))
  "Returns full string definition for message of type '<GSDFPacket>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GSDFPacket)))
  "Returns full string definition for message of type 'GSDFPacket"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GSDFPacket>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GSDFPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'GSDFPacket
    (cl:cons ':data (data msg))
))
