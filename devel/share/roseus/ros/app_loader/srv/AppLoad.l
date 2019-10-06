;; Auto-generated. Do not edit!


(when (boundp 'app_loader::AppLoad)
  (if (not (find-package "APP_LOADER"))
    (make-package "APP_LOADER"))
  (shadow 'AppLoad (find-package "APP_LOADER")))
(unless (find-package "APP_LOADER::APPLOAD")
  (make-package "APP_LOADER::APPLOAD"))
(unless (find-package "APP_LOADER::APPLOADREQUEST")
  (make-package "APP_LOADER::APPLOADREQUEST"))
(unless (find-package "APP_LOADER::APPLOADRESPONSE")
  (make-package "APP_LOADER::APPLOADRESPONSE"))

(in-package "ROS")





(defclass app_loader::AppLoadRequest
  :super ros::object
  :slots (_name _type ))

(defmethod app_loader::AppLoadRequest
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

(defclass app_loader::AppLoadResponse
  :super ros::object
  :slots (_success ))

(defmethod app_loader::AppLoadResponse
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

(defclass app_loader::AppLoad
  :super ros::object
  :slots ())

(setf (get app_loader::AppLoad :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppLoad :datatype-) "app_loader/AppLoad")
(setf (get app_loader::AppLoad :request) app_loader::AppLoadRequest)
(setf (get app_loader::AppLoad :response) app_loader::AppLoadResponse)

(defmethod app_loader::AppLoadRequest
  (:response () (instance app_loader::AppLoadResponse :init)))

(setf (get app_loader::AppLoadRequest :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppLoadRequest :datatype-) "app_loader/AppLoadRequest")
(setf (get app_loader::AppLoadRequest :definition-)
      "string name
string type
---
bool success

")

(setf (get app_loader::AppLoadResponse :md5sum-) "9e491318c68b9fbf00509a80adfec2ec")
(setf (get app_loader::AppLoadResponse :datatype-) "app_loader/AppLoadResponse")
(setf (get app_loader::AppLoadResponse :definition-)
      "string name
string type
---
bool success

")



(provide :app_loader/AppLoad "9e491318c68b9fbf00509a80adfec2ec")


