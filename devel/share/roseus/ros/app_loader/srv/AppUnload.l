;; Auto-generated. Do not edit!


(when (boundp 'app_loader::AppUnload)
  (if (not (find-package "APP_LOADER"))
    (make-package "APP_LOADER"))
  (shadow 'AppUnload (find-package "APP_LOADER")))
(unless (find-package "APP_LOADER::APPUNLOAD")
  (make-package "APP_LOADER::APPUNLOAD"))
(unless (find-package "APP_LOADER::APPUNLOADREQUEST")
  (make-package "APP_LOADER::APPUNLOADREQUEST"))
(unless (find-package "APP_LOADER::APPUNLOADRESPONSE")
  (make-package "APP_LOADER::APPUNLOADRESPONSE"))

(in-package "ROS")





(defclass app_loader::AppUnloadRequest
  :super ros::object
  :slots (_name _type ))

(defmethod app_loader::AppUnloadRequest
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass app_loader::AppUnloadResponse
  :super ros::object
  :slots (_success ))

(defmethod app_loader::AppUnloadResponse
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

(defclass app_loader::AppUnload
  :super ros::object
  :slots ())

(setf (get app_loader::AppUnload :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppUnload :datatype-) "app_loader/AppUnload")
(setf (get app_loader::AppUnload :request) app_loader::AppUnloadRequest)
(setf (get app_loader::AppUnload :response) app_loader::AppUnloadResponse)

(defmethod app_loader::AppUnloadRequest
  (:response () (instance app_loader::AppUnloadResponse :init)))

(setf (get app_loader::AppUnloadRequest :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppUnloadRequest :datatype-) "app_loader/AppUnloadRequest")
(setf (get app_loader::AppUnloadRequest :definition-)
      "string name
string type
---
bool success

")

(setf (get app_loader::AppUnloadResponse :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppUnloadResponse :datatype-) "app_loader/AppUnloadResponse")
(setf (get app_loader::AppUnloadResponse :definition-)
      "string name
string type
---
bool success

")



(provide :app_loader/AppUnload "9e491318c68b9fbf00509a80adfec2ec")


