; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetGoalPosition-request.msg.html

(cl:defclass <GetGoalPosition-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGoalPosition-request (<GetGoalPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetGoalPosition-request> is deprecated: use seed_robotics-srv:GetGoalPosition-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetGoalPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalPosition-request>) ostream)
  "Serializes a message object of type '<GetGoalPosition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalPosition-request>) istream)
  "Deserializes a message object of type '<GetGoalPosition-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalPosition-request>)))
  "Returns string type for a service object of type '<GetGoalPosition-request>"
  "seed_robotics/GetGoalPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPosition-request)))
  "Returns string type for a service object of type 'GetGoalPosition-request"
  "seed_robotics/GetGoalPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalPosition-request>)))
  "Returns md5sum for a message object of type '<GetGoalPosition-request>"
  "c6430525f1b226ec7b2120ff40297feb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalPosition-request)))
  "Returns md5sum for a message object of type 'GetGoalPosition-request"
  "c6430525f1b226ec7b2120ff40297feb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalPosition-request>)))
  "Returns full string definition for message of type '<GetGoalPosition-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalPosition-request)))
  "Returns full string definition for message of type 'GetGoalPosition-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalPosition-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalPosition-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetGoalPosition-response.msg.html

(cl:defclass <GetGoalPosition-response> (roslisp-msg-protocol:ros-message)
  ((goal_position
    :reader goal_position
    :initarg :goal_position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGoalPosition-response (<GetGoalPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoalPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoalPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetGoalPosition-response> is deprecated: use seed_robotics-srv:GetGoalPosition-response instead.")))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <GetGoalPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:goal_position-val is deprecated.  Use seed_robotics-srv:goal_position instead.")
  (goal_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoalPosition-response>) ostream)
  "Serializes a message object of type '<GetGoalPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'goal_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoalPosition-response>) istream)
  "Deserializes a message object of type '<GetGoalPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoalPosition-response>)))
  "Returns string type for a service object of type '<GetGoalPosition-response>"
  "seed_robotics/GetGoalPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPosition-response)))
  "Returns string type for a service object of type 'GetGoalPosition-response"
  "seed_robotics/GetGoalPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoalPosition-response>)))
  "Returns md5sum for a message object of type '<GetGoalPosition-response>"
  "c6430525f1b226ec7b2120ff40297feb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoalPosition-response)))
  "Returns md5sum for a message object of type 'GetGoalPosition-response"
  "c6430525f1b226ec7b2120ff40297feb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoalPosition-response>)))
  "Returns full string definition for message of type '<GetGoalPosition-response>"
  (cl:format cl:nil "int16 goal_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoalPosition-response)))
  "Returns full string definition for message of type 'GetGoalPosition-response"
  (cl:format cl:nil "int16 goal_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoalPosition-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoalPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoalPosition-response
    (cl:cons ':goal_position (goal_position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGoalPosition)))
  'GetGoalPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGoalPosition)))
  'GetGoalPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoalPosition)))
  "Returns string type for a service object of type '<GetGoalPosition>"
  "seed_robotics/GetGoalPosition")