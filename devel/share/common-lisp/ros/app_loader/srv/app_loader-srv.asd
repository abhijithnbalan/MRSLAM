
(cl:in-package :asdf)

(defsystem "app_loader-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AppLoad" :depends-on ("_package_AppLoad"))
    (:file "_package_AppLoad" :depends-on ("_package"))
    (:file "AppUnload" :depends-on ("_package_AppUnload"))
    (:file "_package_AppUnload" :depends-on ("_package"))
    (:file "RTDestroy" :depends-on ("_package_RTDestroy"))
    (:file "_package_RTDestroy" :depends-on ("_package"))
  ))