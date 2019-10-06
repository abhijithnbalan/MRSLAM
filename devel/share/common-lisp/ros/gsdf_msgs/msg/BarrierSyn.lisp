; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude BarrierSyn.msg.html

(cl:defclass <BarrierSyn> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform ""))
)

(cl:defclass BarrierSyn (<BarrierSyn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BarrierSyn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BarrierSyn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<BarrierSyn> is deprecated: use gsdf_msgs-msg:BarrierSyn instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <BarrierSyn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:s-val is deprecated.  Use gsdf_msgs-msg:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BarrierSyn>) ostream)
  "Serializes a message object of type '<BarrierSyn>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BarrierSyn>) istream)
  "Deserializes a message object of type '<BarrierSyn>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 's) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 's) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BarrierSyn>)))
  "Returns string type for a message object of type '<BarrierSyn>"
  "gsdf_msgs/BarrierSyn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BarrierSyn)))
  "Returns string type for a message object of type 'BarrierSyn"
  "gsdf_msgs/BarrierSyn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BarrierSyn>)))
  "Returns md5sum for a message object of type '<BarrierSyn>"
  "81af3411577d82a6786258523fc891ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BarrierSyn)))
  "Returns md5sum for a message object of type 'BarrierSyn"
  "81af3411577d82a6786258523fc891ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BarrierSyn>)))
  "Returns full string definition for message of type '<BarrierSyn>"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BarrierSyn)))
  "Returns full string definition for message of type 'BarrierSyn"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BarrierSyn>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BarrierSyn>))
  "Converts a ROS message object to a list"
  (cl:list 'BarrierSyn
    (cl:cons ':s (s msg))
))
