; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude CommPacket.msg.html

(cl:defclass <CommPacket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type gsdf_msgs-msg:CommHeader
    :initform (cl:make-instance 'gsdf_msgs-msg:CommHeader))
   (content
    :reader content
    :initarg :content
    :type gsdf_msgs-msg:CommContent
    :initform (cl:make-instance 'gsdf_msgs-msg:CommContent)))
)

(cl:defclass CommPacket (<CommPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<CommPacket> is deprecated: use gsdf_msgs-msg:CommPacket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:header-val is deprecated.  Use gsdf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <CommPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:content-val is deprecated.  Use gsdf_msgs-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommPacket>) ostream)
  "Serializes a message object of type '<CommPacket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'content) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommPacket>) istream)
  "Deserializes a message object of type '<CommPacket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'content) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommPacket>)))
  "Returns string type for a message object of type '<CommPacket>"
  "gsdf_msgs/CommPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommPacket)))
  "Returns string type for a message object of type 'CommPacket"
  "gsdf_msgs/CommPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommPacket>)))
  "Returns md5sum for a message object of type '<CommPacket>"
  "46d64b663b4515e9459bdd4c8023f462")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommPacket)))
  "Returns md5sum for a message object of type 'CommPacket"
  "46d64b663b4515e9459bdd4c8023f462")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommPacket>)))
  "Returns full string definition for message of type '<CommPacket>"
  (cl:format cl:nil "CommHeader header~%CommContent content~%~%================================================================================~%MSG: gsdf_msgs/CommHeader~%int16 source~%int8 type~%int16 data_len~%int8 version~%int16 checksum~%~%================================================================================~%MSG: gsdf_msgs/CommContent~%uint8[] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommPacket)))
  "Returns full string definition for message of type 'CommPacket"
  (cl:format cl:nil "CommHeader header~%CommContent content~%~%================================================================================~%MSG: gsdf_msgs/CommHeader~%int16 source~%int8 type~%int16 data_len~%int8 version~%int16 checksum~%~%================================================================================~%MSG: gsdf_msgs/CommContent~%uint8[] buf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommPacket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'CommPacket
    (cl:cons ':header (header msg))
    (cl:cons ':content (content msg))
))
