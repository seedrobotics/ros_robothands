; Auto-generated. Do not edit!


(cl:in-package sensor_pkg-msg)


;//! \htmlinclude lone_sensor.msg.html

(cl:defclass <lone_sensor> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (fx
    :reader fx
    :initarg :fx
    :type cl:integer
    :initform 0)
   (fy
    :reader fy
    :initarg :fy
    :type cl:integer
    :initform 0)
   (fz
    :reader fz
    :initarg :fz
    :type cl:integer
    :initform 0)
   (abs
    :reader abs
    :initarg :abs
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (is_present
    :reader is_present
    :initarg :is_present
    :type cl:boolean
    :initform cl:nil)
   (is_3D
    :reader is_3D
    :initarg :is_3D
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass lone_sensor (<lone_sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lone_sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lone_sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_pkg-msg:<lone_sensor> is deprecated: use sensor_pkg-msg:lone_sensor instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:id-val is deprecated.  Use sensor_pkg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:fx-val is deprecated.  Use sensor_pkg-msg:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:fy-val is deprecated.  Use sensor_pkg-msg:fy instead.")
  (fy m))

(cl:ensure-generic-function 'fz-val :lambda-list '(m))
(cl:defmethod fz-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:fz-val is deprecated.  Use sensor_pkg-msg:fz instead.")
  (fz m))

(cl:ensure-generic-function 'abs-val :lambda-list '(m))
(cl:defmethod abs-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:abs-val is deprecated.  Use sensor_pkg-msg:abs instead.")
  (abs m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:yaw-val is deprecated.  Use sensor_pkg-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:pitch-val is deprecated.  Use sensor_pkg-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'is_present-val :lambda-list '(m))
(cl:defmethod is_present-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:is_present-val is deprecated.  Use sensor_pkg-msg:is_present instead.")
  (is_present m))

(cl:ensure-generic-function 'is_3D-val :lambda-list '(m))
(cl:defmethod is_3D-val ((m <lone_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:is_3D-val is deprecated.  Use sensor_pkg-msg:is_3D instead.")
  (is_3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lone_sensor>) ostream)
  "Serializes a message object of type '<lone_sensor>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_present) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_3D) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lone_sensor>) istream)
  "Deserializes a message object of type '<lone_sensor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fz) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'abs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_present) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_3D) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lone_sensor>)))
  "Returns string type for a message object of type '<lone_sensor>"
  "sensor_pkg/lone_sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lone_sensor)))
  "Returns string type for a message object of type 'lone_sensor"
  "sensor_pkg/lone_sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lone_sensor>)))
  "Returns md5sum for a message object of type '<lone_sensor>"
  "d74951cd5ea9208665af447aa3c67759")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lone_sensor)))
  "Returns md5sum for a message object of type 'lone_sensor"
  "d74951cd5ea9208665af447aa3c67759")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lone_sensor>)))
  "Returns full string definition for message of type '<lone_sensor>"
  (cl:format cl:nil "int8 id~%int64 fx~%int64 fy~%int64 fz~%float64 abs~%float64 yaw~%float64 pitch~%bool is_present~%bool is_3D~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lone_sensor)))
  "Returns full string definition for message of type 'lone_sensor"
  (cl:format cl:nil "int8 id~%int64 fx~%int64 fy~%int64 fz~%float64 abs~%float64 yaw~%float64 pitch~%bool is_present~%bool is_3D~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lone_sensor>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lone_sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'lone_sensor
    (cl:cons ':id (id msg))
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':fz (fz msg))
    (cl:cons ':abs (abs msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':is_present (is_present msg))
    (cl:cons ':is_3D (is_3D msg))
))
