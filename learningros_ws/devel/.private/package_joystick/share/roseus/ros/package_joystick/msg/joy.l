;; Auto-generated. Do not edit!


(when (boundp 'package_joystick::joy)
  (if (not (find-package "PACKAGE_JOYSTICK"))
    (make-package "PACKAGE_JOYSTICK"))
  (shadow 'joy (find-package "PACKAGE_JOYSTICK")))
(unless (find-package "PACKAGE_JOYSTICK::JOY")
  (make-package "PACKAGE_JOYSTICK::JOY"))

(in-package "ROS")
;;//! \htmlinclude joy.msg.html


(defclass package_joystick::joy
  :super ros::object
  :slots (_posisi_y ))

(defmethod package_joystick::joy
  (:init
   (&key
    ((:posisi_y __posisi_y) 0)
    )
   (send-super :init)
   (setq _posisi_y (round __posisi_y))
   self)
  (:posisi_y
   (&optional __posisi_y)
   (if __posisi_y (setq _posisi_y __posisi_y)) _posisi_y)
  (:serialization-length
   ()
   (+
    ;; int16 _posisi_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _posisi_y
       (write-word _posisi_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _posisi_y
     (setq _posisi_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get package_joystick::joy :md5sum-) "f2ddef0f714ebbf16e9d317effdce83d")
(setf (get package_joystick::joy :datatype-) "package_joystick/joy")
(setf (get package_joystick::joy :definition-)
      "int16 posisi_y

")



(provide :package_joystick/joy "f2ddef0f714ebbf16e9d317effdce83d")


