;; Auto-generated. Do not edit!


(when (boundp 'package_tiga::joystick)
  (if (not (find-package "PACKAGE_TIGA"))
    (make-package "PACKAGE_TIGA"))
  (shadow 'joystick (find-package "PACKAGE_TIGA")))
(unless (find-package "PACKAGE_TIGA::JOYSTICK")
  (make-package "PACKAGE_TIGA::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass package_tiga::joystick
  :super ros::object
  :slots (_posisi_x _posisi_y ))

(defmethod package_tiga::joystick
  (:init
   (&key
    ((:posisi_x __posisi_x) 0)
    ((:posisi_y __posisi_y) 0)
    )
   (send-super :init)
   (setq _posisi_x (round __posisi_x))
   (setq _posisi_y (round __posisi_y))
   self)
  (:posisi_x
   (&optional __posisi_x)
   (if __posisi_x (setq _posisi_x __posisi_x)) _posisi_x)
  (:posisi_y
   (&optional __posisi_y)
   (if __posisi_y (setq _posisi_y __posisi_y)) _posisi_y)
  (:serialization-length
   ()
   (+
    ;; int16 _posisi_x
    2
    ;; int16 _posisi_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _posisi_x
       (write-word _posisi_x s)
     ;; int16 _posisi_y
       (write-word _posisi_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _posisi_x
     (setq _posisi_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _posisi_y
     (setq _posisi_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get package_tiga::joystick :md5sum-) "6960680023b8cf73c32d80881e01cc9f")
(setf (get package_tiga::joystick :datatype-) "package_tiga/joystick")
(setf (get package_tiga::joystick :definition-)
      "int16 posisi_x
int16 posisi_y

")



(provide :package_tiga/joystick "6960680023b8cf73c32d80881e01cc9f")


