; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SetGoalProfileVelocity.msg.html

(cl:defclass <SetGoalProfileVelocity> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (goal_profile_velocity
    :reader goal_profile_velocity
    :initarg :goal_profile_velocity
    :type cl:integer
    :initform 0))
)

(cl:defclass SetGoalProfileVelocity (<SetGoalProfileVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoalProfileVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoalProfileVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SetGoalProfileVelocity> is deprecated: use seed_robotics-msg:SetGoalProfileVelocity instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetGoalProfileVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id-val is deprecated.  Use seed_robotics-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_profile_velocity-val :lambda-list '(m))
(cl:defmethod goal_profile_velocity-val ((m <SetGoalProfileVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:goal_profile_velocity-val is deprecated.  Use seed_robotics-msg:goal_profile_velocity instead.")
  (goal_profile_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoalProfileVelocity>) ostream)
  "Serializes a message object of type '<SetGoalProfileVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'goal_profile_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoalProfileVelocity>) istream)
  "Deserializes a message object of type '<SetGoalProfileVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_profile_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoalProfileVelocity>)))
  "Returns string type for a message object of type '<SetGoalProfileVelocity>"
  "seed_robotics/SetGoalProfileVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoalProfileVelocity)))
  "Returns string type for a message object of type 'SetGoalProfileVelocity"
  "seed_robotics/SetGoalProfileVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoalProfileVelocity>)))
  "Returns md5sum for a message object of type '<SetGoalProfileVelocity>"
  "46b70f7b9e0160279323583cbdf16e19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoalProfileVelocity)))
  "Returns md5sum for a message object of type 'SetGoalProfileVelocity"
  "46b70f7b9e0160279323583cbdf16e19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoalProfileVelocity>)))
  "Returns full string definition for message of type '<SetGoalProfileVelocity>"
  (cl:format cl:nil "uint8 id~%int32 goal_profile_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoalProfileVelocity)))
  "Returns full string definition for message of type 'SetGoalProfileVelocity"
  (cl:format cl:nil "uint8 id~%int32 goal_profile_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoalProfileVelocity>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoalProfileVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoalProfileVelocity
    (cl:cons ':id (id msg))
    (cl:cons ':goal_profile_velocity (goal_profile_velocity msg))
))
