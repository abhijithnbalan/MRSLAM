;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::SCDSPSOPut)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'SCDSPSOPut (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::SCDSPSOPUT")
  (make-package "GSDF_MSGS::SCDSPSOPUT"))

(in-package "ROS")
;;//! \htmlinclude SCDSPSOPut.msg.html


(defclass gsdf_msgs::SCDSPSOPut
  :super ros::object
  :slots (_key _pos _val _robot_id _gen _timestamp ))

(defmethod gsdf_msgs::SCDSPSOPut
  (:init
   (&key
    ((:key __key) "")
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:val __val) 0.0)
    ((:robot_id __robot_id) 0)
    ((:gen __gen) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _pos __pos)
   (setq _val (float __val))
   (setq _robot_id (round __robot_id))
   (setq _gen (round __gen))
   (setq _timestamp (round __timestamp))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:gen
   (&optional __gen)
   (if __gen (setq _gen __gen)) _gen)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ;; float32 _val
    4
    ;; int32 _robot_id
    4
    ;; int32 _gen
    4
    ;; int32 _timestamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; float32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _val
       (sys::poke _val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _gen
       (write-long _gen s)
     ;; int32 _timestamp
       (write-long _timestamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _val
     (setq _val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gen
     (setq _gen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gsdf_msgs::SCDSPSOPut :md5sum-) "4df795d490b81d6e66669b482531c966")
(setf (get gsdf_msgs::SCDSPSOPut :datatype-) "gsdf_msgs/SCDSPSOPut")
(setf (get gsdf_msgs::SCDSPSOPut :definition-)
      "string key
float32[] pos
float32 val
int32 robot_id
int32 gen
int32 timestamp

")



(provide :gsdf_msgs/SCDSPSOPut "4df795d490b81d6e66669b482531c966")


