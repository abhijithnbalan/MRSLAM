;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::NeighborBroadcastKeyValue)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'NeighborBroadcastKeyValue (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::NEIGHBORBROADCASTKEYVALUE")
  (make-package "GSDF_MSGS::NEIGHBORBROADCASTKEYVALUE"))

(in-package "ROS")
;;//! \htmlinclude NeighborBroadcastKeyValue.msg.html


(defclass gsdf_msgs::NeighborBroadcastKeyValue
  :super ros::object
  :slots (_key _value ))

(defmethod gsdf_msgs::NeighborBroadcastKeyValue
  (:init
   (&key
    ((:key __key) "")
    ((:value __value) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _value __value)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; uint8[] _value
    (* 1    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; uint8[] _value
     (write-long (length _value) s)
     (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _value
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _value (make-array n :element-type :char))
     (replace _value buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get gsdf_msgs::NeighborBroadcastKeyValue :md5sum-) "1657889729a0518095a6771ffa7222a8")
(setf (get gsdf_msgs::NeighborBroadcastKeyValue :datatype-) "gsdf_msgs/NeighborBroadcastKeyValue")
(setf (get gsdf_msgs::NeighborBroadcastKeyValue :definition-)
      "string key
uint8[] value

")



(provide :gsdf_msgs/NeighborBroadcastKeyValue "1657889729a0518095a6771ffa7222a8")


