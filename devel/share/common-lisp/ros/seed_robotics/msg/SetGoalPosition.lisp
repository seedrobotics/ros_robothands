; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SetGoalPosition.msg.html

(cl:defclass <SetGoalPosition> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetGoalPosition (<SetGoalPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoalPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoalPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SetGoalPosition> is deprecated: use seed_robotics-msg:SetGoalPosition instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetGoalPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id-val is deprecated.  Use seed_robotics-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <SetGoalPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:goal_position-val is deprecated.  Use seed_robotics-msg:goal_position instead.")
  (goal_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoalPosition>) ostream)
  "Serializes a message object of type '<SetGoalPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'goal_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoalPosition>) istream)
  "Deserializes a message object of type '<SetGoalPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoalPosition>)))
  "Returns string type for a message object of type '<SetGoalPosition>"
  "seed_robotics/SetGoalPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoalPosition)))
  "Returns string type for a message object of type 'SetGoalPosition"
  "seed_robotics/SetGoalPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoalPosition>)))
  "Returns md5sum for a message object of type '<SetGoalPosition>"
  "660418f6d1f690fc600a479e31cb5227")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoalPosition)))
  "Returns md5sum for a message object of type 'SetGoalPosition"
  "660418f6d1f690fc600a479e31cb5227")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoalPosition>)))
  "Returns full string definition for message of type '<SetGoalPosition>"
  (cl:format cl:nil "uint8 id~%int16 goal_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoalPosition)))
  "Returns full string definition for message of type 'SetGoalPosition"
  (cl:format cl:nil "uint8 id~%int16 goal_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoalPosition>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoalPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoalPosition
    (cl:cons ':id (id msg))
    (cl:cons ':goal_position (goal_position msg))
))
