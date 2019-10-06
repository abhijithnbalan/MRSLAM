;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::BarrierAck)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'BarrierAck (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::BARRIERACK")
  (make-package "GSDF_MSGS::BARRIERACK"))

(in-package "ROS")
;;//! \htmlinclude BarrierAck.msg.html


(defclass gsdf_msgs::BarrierAck
  :super ros::object
  :slots (_robot_id ))

(defmethod gsdf_msgs::BarrierAck
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gsdf_msgs::BarrierAck :md5sum-) "91b3babccc3ad4274601f80c372a0375")
(setf (get gsdf_msgs::BarrierAck :datatype-) "gsdf_msgs/BarrierAck")
(setf (get gsdf_msgs::BarrierAck :definition-)
      "int32 robot_id

")



(provide :gsdf_msgs/BarrierAck "91b3babccc3ad4274601f80c372a0375")


