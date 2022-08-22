; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude LoneJoint.msg.html

(cl:defclass <LoneJoint> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (bus_id
    :reader bus_id
    :initarg :bus_id
    :type cl:fixnum
    :initform 0)
   (stiffness
    :reader stiffness
    :initarg :stiffness
    :type cl:fixnum
    :initform 0)
   (stress_level
    :reader stress_level
    :initarg :stress_level
    :type cl:fixnum
    :initform 0)
   (target_position
    :reader target_position
    :initarg :target_position
    :type cl:fixnum
    :initform 0)
   (target_speed
    :reader target_speed
    :initarg :target_speed
    :type cl:fixnum
    :initform 0)
   (torque_limit
    :reader torque_limit
    :initarg :torque_limit
    :type cl:fixnum
    :initform 0)
   (present_position
    :reader present_position
    :initarg :present_position
    :type cl:fixnum
    :initform 0)
   (present_speed
    :reader present_speed
    :initarg :present_speed
    :type cl:fixnum
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0)
   (moving
    :reader moving
    :initarg :moving
    :type cl:fixnum
    :initform 0)
   (HW_error_condition
    :reader HW_error_condition
    :initarg :HW_error_condition
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LoneJoint (<LoneJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoneJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoneJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<LoneJoint> is deprecated: use seed_robotics-msg:LoneJoint instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:name-val is deprecated.  Use seed_robotics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'bus_id-val :lambda-list '(m))
(cl:defmethod bus_id-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:bus_id-val is deprecated.  Use seed_robotics-msg:bus_id instead.")
  (bus_id m))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:stiffness-val is deprecated.  Use seed_robotics-msg:stiffness instead.")
  (stiffness m))

(cl:ensure-generic-function 'stress_level-val :lambda-list '(m))
(cl:defmethod stress_level-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:stress_level-val is deprecated.  Use seed_robotics-msg:stress_level instead.")
  (stress_level m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:target_position-val is deprecated.  Use seed_robotics-msg:target_position instead.")
  (target_position m))

(cl:ensure-generic-function 'target_speed-val :lambda-list '(m))
(cl:defmethod target_speed-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:target_speed-val is deprecated.  Use seed_robotics-msg:target_speed instead.")
  (target_speed m))

(cl:ensure-generic-function 'torque_limit-val :lambda-list '(m))
(cl:defmethod torque_limit-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:torque_limit-val is deprecated.  Use seed_robotics-msg:torque_limit instead.")
  (torque_limit m))

(cl:ensure-generic-function 'present_position-val :lambda-list '(m))
(cl:defmethod present_position-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:present_position-val is deprecated.  Use seed_robotics-msg:present_position instead.")
  (present_position m))

(cl:ensure-generic-function 'present_speed-val :lambda-list '(m))
(cl:defmethod present_speed-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:present_speed-val is deprecated.  Use seed_robotics-msg:present_speed instead.")
  (present_speed m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:temperature-val is deprecated.  Use seed_robotics-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:moving-val is deprecated.  Use seed_robotics-msg:moving instead.")
  (moving m))

(cl:ensure-generic-function 'HW_error_condition-val :lambda-list '(m))
(cl:defmethod HW_error_condition-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:HW_error_condition-val is deprecated.  Use seed_robotics-msg:HW_error_condition instead.")
  (HW_error_condition m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <LoneJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:current-val is deprecated.  Use seed_robotics-msg:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoneJoint>) ostream)
  "Serializes a message object of type '<LoneJoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stiffness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stress_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'torque_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'torque_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'present_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'present_position)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'present_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HW_error_condition)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoneJoint>) istream)
  "Deserializes a message object of type '<LoneJoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stiffness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stress_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'torque_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'torque_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'present_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'present_position)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'present_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HW_error_condition)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoneJoint>)))
  "Returns string type for a message object of type '<LoneJoint>"
  "seed_robotics/LoneJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoneJoint)))
  "Returns string type for a message object of type 'LoneJoint"
  "seed_robotics/LoneJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoneJoint>)))
  "Returns md5sum for a message object of type '<LoneJoint>"
  "6abe499ce867c10d257cf3acca9de505")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoneJoint)))
  "Returns md5sum for a message object of type 'LoneJoint"
  "6abe499ce867c10d257cf3acca9de505")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoneJoint>)))
  "Returns full string definition for message of type '<LoneJoint>"
  (cl:format cl:nil "string name~%uint8 bus_id~%uint8 stiffness~%uint8 stress_level~%uint16 target_position~%uint16 target_speed~%uint16 torque_limit~%uint16 present_position~%int16 present_speed~%uint8 temperature~%uint8 moving~%uint8 HW_error_condition~%int16 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoneJoint)))
  "Returns full string definition for message of type 'LoneJoint"
  (cl:format cl:nil "string name~%uint8 bus_id~%uint8 stiffness~%uint8 stress_level~%uint16 target_position~%uint16 target_speed~%uint16 torque_limit~%uint16 present_position~%int16 present_speed~%uint8 temperature~%uint8 moving~%uint8 HW_error_condition~%int16 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoneJoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     1
     2
     2
     2
     2
     2
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoneJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LoneJoint
    (cl:cons ':name (name msg))
    (cl:cons ':bus_id (bus_id msg))
    (cl:cons ':stiffness (stiffness msg))
    (cl:cons ':stress_level (stress_level msg))
    (cl:cons ':target_position (target_position msg))
    (cl:cons ':target_speed (target_speed msg))
    (cl:cons ':torque_limit (torque_limit msg))
    (cl:cons ':present_position (present_position msg))
    (cl:cons ':present_speed (present_speed msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':moving (moving msg))
    (cl:cons ':HW_error_condition (HW_error_condition msg))
    (cl:cons ':current (current msg))
))
