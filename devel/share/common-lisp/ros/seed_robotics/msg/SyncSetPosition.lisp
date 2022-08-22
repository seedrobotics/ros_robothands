; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SyncSetPosition.msg.html

(cl:defclass <SyncSetPosition> (roslisp-msg-protocol:ros-message)
  ((id1
    :reader id1
    :initarg :id1
    :type cl:fixnum
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:fixnum
    :initform 0)
   (position1
    :reader position1
    :initarg :position1
    :type cl:integer
    :initform 0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncSetPosition (<SyncSetPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncSetPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncSetPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SyncSetPosition> is deprecated: use seed_robotics-msg:SyncSetPosition instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <SyncSetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id1-val is deprecated.  Use seed_robotics-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <SyncSetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id2-val is deprecated.  Use seed_robotics-msg:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <SyncSetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:position1-val is deprecated.  Use seed_robotics-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <SyncSetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:position2-val is deprecated.  Use seed_robotics-msg:position2 instead.")
  (position2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncSetPosition>) ostream)
  "Serializes a message object of type '<SyncSetPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'position1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncSetPosition>) istream)
  "Deserializes a message object of type '<SyncSetPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncSetPosition>)))
  "Returns string type for a message object of type '<SyncSetPosition>"
  "seed_robotics/SyncSetPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncSetPosition)))
  "Returns string type for a message object of type 'SyncSetPosition"
  "seed_robotics/SyncSetPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncSetPosition>)))
  "Returns md5sum for a message object of type '<SyncSetPosition>"
  "c9220e34b4c74855ca69205046aec62f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncSetPosition)))
  "Returns md5sum for a message object of type 'SyncSetPosition"
  "c9220e34b4c74855ca69205046aec62f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncSetPosition>)))
  "Returns full string definition for message of type '<SyncSetPosition>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%int32 position1~%int32 position2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncSetPosition)))
  "Returns full string definition for message of type 'SyncSetPosition"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%int32 position1~%int32 position2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncSetPosition>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncSetPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncSetPosition
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
))
