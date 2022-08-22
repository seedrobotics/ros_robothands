; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetGoalVelocity-request.msg.html

(cl:defclass <GetGoalVelocity-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGoalVelocity-request (<GetGoalVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetGoalVelocity-request> is deprecated: use seed_robotics-srv:GetGoalVelocity-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetGoalVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalVelocity-request>) ostream)
  "Serializes a message object of type '<GetGoalVelocity-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalVelocity-request>) istream)
  "Deserializes a message object of type '<GetGoalVelocity-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalVelocity-request>)))
  "Returns string type for a service object of type '<GetGoalVelocity-request>"
  "seed_robotics/GetGoalVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalVelocity-request)))
  "Returns string type for a service object of type 'GetGoalVelocity-request"
  "seed_robotics/GetGoalVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalVelocity-request>)))
  "Returns md5sum for a message object of type '<GetGoalVelocity-request>"
  "176f1ed56ee1f0eee6e6a7fc38e4f377")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalVelocity-request)))
  "Returns md5sum for a message object of type 'GetGoalVelocity-request"
  "176f1ed56ee1f0eee6e6a7fc38e4f377")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalVelocity-request>)))
  "Returns full string definition for message of type '<GetGoalVelocity-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalVelocity-request)))
  "Returns full string definition for message of type 'GetGoalVelocity-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalVelocity-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalVelocity-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetGoalVelocity-response.msg.html

(cl:defclass <GetGoalVelocity-response> (roslisp-msg-protocol:ros-message)
  ((goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGoalVelocity-response (<GetGoalVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetGoalVelocity-response> is deprecated: use seed_robotics-srv:GetGoalVelocity-response instead.")))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <GetGoalVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:goal_velocity-val is deprecated.  Use seed_robotics-srv:goal_velocity instead.")
  (goal_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalVelocity-response>) ostream)
  "Serializes a message object of type '<GetGoalVelocity-response>"
  (cl:let* ((signed (cl:slot-value msg 'goal_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalVelocity-response>) istream)
  "Deserializes a message object of type '<GetGoalVelocity-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalVelocity-response>)))
  "Returns string type for a service object of type '<GetGoalVelocity-response>"
  "seed_robotics/GetGoalVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalVelocity-response)))
  "Returns string type for a service object of type 'GetGoalVelocity-response"
  "seed_robotics/GetGoalVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalVelocity-response>)))
  "Returns md5sum for a message object of type '<GetGoalVelocity-response>"
  "176f1ed56ee1f0eee6e6a7fc38e4f377")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalVelocity-response)))
  "Returns md5sum for a message object of type 'GetGoalVelocity-response"
  "176f1ed56ee1f0eee6e6a7fc38e4f377")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalVelocity-response>)))
  "Returns full string definition for message of type '<GetGoalVelocity-response>"
  (cl:format cl:nil "int16 goal_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalVelocity-response)))
  "Returns full string definition for message of type 'GetGoalVelocity-response"
  (cl:format cl:nil "int16 goal_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalVelocity-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalVelocity-response
    (cl:cons ':goal_velocity (goal_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGoalVelocity)))
  'GetGoalVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGoalVelocity)))
  'GetGoalVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalVelocity)))
  "Returns string type for a service object of type '<GetGoalVelocity>"
  "seed_robotics/GetGoalVelocity")