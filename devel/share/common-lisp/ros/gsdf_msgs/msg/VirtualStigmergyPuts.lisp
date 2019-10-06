; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude VirtualStigmergyPuts.msg.html

(cl:defclass <VirtualStigmergyPuts> (roslisp-msg-protocol:ros-message)
  ((vstig_id
    :reader vstig_id
    :initarg :vstig_id
    :type cl:integer
    :initform 0)
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lamport_clock
    :reader lamport_clock
    :initarg :lamport_clock
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass VirtualStigmergyPuts (<VirtualStigmergyPuts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualStigmergyPuts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualStigmergyPuts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<VirtualStigmergyPuts> is deprecated: use gsdf_msgs-msg:VirtualStigmergyPuts instead.")))

(cl:ensure-generic-function 'vstig_id-val :lambda-list '(m))
(cl:defmethod vstig_id-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:vstig_id-val is deprecated.  Use gsdf_msgs-msg:vstig_id instead.")
  (vstig_id m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:key-val is deprecated.  Use gsdf_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:value-val is deprecated.  Use gsdf_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'lamport_clock-val :lambda-list '(m))
(cl:defmethod lamport_clock-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:lamport_clock-val is deprecated.  Use gsdf_msgs-msg:lamport_clock instead.")
  (lamport_clock m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:robot_id-val is deprecated.  Use gsdf_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <VirtualStigmergyPuts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:prob-val is deprecated.  Use gsdf_msgs-msg:prob instead.")
  (prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualStigmergyPuts>) ostream)
  "Serializes a message object of type '<VirtualStigmergyPuts>"
  (cl:let* ((signed (cl:slot-value msg 'vstig_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'value))
  (cl:let* ((signed (cl:slot-value msg 'lamport_clock)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualStigmergyPuts>) istream)
  "Deserializes a message object of type '<VirtualStigmergyPuts>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vstig_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lamport_clock) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualStigmergyPuts>)))
  "Returns string type for a message object of type '<VirtualStigmergyPuts>"
  "gsdf_msgs/VirtualStigmergyPuts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualStigmergyPuts)))
  "Returns string type for a message object of type 'VirtualStigmergyPuts"
  "gsdf_msgs/VirtualStigmergyPuts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualStigmergyPuts>)))
  "Returns md5sum for a message object of type '<VirtualStigmergyPuts>"
  "6d15d0ec52ccefdcd3684a495dca041b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualStigmergyPuts)))
  "Returns md5sum for a message object of type 'VirtualStigmergyPuts"
  "6d15d0ec52ccefdcd3684a495dca041b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualStigmergyPuts>)))
  "Returns full string definition for message of type '<VirtualStigmergyPuts>"
  (cl:format cl:nil "int32 vstig_id~%string key~%uint8[] value~%int32 lamport_clock~%int32 robot_id~%float32 prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualStigmergyPuts)))
  "Returns full string definition for message of type 'VirtualStigmergyPuts"
  (cl:format cl:nil "int32 vstig_id~%string key~%uint8[] value~%int32 lamport_clock~%int32 robot_id~%float32 prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualStigmergyPuts>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualStigmergyPuts>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualStigmergyPuts
    (cl:cons ':vstig_id (vstig_id msg))
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
    (cl:cons ':lamport_clock (lamport_clock msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':prob (prob msg))
))
