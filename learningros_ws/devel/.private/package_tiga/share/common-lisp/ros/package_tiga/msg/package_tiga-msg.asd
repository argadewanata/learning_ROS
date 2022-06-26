
(cl:in-package :asdf)

(defsystem "package_tiga-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
    (:file "joystick_pos" :depends-on ("_package_joystick_pos"))
    (:file "_package_joystick_pos" :depends-on ("_package"))
    (:file "joystick_pos" :depends-on ("_package_joystick_pos"))
    (:file "_package_joystick_pos" :depends-on ("_package"))
  ))