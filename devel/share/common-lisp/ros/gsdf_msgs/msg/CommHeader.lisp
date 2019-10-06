; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude CommHeader.msg.html

(cl:defclass <CommHeader> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (data_len
    :reader data_len
    :initarg :data_len
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommHeader (<CommHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<CommHeader> is deprecated: use gsdf_msgs-msg:CommHeader instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <CommHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:source-val is deprecated.  Use gsdf_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CommHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:type-val is deprecated.  Use gsdf_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data_len-val :lambda-list '(m))
(cl:defmethod data_len-val ((m <CommHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:data_len-val is deprecated.  Use gsdf_msgs-msg:data_len instead.")
  (data_len m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CommHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:version-val is deprecated.  Use gsdf_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <CommHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:checksum-val is deprecated.  Use gsdf_msgs-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommHeader>) ostream)
  "Serializes a message object of type '<CommHeader>"
  (cl:let* ((signed (cl:slot-value msg 'source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data_len)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommHeader>) istream)
  "Deserializes a message object of type '<CommHeader>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_len) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'checksum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommHeader>)))
  "Returns string type for a message object of type '<CommHeader>"
  "gsdf_msgs/CommHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommHeader)))
  "Returns string type for a message object of type 'CommHeader"
  "gsdf_msgs/CommHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommHeader>)))
  "Returns md5sum for a message object of type '<CommHeader>"
  "9d7273660b11e3521033af5d52ed4460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommHeader)))
  "Returns md5sum for a message object of type 'CommHeader"
  "9d7273660b11e3521033af5d52ed4460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommHeader>)))
  "Returns full string definition for message of type '<CommHeader>"
  (cl:format cl:nil "int16 source~%int8 type~%int16 data_len~%int8 version~%int16 checksum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommHeader)))
  "Returns full string definition for message of type 'CommHeader"
  (cl:format cl:nil "int16 source~%int8 type~%int16 data_len~%int8 version~%int16 checksum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommHeader>))
  (cl:+ 0
     2
     1
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'CommHeader
    (cl:cons ':source (source msg))
    (cl:cons ':type (type msg))
    (cl:cons ':data_len (data_len msg))
    (cl:cons ':version (version msg))
    (cl:cons ':checksum (checksum msg))
))
