;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::CommPacket)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'CommPacket (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::COMMPACKET")
  (make-package "GSDF_MSGS::COMMPACKET"))

(in-package "ROS")
;;//! \htmlinclude CommPacket.msg.html


(defclass gsdf_msgs::CommPacket
  :super ros::object
  :slots (_header _content ))

(defmethod gsdf_msgs::CommPacket
  (:init
   (&key
    ((:header __header) (instance gsdf_msgs::CommHeader :init))
    ((:content __content) (instance gsdf_msgs::CommContent :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _content __content)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:content
   (&rest __content)
   (if (keywordp (car __content))
       (send* _content __content)
     (progn
       (if __content (setq _content (car __content)))
       _content)))
  (:serialization-length
   ()
   (+
    ;; gsdf_msgs/CommHeader _header
    (send _header :serialization-length)
    ;; gsdf_msgs/CommContent _content
    (send _content :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gsdf_msgs/CommHeader _header
       (send _header :serialize s)
     ;; gsdf_msgs/CommContent _content
       (send _content :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gsdf_msgs/CommHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gsdf_msgs/CommContent _content
     (send _content :deserialize buf ptr-) (incf ptr- (send _content :serialization-length))
   ;;
   self)
  )

(setf (get gsdf_msgs::CommPacket :md5sum-) "46d64b663b4515e9459bdd4c8023f462")
(setf (get gsdf_msgs::CommPacket :datatype-) "gsdf_msgs/CommPacket")
(setf (get gsdf_msgs::CommPacket :definition-)
      "CommHeader header
CommContent content

================================================================================
MSG: gsdf_msgs/CommHeader
int16 source
int8 type
int16 data_len
int8 version
int16 checksum

================================================================================
MSG: gsdf_msgs/CommContent
uint8[] buf

")



(provide :gsdf_msgs/CommPacket "46d64b663b4515e9459bdd4c8023f462")


