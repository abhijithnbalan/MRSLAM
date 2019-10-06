;; Auto-generated. Do not edit!


(when (boundp 'gsdf_msgs::CommHeader)
  (if (not (find-package "GSDF_MSGS"))
    (make-package "GSDF_MSGS"))
  (shadow 'CommHeader (find-package "GSDF_MSGS")))
(unless (find-package "GSDF_MSGS::COMMHEADER")
  (make-package "GSDF_MSGS::COMMHEADER"))

(in-package "ROS")
;;//! \htmlinclude CommHeader.msg.html


(defclass gsdf_msgs::CommHeader
  :super ros::object
  :slots (_source _type _data_len _version _checksum ))

(defmethod gsdf_msgs::CommHeader
  (:init
   (&key
    ((:source __source) 0)
    ((:type __type) 0)
    ((:data_len __data_len) 0)
    ((:version __version) 0)
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _type (round __type))
   (setq _data_len (round __data_len))
   (setq _version (round __version))
   (setq _checksum (round __checksum))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data_len
   (&optional __data_len)
   (if __data_len (setq _data_len __data_len)) _data_len)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; int16 _source
    2
    ;; int8 _type
    1
    ;; int16 _data_len
    2
    ;; int8 _version
    1
    ;; int16 _checksum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _source
       (write-word _source s)
     ;; int8 _type
       (write-byte _type s)
     ;; int16 _data_len
       (write-word _data_len s)
     ;; int8 _version
       (write-byte _version s)
     ;; int16 _checksum
       (write-word _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _source
     (setq _source (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int16 _data_len
     (setq _data_len (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _version 127) (setq _version (- _version 256)))
   ;; int16 _checksum
     (setq _checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get gsdf_msgs::CommHeader :md5sum-) "9d7273660b11e3521033af5d52ed4460")
(setf (get gsdf_msgs::CommHeader :datatype-) "gsdf_msgs/CommHeader")
(setf (get gsdf_msgs::CommHeader :definition-)
      "int16 source
int8 type
int16 data_len
int8 version
int16 checksum

")



(provide :gsdf_msgs/CommHeader "9d7273660b11e3521033af5d52ed4460")


