; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude CommContent.msg.html

(cl:defclass <CommContent> (roslisp-msg-protocol:ros-message)
  ((buf
    :reader buf
    :initarg :buf
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CommContent (<CommContent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommContent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommContent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<CommContent> is deprecated: use gsdf_msgs-msg:CommContent instead.")))

(cl:ensure-generic-function 'buf-val :lambda-list '(m))
(cl:defmethod buf-val ((m <CommContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:buf-val is deprecated.  Use gsdf_msgs-msg:buf instead.")
  (buf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommContent>) ostream)
  "Serializes a message object of type '<CommContent>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'buf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommContent>) istream)
  "Deserializes a message object of type '<CommContent>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buf) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buf)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommContent>)))
  "Returns string type for a message object of type '<CommContent>"
  "gsdf_msgs/CommContent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommContent)))
  "Returns string type for a message object of type 'CommContent"
  "gsdf_msgs/CommContent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommContent>)))
  "Returns md5sum for a message object of type '<CommContent>"
  "4f7b5949e76f86d01e96b0e33ba9b5e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommContent)))
  "Returns md5sum for a message object of type 'CommContent"
  "4f7b5949e76f86d01e96b0e33ba9b5e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommContent>)))
  "Returns full string definition for message of type '<CommContent>"
  (cl:format cl:nil "uint8[] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommContent)))
  "Returns full string definition for message of type 'CommContent"
  (cl:format cl:nil "uint8[] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommContent>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buf) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommContent>))
  "Converts a ROS message object to a list"
  (cl:list 'CommContent
    (cl:cons ':buf (buf msg))
))
