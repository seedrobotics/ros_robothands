; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude JointSetSpeedPos.msg.html

(cl:defclass <JointSetSpeedPos> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type cl:fixnum
    :initform 0)
   (target_speed
    :reader target_speed
    :initarg :target_speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JointSetSpeedPos (<JointSetSpeedPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSetSpeedPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSetSpeedPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<JointSetSpeedPos> is deprecated: use seed_robotics-msg:JointSetSpeedPos instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointSetSpeedPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:name-val is deprecated.  Use seed_robotics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <JointSetSpeedPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:target_pos-val is deprecated.  Use seed_robotics-msg:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'target_speed-val :lambda-list '(m))
(cl:defmethod target_speed-val ((m <JointSetSpeedPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:target_speed-val is deprecated.  Use seed_robotics-msg:target_speed instead.")
  (target_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSetSpeedPos>) ostream)
  "Serializes a message object of type '<JointSetSpeedPos>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_pos)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSetSpeedPos>) istream)
  "Deserializes a message object of type '<JointSetSpeedPos>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_pos)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSetSpeedPos>)))
  "Returns string type for a message object of type '<JointSetSpeedPos>"
  "seed_robotics/JointSetSpeedPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSetSpeedPos)))
  "Returns string type for a message object of type 'JointSetSpeedPos"
  "seed_robotics/JointSetSpeedPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSetSpeedPos>)))
  "Returns md5sum for a message object of type '<JointSetSpeedPos>"
  "081224d8d07c92db7062a286ebd648c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSetSpeedPos)))
  "Returns md5sum for a message object of type 'JointSetSpeedPos"
  "081224d8d07c92db7062a286ebd648c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSetSpeedPos>)))
  "Returns full string definition for message of type '<JointSetSpeedPos>"
  (cl:format cl:nil "string name~%uint16 target_pos~%int16 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSetSpeedPos)))
  "Returns full string definition for message of type 'JointSetSpeedPos"
  (cl:format cl:nil "string name~%uint16 target_pos~%int16 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSetSpeedPos>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSetSpeedPos>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSetSpeedPos
    (cl:cons ':name (name msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':target_speed (target_speed msg))
))
