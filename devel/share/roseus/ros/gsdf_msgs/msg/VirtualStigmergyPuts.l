;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::VirtualStigmergyPuts)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'VirtualStigmergyPuts (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::VIRTUALSTIGMERGYPUTS")
  (make-package "GSDF_MSGS::VIRTUALSTIGMERGYPUTS"))

(in-package "ROS")
;;//! \htmlinclude VirtualStigmergyPuts.msg.html


(defclass gsdf_msgs::VirtualStigmergyPuts
  :super ros::object
  :slots (_vstig_id _key _value _lamport_clock _robot_id _prob ))

(defmethod gsdf_msgs::VirtualStigmergyPuts
  (:init
   (&key
    ((:vstig_id __vstig_id) 0)
    ((:key __key) "")
    ((:value __value) (make-array 0 :initial-element 0 :element-type :char))
    ((:lamport_clock __lamport_clock) 0)
    ((:robot_id __robot_id) 0)
    ((:prob __prob) 0.0)
    )
   (send-super :init)
   (setq _vstig_id (round __vstig_id))
   (setq _key (string __key))
   (setq _value __value)
   (setq _lamport_clock (round __lamport_clock))
   (setq _robot_id (round __robot_id))
   (setq _prob (float __prob))
   self)
  (:vstig_id
   (&optional __vstig_id)
   (if __vstig_id (setq _vstig_id __vstig_id)) _vstig_id)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:lamport_clock
   (&optional __lamport_clock)
   (if __lamport_clock (setq _lamport_clock __lamport_clock)) _lamport_clock)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; int32 _vstig_id
    4
    ;; string _key
    4 (length _key)
    ;; uint8[] _value
    (* 1    (length _value)) 4
    ;; int32 _lamport_clock
    4
    ;; int32 _robot_id
    4
    ;; float32 _prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vstig_id
       (write-long _vstig_id s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; uint8[] _value
     (write-long (length _value) s)
     (princ _value s)
     ;; int32 _lamport_clock
       (write-long _lamport_clock s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vstig_id
     (setq _vstig_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _value
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _value (make-array n :element-type :char))
     (replace _value buf :start2 ptr-) (incf ptr- n))
   ;; int32 _lamport_clock
     (setq _lamport_clock (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gsdf_msgs::VirtualStigmergyPuts :md5sum-) "6d15d0ec52ccefdcd3684a495dca041b")
(setf (get gsdf_msgs::VirtualStigmergyPuts :datatype-) "gsdf_msgs/VirtualStigmergyPuts")
(setf (get gsdf_msgs::VirtualStigmergyPuts :definition-)
      "int32 vstig_id
string key
uint8[] value
int32 lamport_clock
int32 robot_id
float32 prob

")



(provide :gsdf_msgs/VirtualStigmergyPuts "6d15d0ec52ccefdcd3684a495dca041b")


