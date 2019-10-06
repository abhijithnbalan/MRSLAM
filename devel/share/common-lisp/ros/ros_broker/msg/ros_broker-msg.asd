
(cl:in-package :asdf)

(defsystem "ros_broker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GSDFPacket" :depends-on ("_package_GSDFPacket"))
    (:file "_package_GSDFPacket" :depends-on ("_package"))
  ))