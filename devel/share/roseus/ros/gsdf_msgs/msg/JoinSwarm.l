;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::JoinSwarm)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'JoinSwarm (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::JOINSWARM")
  (make-package "GSDF_MSGS::JOINSWARM"))

(in-package "ROS")
;;//! \htmlinclude JoinSwarm.msg.html


(defclass gsdf_msgs::JoinSwarm
  :super ros::object
  :slots (_robot_id _swarm_id ))

(defmethod gsdf_msgs::JoinSwarm
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:swarm_id __swarm_id) 0)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _swarm_id (round __swarm_id))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:swarm_id
   (&optional __swarm_id)
   (if __swarm_id (setq _swarm_id __swarm_id)) _swarm_id)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; int32 _swarm_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _swarm_id
       (write-long _swarm_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _swarm_id
     (setq _swarm_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gsdf_msgs::JoinSwarm :md5sum-) "03a316fe2f23659ac2ee7cc9f35ab40f")
(setf (get gsdf_msgs::JoinSwarm :datatype-) "gsdf_msgs/JoinSwarm")
(setf (get gsdf_msgs::JoinSwarm :definition-)
      "int32 robot_id
int32 swarm_id

")



(provide :gsdf_msgs/JoinSwarm "03a316fe2f23659ac2ee7cc9f35ab40f")


