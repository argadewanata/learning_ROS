; Auto-generated. Do not edit!


(cl:in-package package_joystick-msg)


;//! \htmlinclude joy.msg.html

(cl:defclass <joy> (roslisp-msg-protocol:ros-message)
  ((posisi_y
    :reader posisi_y
    :initarg :posisi_y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass joy (<joy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package_joystick-msg:<joy> is deprecated: use package_joystick-msg:joy instead.")))

(cl:ensure-generic-function 'posisi_y-val :lambda-list '(m))
(cl:defmethod posisi_y-val ((m <joy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_joystick-msg:posisi_y-val is deprecated.  Use package_joystick-msg:posisi_y instead.")
  (posisi_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joy>) ostream)
  "Serializes a message object of type '<joy>"
  (cl:let* ((signed (cl:slot-value msg 'posisi_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joy>) istream)
  "Deserializes a message object of type '<joy>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posisi_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joy>)))
  "Returns string type for a message object of type '<joy>"
  "package_joystick/joy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joy)))
  "Returns string type for a message object of type 'joy"
  "package_joystick/joy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joy>)))
  "Returns md5sum for a message object of type '<joy>"
  "f2ddef0f714ebbf16e9d317effdce83d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joy)))
  "Returns md5sum for a message object of type 'joy"
  "f2ddef0f714ebbf16e9d317effdce83d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joy>)))
  "Returns full string definition for message of type '<joy>"
  (cl:format cl:nil "int16 posisi_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joy)))
  "Returns full string definition for message of type 'joy"
  (cl:format cl:nil "int16 posisi_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joy>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joy>))
  "Converts a ROS message object to a list"
  (cl:list 'joy
    (cl:cons ':posisi_y (posisi_y msg))
))
