; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude NeighborBroadcastKeyValue.msg.html

(cl:defclass <NeighborBroadcastKeyValue> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass NeighborBroadcastKeyValue (<NeighborBroadcastKeyValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeighborBroadcastKeyValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeighborBroadcastKeyValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<NeighborBroadcastKeyValue> is deprecated: use gsdf_msgs-msg:NeighborBroadcastKeyValue instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <NeighborBroadcastKeyValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:key-val is deprecated.  Use gsdf_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NeighborBroadcastKeyValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:value-val is deprecated.  Use gsdf_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeighborBroadcastKeyValue>) ostream)
  "Serializes a message object of type '<NeighborBroadcastKeyValue>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeighborBroadcastKeyValue>) istream)
  "Deserializes a message object of type '<NeighborBroadcastKeyValue>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeighborBroadcastKeyValue>)))
  "Returns string type for a message object of type '<NeighborBroadcastKeyValue>"
  "gsdf_msgs/NeighborBroadcastKeyValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeighborBroadcastKeyValue)))
  "Returns string type for a message object of type 'NeighborBroadcastKeyValue"
  "gsdf_msgs/NeighborBroadcastKeyValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeighborBroadcastKeyValue>)))
  "Returns md5sum for a message object of type '<NeighborBroadcastKeyValue>"
  "1657889729a0518095a6771ffa7222a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeighborBroadcastKeyValue)))
  "Returns md5sum for a message object of type 'NeighborBroadcastKeyValue"
  "1657889729a0518095a6771ffa7222a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeighborBroadcastKeyValue>)))
  "Returns full string definition for message of type '<NeighborBroadcastKeyValue>"
  (cl:format cl:nil "string key~%uint8[] value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeighborBroadcastKeyValue)))
  "Returns full string definition for message of type 'NeighborBroadcastKeyValue"
  (cl:format cl:nil "string key~%uint8[] value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeighborBroadcastKeyValue>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeighborBroadcastKeyValue>))
  "Converts a ROS message object to a list"
  (cl:list 'NeighborBroadcastKeyValue
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))
