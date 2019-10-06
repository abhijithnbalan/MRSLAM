;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::SwarmList)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'SwarmList (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::SWARMLIST")
  (make-package "GSDF_MSGS::SWARMLIST"))

(in-package "ROS")
;;//! \htmlinclude SwarmList.msg.html


(defclass gsdf_msgs::SwarmList
  :super ros::object
  :slots (_robot_id _swarm_list ))

(defmethod gsdf_msgs::SwarmList
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:swarm_list __swarm_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _swarm_list __swarm_list)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:swarm_list
   (&optional __swarm_list)
   (if __swarm_list (setq _swarm_list __swarm_list)) _swarm_list)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; int32[] _swarm_list
    (* 4    (length _swarm_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32[] _swarm_list
     (write-long (length _swarm_list) s)
     (dotimes (i (length _swarm_list))
       (write-long (elt _swarm_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _swarm_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _swarm_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _swarm_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get gsdf_msgs::SwarmList :md5sum-) "f621a20b31f30285c93ed9d370693ac7")
(setf (get gsdf_msgs::SwarmList :datatype-) "gsdf_msgs/SwarmList")
(setf (get gsdf_msgs::SwarmList :definition-)
      "int32 robot_id
int32[] swarm_list

")



(provide :gsdf_msgs/SwarmList "f621a20b31f30285c93ed9d370693ac7")


