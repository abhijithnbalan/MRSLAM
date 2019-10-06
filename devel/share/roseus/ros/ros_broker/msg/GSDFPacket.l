;; Auto-generated. Do not edit!


(when (boundp 'ros_broker::GSDFPacket)
  (if (not (find-package "ROS_BROKER"))
    (make-package "ROS_BROKER"))
  (shadow 'GSDFPacket (find-package "ROS_BROKER")))
(unless (find-package "ROS_BROKER::GSDFPACKET")
  (make-package "ROS_BROKER::GSDFPACKET"))

(in-package "ROS")
;;//! \htmlinclude GSDFPacket.msg.html


(defclass ros_broker::GSDFPacket
  :super ros::object
  :slots (_data ))

(defmethod ros_broker::GSDFPacket
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_broker::GSDFPacket :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get ros_broker::GSDFPacket :datatype-) "ros_broker/GSDFPacket")
(setf (get ros_broker::GSDFPacket :definition-)
      "uint8[] data

")



(provide :ros_broker/GSDFPacket "f43a8e1b362b75baa741461b46adc7e0")


