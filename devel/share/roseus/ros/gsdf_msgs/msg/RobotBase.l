;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::RobotBase)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'RobotBase (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::ROBOTBASE")
  (make-package "GSDF_MSGS::ROBOTBASE"))

(in-package "ROS")
;;//! \htmlinclude RobotBase.msg.html


(defclass gsdf_msgs::RobotBase
  :super ros::object
  :slots (_id _px _py _pz _vx _vy _vz _theta _valid ))

(defmethod gsdf_msgs::RobotBase
  (:init
   (&key
    ((:id __id) 0)
    ((:px __px) 0.0)
    ((:py __py) 0.0)
    ((:pz __pz) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:theta __theta) 0.0)
    ((:valid __valid) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _px (float __px))
   (setq _py (float __py))
   (setq _pz (float __pz))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _theta (float __theta))
   (setq _valid (round __valid))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:px
   (&optional __px)
   (if __px (setq _px __px)) _px)
  (:py
   (&optional __py)
   (if __py (setq _py __py)) _py)
  (:pz
   (&optional __pz)
   (if __pz (setq _pz __pz)) _pz)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _px
    8
    ;; float64 _py
    8
    ;; float64 _pz
    8
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _theta
    8
    ;; int8 _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _px
       (sys::poke _px (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _py
       (sys::poke _py (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pz
       (sys::poke _pz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _valid
       (write-byte _valid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _px
     (setq _px (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _py
     (setq _py (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pz
     (setq _pz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _valid 127) (setq _valid (- _valid 256)))
   ;;
   self)
  )

(setf (get gsdf_msgs::RobotBase :md5sum-) "ee8bf5b3e1cbd860600fc82764dbc00a")
(setf (get gsdf_msgs::RobotBase :datatype-) "gsdf_msgs/RobotBase")
(setf (get gsdf_msgs::RobotBase :definition-)
      "int32   id
float64 px
float64 py
float64 pz
float64 vx
float64 vy
float64 vz
float64 theta
int8 valid

")



(provide :gsdf_msgs/RobotBase "ee8bf5b3e1cbd860600fc82764dbc00a")


