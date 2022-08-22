; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SetGoalVelocity.msg.html

(cl:defclass <SetGoalVelocity> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetGoalVelocity (<SetGoalVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoalVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoalVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SetGoalVelocity> is deprecated: use seed_robotics-msg:SetGoalVelocity instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetGoalVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id-val is deprecated.  Use seed_robotics-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <SetGoalVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:goal_velocity-val is deprecated.  Use seed_robotics-msg:goal_velocity instead.")
  (goal_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoalVelocity>) ostream)
  "Serializes a message object of type '<SetGoalVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'goal_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoalVelocity>) istream)
  "Deserializes a message object of type '<SetGoalVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoalVelocity>)))
  "Returns string type for a message object of type '<SetGoalVelocity>"
  "seed_robotics/SetGoalVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoalVelocity)))
  "Returns string type for a message object of type 'SetGoalVelocity"
  "seed_robotics/SetGoalVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoalVelocity>)))
  "Returns md5sum for a message object of type '<SetGoalVelocity>"
  "5c16c2214d42fb8949a3d64721f3982d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoalVelocity)))
  "Returns md5sum for a message object of type 'SetGoalVelocity"
  "5c16c2214d42fb8949a3d64721f3982d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoalVelocity>)))
  "Returns full string definition for message of type '<SetGoalVelocity>"
  (cl:format cl:nil "uint8 id~%int16 goal_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoalVelocity)))
  "Returns full string definition for message of type 'SetGoalVelocity"
  (cl:format cl:nil "uint8 id~%int16 goal_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoalVelocity>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoalVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoalVelocity
    (cl:cons ':id (id msg))
    (cl:cons ':goal_velocity (goal_velocity msg))
))
