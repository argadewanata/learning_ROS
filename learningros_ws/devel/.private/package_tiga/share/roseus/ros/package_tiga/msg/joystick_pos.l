;; Auto-generated. Do not edit!


(when (boundp 'package_tiga::joystick_pos)
  (if (not (find-package "PACKAGE_TIGA"))
    (make-package "PACKAGE_TIGA"))
  (shadow 'joystick_pos (find-package "PACKAGE_TIGA")))
(unless (find-package "PACKAGE_TIGA::JOYSTICK_POS")
  (make-package "PACKAGE_TIGA::JOYSTICK_POS"))

(in-package "ROS")
;;//! \htmlinclude joystick_pos.msg.html


(defclass package_tiga::joystick_pos
  :super ros::object
  :slots (_xFixMap _yFixMap ))

(defmethod package_tiga::joystick_pos
  (:init
   (&key
    ((:xFixMap __xFixMap) 0)
    ((:yFixMap __yFixMap) 0)
    )
   (send-super :init)
   (setq _xFixMap (round __xFixMap))
   (setq _yFixMap (round __yFixMap))
   self)
  (:xFixMap
   (&optional __xFixMap)
   (if __xFixMap (setq _xFixMap __xFixMap)) _xFixMap)
  (:yFixMap
   (&optional __yFixMap)
   (if __yFixMap (setq _yFixMap __yFixMap)) _yFixMap)
  (:serialization-length
   ()
   (+
    ;; int16 _xFixMap
    2
    ;; int16 _yFixMap
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _xFixMap
       (write-word _xFixMap s)
     ;; int16 _yFixMap
       (write-word _yFixMap s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _xFixMap
     (setq _xFixMap (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _yFixMap
     (setq _yFixMap (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get package_tiga::joystick_pos :md5sum-) "f0619210a7cf29ef0b55e827581daed4")
(setf (get package_tiga::joystick_pos :datatype-) "package_tiga/joystick_pos")
(setf (get package_tiga::joystick_pos :definition-)
      "int16 xFixMap
int16 yFixMap

")



(provide :package_tiga/joystick_pos "f0619210a7cf29ef0b55e827581daed4")


