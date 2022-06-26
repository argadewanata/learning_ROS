; Auto-generated. Do not edit!


(cl:in-package package_tiga-msg)


;//! \htmlinclude joystick_pos.msg.html

(cl:defclass <joystick_pos> (roslisp-msg-protocol:ros-message)
  ((xFixMap
    :reader xFixMap
    :initarg :xFixMap
    :type cl:fixnum
    :initform 0)
   (yFixMap
    :reader yFixMap
    :initarg :yFixMap
    :type cl:fixnum
    :initform 0))
)

(cl:defclass joystick_pos (<joystick_pos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joystick_pos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joystick_pos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package_tiga-msg:<joystick_pos> is deprecated: use package_tiga-msg:joystick_pos instead.")))

(cl:ensure-generic-function 'xFixMap-val :lambda-list '(m))
(cl:defmethod xFixMap-val ((m <joystick_pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_tiga-msg:xFixMap-val is deprecated.  Use package_tiga-msg:xFixMap instead.")
  (xFixMap m))

(cl:ensure-generic-function 'yFixMap-val :lambda-list '(m))
(cl:defmethod yFixMap-val ((m <joystick_pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_tiga-msg:yFixMap-val is deprecated.  Use package_tiga-msg:yFixMap instead.")
  (yFixMap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joystick_pos>) ostream)
  "Serializes a message object of type '<joystick_pos>"
  (cl:let* ((signed (cl:slot-value msg 'xFixMap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yFixMap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joystick_pos>) istream)
  "Deserializes a message object of type '<joystick_pos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xFixMap) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yFixMap) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joystick_pos>)))
  "Returns string type for a message object of type '<joystick_pos>"
  "package_tiga/joystick_pos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joystick_pos)))
  "Returns string type for a message object of type 'joystick_pos"
  "package_tiga/joystick_pos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joystick_pos>)))
  "Returns md5sum for a message object of type '<joystick_pos>"
  "f0619210a7cf29ef0b55e827581daed4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joystick_pos)))
  "Returns md5sum for a message object of type 'joystick_pos"
  "f0619210a7cf29ef0b55e827581daed4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joystick_pos>)))
  "Returns full string definition for message of type '<joystick_pos>"
  (cl:format cl:nil "int16 xFixMap~%int16 yFixMap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joystick_pos)))
  "Returns full string definition for message of type 'joystick_pos"
  (cl:format cl:nil "int16 xFixMap~%int16 yFixMap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joystick_pos>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joystick_pos>))
  "Converts a ROS message object to a list"
  (cl:list 'joystick_pos
    (cl:cons ':xFixMap (xFixMap msg))
    (cl:cons ':yFixMap (yFixMap msg))
))
