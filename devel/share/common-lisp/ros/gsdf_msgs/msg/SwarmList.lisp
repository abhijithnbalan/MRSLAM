; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude SwarmList.msg.html

(cl:defclass <SwarmList> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (swarm_list
    :reader swarm_list
    :initarg :swarm_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SwarmList (<SwarmList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwarmList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwarmList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<SwarmList> is deprecated: use gsdf_msgs-msg:SwarmList instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <SwarmList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:robot_id-val is deprecated.  Use gsdf_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'swarm_list-val :lambda-list '(m))
(cl:defmethod swarm_list-val ((m <SwarmList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:swarm_list-val is deprecated.  Use gsdf_msgs-msg:swarm_list instead.")
  (swarm_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwarmList>) ostream)
  "Serializes a message object of type '<SwarmList>"
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'swarm_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'swarm_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwarmList>) istream)
  "Deserializes a message object of type '<SwarmList>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'swarm_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'swarm_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwarmList>)))
  "Returns string type for a message object of type '<SwarmList>"
  "gsdf_msgs/SwarmList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwarmList)))
  "Returns string type for a message object of type 'SwarmList"
  "gsdf_msgs/SwarmList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwarmList>)))
  "Returns md5sum for a message object of type '<SwarmList>"
  "f621a20b31f30285c93ed9d370693ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwarmList)))
  "Returns md5sum for a message object of type 'SwarmList"
  "f621a20b31f30285c93ed9d370693ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwarmList>)))
  "Returns full string definition for message of type '<SwarmList>"
  (cl:format cl:nil "int32 robot_id~%int32[] swarm_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwarmList)))
  "Returns full string definition for message of type 'SwarmList"
  (cl:format cl:nil "int32 robot_id~%int32[] swarm_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwarmList>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'swarm_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwarmList>))
  "Converts a ROS message object to a list"
  (cl:list 'SwarmList
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':swarm_list (swarm_list msg))
))
