;; Auto-generated. Do not edit!


(when (boundp 'app_loader::RTDestroy)
  (if (not (find-package "APP_LOADER"))
    (make-package "APP_LOADER"))
  (shadow 'RTDestroy (find-package "APP_LOADER")))
(unless (find-package "APP_LOADER::RTDESTROY")
  (make-package "APP_LOADER::RTDESTROY"))
(unless (find-package "APP_LOADER::RTDESTROYREQUEST")
  (make-package "APP_LOADER::RTDESTROYREQUEST"))
(unless (find-package "APP_LOADER::RTDESTROYRESPONSE")
  (make-package "APP_LOADER::RTDESTROYRESPONSE"))

(in-package "ROS")





(defclass app_loader::RTDestroyRequest
  :super ros::object
  :slots (_code ))

(defmethod app_loader::RTDestroyRequest
  (:init
   (&key
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; int8 _code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _code
       (write-byte _code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _code 127) (setq _code (- _code 256)))
   ;;
   self)
  )

(defclass app_loader::RTDestroyResponse
  :super ros::object
  :slots (_success ))

(defmethod app_loader::RTDestroyResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass app_loader::RTDestroy
  :super ros::object
  :slots ())

(setf (get app_loader::RTDestroy :md5sum-) "36405beac40f6723e71d2520ae768ec2")
(setf (get app_loader::RTDestroy :datatype-) "app_loader/RTDestroy")
(setf (get app_loader::RTDestroy :request) app_loader::RTDestroyRequest)
(setf (get app_loader::RTDestroy :response) app_loader::RTDestroyResponse)

(defmethod app_loader::RTDestroyRequest
  (:response () (instance app_loader::RTDestroyResponse :init)))

(setf (get app_loader::RTDestroyRequest :md5sum-) "36405beac40f6723e71d2520ae768ec2")
(setf (get app_loader::RTDestroyRequest :datatype-) "app_loader/RTDestroyRequest")
(setf (get app_loader::RTDestroyRequest :definition-)
      "int8 code
---
bool success

")

(setf (get app_loader::RTDestroyResponse :md5sum-) "36405beac40f6723e71d2520ae768ec2")
(setf (get app_loader::RTDestroyResponse :datatype-) "app_loader/RTDestroyResponse")
(setf (get app_loader::RTDestroyResponse :definition-)
      "int8 code
---
bool success

")



(provide :app_loader/RTDestroy "36405beac40f6723e71d2520ae768ec2")


