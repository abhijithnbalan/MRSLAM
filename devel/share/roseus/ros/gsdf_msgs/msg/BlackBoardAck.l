;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::BlackBoardAck)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'BlackBoardAck (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::BLACKBOARDACK")
  (make-package "GSDF_MSGS::BLACKBOARDACK"))

(in-package "ROS")
;;//! \htmlinclude BlackBoardAck.msg.html


(defclass gsdf_msgs::BlackBoardAck
  :super ros::object
  :slots (_bb_id _on_robot_id _key _value _timestamp _robot_id ))

(defmethod gsdf_msgs::BlackBoardAck
  (:init
   (&key
    ((:bb_id __bb_id) 0)
    ((:on_robot_id __on_robot_id) 0)
    ((:key __key) "")
    ((:value __value) (make-array 0 :initial-element 0 :element-type :char))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _bb_id (round __bb_id))
   (setq _on_robot_id (round __on_robot_id))
   (setq _key (string __key))
   (setq _value __value)
   (setq _timestamp __timestamp)
   (setq _robot_id (round __robot_id))
   self)
  (:bb_id
   (&optional __bb_id)
   (if __bb_id (setq _bb_id __bb_id)) _bb_id)
  (:on_robot_id
   (&optional __on_robot_id)
   (if __on_robot_id (setq _on_robot_id __on_robot_id)) _on_robot_id)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; int32 _bb_id
    4
    ;; int32 _on_robot_id
    4
    ;; string _key
    4 (length _key)
    ;; uint8[] _value
    (* 1    (length _value)) 4
    ;; time _timestamp
    8
    ;; int32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _bb_id
       (write-long _bb_id s)
     ;; int32 _on_robot_id
       (write-long _on_robot_id s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; uint8[] _value
     (write-long (length _value) s)
     (princ _value s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _bb_id
     (setq _bb_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _on_robot_id
     (setq _on_robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _value
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _value (make-array n :element-type :char))
     (replace _value buf :start2 ptr-) (incf ptr- n))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gsdf_msgs::BlackBoardAck :md5sum-) "21fe3110556151fb76fd0bddb9325f46")
(setf (get gsdf_msgs::BlackBoardAck :datatype-) "gsdf_msgs/BlackBoardAck")
(setf (get gsdf_msgs::BlackBoardAck :definition-)
      "int32 bb_id
int32 on_robot_id
string key
uint8[] value
time timestamp
int32 robot_id

")



(provide :gsdf_msgs/BlackBoardAck "21fe3110556151fb76fd0bddb9325f46")


