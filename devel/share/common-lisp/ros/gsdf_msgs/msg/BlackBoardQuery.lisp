; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude BlackBoardQuery.msg.html

(cl:defclass <BlackBoardQuery> (roslisp-msg-protocol:ros-message)
  ((bb_id
    :reader bb_id
    :initarg :bb_id
    :type cl:integer
    :initform 0)
   (on_robot_id
    :reader on_robot_id
    :initarg :on_robot_id
    :type cl:integer
    :initform 0)
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass BlackBoardQuery (<BlackBoardQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlackBoardQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlackBoardQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<BlackBoardQuery> is deprecated: use gsdf_msgs-msg:BlackBoardQuery instead.")))

(cl:ensure-generic-function 'bb_id-val :lambda-list '(m))
(cl:defmethod bb_id-val ((m <BlackBoardQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:bb_id-val is deprecated.  Use gsdf_msgs-msg:bb_id instead.")
  (bb_id m))

(cl:ensure-generic-function 'on_robot_id-val :lambda-list '(m))
(cl:defmethod on_robot_id-val ((m <BlackBoardQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:on_robot_id-val is deprecated.  Use gsdf_msgs-msg:on_robot_id instead.")
  (on_robot_id m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <BlackBoardQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:key-val is deprecated.  Use gsdf_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <BlackBoardQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:timestamp-val is deprecated.  Use gsdf_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <BlackBoardQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:robot_id-val is deprecated.  Use gsdf_msgs-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlackBoardQuery>) ostream)
  "Serializes a message object of type '<BlackBoardQuery>"
  (cl:let* ((signed (cl:slot-value msg 'bb_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'on_robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlackBoardQuery>) istream)
  "Deserializes a message object of type '<BlackBoardQuery>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bb_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'on_robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlackBoardQuery>)))
  "Returns string type for a message object of type '<BlackBoardQuery>"
  "gsdf_msgs/BlackBoardQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlackBoardQuery)))
  "Returns string type for a message object of type 'BlackBoardQuery"
  "gsdf_msgs/BlackBoardQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlackBoardQuery>)))
  "Returns md5sum for a message object of type '<BlackBoardQuery>"
  "e75d8a9b1cec0501e53c7955617b4403")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlackBoardQuery)))
  "Returns md5sum for a message object of type 'BlackBoardQuery"
  "e75d8a9b1cec0501e53c7955617b4403")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlackBoardQuery>)))
  "Returns full string definition for message of type '<BlackBoardQuery>"
  (cl:format cl:nil "int32 bb_id~%int32 on_robot_id~%string key~%time timestamp~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlackBoardQuery)))
  "Returns full string definition for message of type 'BlackBoardQuery"
  (cl:format cl:nil "int32 bb_id~%int32 on_robot_id~%string key~%time timestamp~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlackBoardQuery>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'key))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlackBoardQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'BlackBoardQuery
    (cl:cons ':bb_id (bb_id msg))
    (cl:cons ':on_robot_id (on_robot_id msg))
    (cl:cons ':key (key msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':robot_id (robot_id msg))
))
