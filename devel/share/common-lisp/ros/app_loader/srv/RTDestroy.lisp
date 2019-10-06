; Auto-generated. Do not edit!


(cl:in-package app_loader-srv)


;//! \htmlinclude RTDestroy-request.msg.html

(cl:defclass <RTDestroy-request> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RTDestroy-request (<RTDestroy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTDestroy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTDestroy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name app_loader-srv:<RTDestroy-request> is deprecated: use app_loader-srv:RTDestroy-request instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <RTDestroy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader app_loader-srv:code-val is deprecated.  Use app_loader-srv:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTDestroy-request>) ostream)
  "Serializes a message object of type '<RTDestroy-request>"
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTDestroy-request>) istream)
  "Deserializes a message object of type '<RTDestroy-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTDestroy-request>)))
  "Returns string type for a service object of type '<RTDestroy-request>"
  "app_loader/RTDestroyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTDestroy-request)))
  "Returns string type for a service object of type 'RTDestroy-request"
  "app_loader/RTDestroyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTDestroy-request>)))
  "Returns md5sum for a message object of type '<RTDestroy-request>"
  "36405beac40f6723e71d2520ae768ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTDestroy-request)))
  "Returns md5sum for a message object of type 'RTDestroy-request"
  "36405beac40f6723e71d2520ae768ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTDestroy-request>)))
  "Returns full string definition for message of type '<RTDestroy-request>"
  (cl:format cl:nil "int8 code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTDestroy-request)))
  "Returns full string definition for message of type 'RTDestroy-request"
  (cl:format cl:nil "int8 code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTDestroy-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTDestroy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RTDestroy-request
    (cl:cons ':code (code msg))
))
;//! \htmlinclude RTDestroy-response.msg.html

(cl:defclass <RTDestroy-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RTDestroy-response (<RTDestroy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTDestroy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTDestroy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name app_loader-srv:<RTDestroy-response> is deprecated: use app_loader-srv:RTDestroy-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RTDestroy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader app_loader-srv:success-val is deprecated.  Use app_loader-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTDestroy-response>) ostream)
  "Serializes a message object of type '<RTDestroy-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTDestroy-response>) istream)
  "Deserializes a message object of type '<RTDestroy-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTDestroy-response>)))
  "Returns string type for a service object of type '<RTDestroy-response>"
  "app_loader/RTDestroyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTDestroy-response)))
  "Returns string type for a service object of type 'RTDestroy-response"
  "app_loader/RTDestroyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTDestroy-response>)))
  "Returns md5sum for a message object of type '<RTDestroy-response>"
  "36405beac40f6723e71d2520ae768ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTDestroy-response)))
  "Returns md5sum for a message object of type 'RTDestroy-response"
  "36405beac40f6723e71d2520ae768ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTDestroy-response>)))
  "Returns full string definition for message of type '<RTDestroy-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTDestroy-response)))
  "Returns full string definition for message of type 'RTDestroy-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTDestroy-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTDestroy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RTDestroy-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RTDestroy)))
  'RTDestroy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RTDestroy)))
  'RTDestroy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTDestroy)))
  "Returns string type for a service object of type '<RTDestroy>"
  "app_loader/RTDestroy")