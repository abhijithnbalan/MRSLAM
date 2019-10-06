;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::BarrierSyn)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'BarrierSyn (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::BARRIERSYN")
  (make-package "GSDF_MSGS::BARRIERSYN"))

(in-package "ROS")
;;//! \htmlinclude BarrierSyn.msg.html


(defclass gsdf_msgs::BarrierSyn
  :super ros::object
  :slots (_s ))

(defmethod gsdf_msgs::BarrierSyn
  (:init
   (&key
    ((:s __s) "")
    )
   (send-super :init)
   (setq _s (string __s))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; string _s
    4 (length _s)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _s
       (write-long (length _s) s) (princ _s s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _s
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _s (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gsdf_msgs::BarrierSyn :md5sum-) "81af3411577d82a6786258523fc891ce")
(setf (get gsdf_msgs::BarrierSyn :datatype-) "gsdf_msgs/BarrierSyn")
(setf (get gsdf_msgs::BarrierSyn :definition-)
      "string s

")



(provide :gsdf_msgs/BarrierSyn "81af3411577d82a6786258523fc891ce")


