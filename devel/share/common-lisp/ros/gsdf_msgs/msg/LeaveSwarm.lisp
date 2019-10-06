; Auto-generated. Do not edit!


(cl:in-package gsdf_msgs-msg)


;//! \htmlinclude LeaveSwarm.msg.html

(cl:defclass <LeaveSwarm> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (swarm_id
    :reader swarm_id
    :initarg :swarm_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LeaveSwarm (<LeaveSwarm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeaveSwarm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeaveSwarm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gsdf_msgs-msg:<LeaveSwarm> is deprecated: use gsdf_msgs-msg:LeaveSwarm instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <LeaveSwarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:robot_id-val is deprecated.  Use gsdf_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'swarm_id-val :lambda-list '(m))
(cl:defmethod swarm_id-val ((m <LeaveSwarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gsdf_msgs-msg:swarm_id-val is deprecated.  Use gsdf_msgs-msg:swarm_id instead.")
  (swarm_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeaveSwarm>) ostream)
  "Serializes a message object of type '<LeaveSwarm>"
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'swarm_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeaveSwarm>) istream)
  "Deserializes a message object of type '<LeaveSwarm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swarm_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeaveSwarm>)))
  "Returns string type for a message object of type '<LeaveSwarm>"
  "gsdf_msgs/LeaveSwarm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeaveSwarm)))
  "Returns string type for a message object of type 'LeaveSwarm"
  "gsdf_msgs/LeaveSwarm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeaveSwarm>)))
  "Returns md5sum for a message object of type '<LeaveSwarm>"
  "03a316fe2f23659ac2ee7cc9f35ab40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeaveSwarm)))
  "Returns md5sum for a message object of type 'LeaveSwarm"
  "03a316fe2f23659ac2ee7cc9f35ab40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeaveSwarm>)))
  "Returns full string definition for message of type '<LeaveSwarm>"
  (cl:format cl:nil "int32 robot_id~%int32 swarm_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeaveSwarm)))
  "Returns full string definition for message of type 'LeaveSwarm"
  (cl:format cl:nil "int32 robot_id~%int32 swarm_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeaveSwarm>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeaveSwarm>))
  "Converts a ROS message object to a list"
  (cl:list 'LeaveSwarm
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':swarm_id (swarm_id msg))
))
