;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::CommContent)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'CommContent (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::COMMCONTENT")
  (make-package "GSDF_MSGS::COMMCONTENT"))

(in-package "ROS")
;;//! \htmlinclude CommContent.msg.html


(defclass gsdf_msgs::CommContent
  :super ros::object
  :slots (_buf ))

(defmethod gsdf_msgs::CommContent
  (:init
   (&key
    ((:buf __buf) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _buf __buf)
   self)
  (:buf
   (&optional __buf)
   (if __buf (setq _buf __buf)) _buf)
  (:serialization-length
   ()
   (+
    ;; uint8[] _buf
    (* 1    (length _buf)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _buf
     (write-long (length _buf) s)
     (princ _buf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _buf
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _buf (make-array n :element-type :char))
     (replace _buf buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get gsdf_msgs::CommContent :md5sum-) "4f7b5949e76f86d01e96b0e33ba9b5e3")
(setf (get gsdf_msgs::CommContent :datatype-) "gsdf_msgs/CommContent")
(setf (get gsdf_msgs::CommContent :definition-)
      "uint8[] buf

")



(provide :gsdf_msgs/CommContent "4f7b5949e76f86d01e96b0e33ba9b5e3")


