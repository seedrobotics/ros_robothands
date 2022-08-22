; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetPosVelocity-request.msg.html

(cl:defclass <GetPosVelocity-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPosVelocity-request (<GetPosVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPosVelocity-request> is deprecated: use seed_robotics-srv:GetPosVelocity-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetPosVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosVelocity-request>) ostream)
  "Serializes a message object of type '<GetPosVelocity-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosVelocity-request>) istream)
  "Deserializes a message object of type '<GetPosVelocity-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosVelocity-request>)))
  "Returns string type for a service object of type '<GetPosVelocity-request>"
  "seed_robotics/GetPosVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosVelocity-request)))
  "Returns string type for a service object of type 'GetPosVelocity-request"
  "seed_robotics/GetPosVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosVelocity-request>)))
  "Returns md5sum for a message object of type '<GetPosVelocity-request>"
  "03d33e418b2174778dea8e5cd3831c82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosVelocity-request)))
  "Returns md5sum for a message object of type 'GetPosVelocity-request"
  "03d33e418b2174778dea8e5cd3831c82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosVelocity-request>)))
  "Returns full string definition for message of type '<GetPosVelocity-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosVelocity-request)))
  "Returns full string definition for message of type 'GetPosVelocity-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosVelocity-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosVelocity-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetPosVelocity-response.msg.html

(cl:defclass <GetPosVelocity-response> (roslisp-msg-protocol:ros-message)
  ((present_position
    :reader present_position
    :initarg :present_position
    :type cl:fixnum
    :initform 0)
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type cl:fixnum
    :initform 0)
   (present_velocity
    :reader present_velocity
    :initarg :present_velocity
    :type cl:fixnum
    :initform 0)
   (goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPosVelocity-response (<GetPosVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPosVelocity-response> is deprecated: use seed_robotics-srv:GetPosVelocity-response instead.")))

(cl:ensure-generic-function 'present_position-val :lambda-list '(m))
(cl:defmethod present_position-val ((m <GetPosVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:present_position-val is deprecated.  Use seed_robotics-srv:present_position instead.")
  (present_position m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <GetPosVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:goal_position-val is deprecated.  Use seed_robotics-srv:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'present_velocity-val :lambda-list '(m))
(cl:defmethod present_velocity-val ((m <GetPosVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:present_velocity-val is deprecated.  Use seed_robotics-srv:present_velocity instead.")
  (present_velocity m))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <GetPosVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:goal_velocity-val is deprecated.  Use seed_robotics-srv:goal_velocity instead.")
  (goal_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosVelocity-response>) ostream)
  "Serializes a message object of type '<GetPosVelocity-response>"
  (cl:let* ((signed (cl:slot-value msg 'present_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'present_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosVelocity-response>) istream)
  "Deserializes a message object of type '<GetPosVelocity-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'present_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'present_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosVelocity-response>)))
  "Returns string type for a service object of type '<GetPosVelocity-response>"
  "seed_robotics/GetPosVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosVelocity-response)))
  "Returns string type for a service object of type 'GetPosVelocity-response"
  "seed_robotics/GetPosVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosVelocity-response>)))
  "Returns md5sum for a message object of type '<GetPosVelocity-response>"
  "03d33e418b2174778dea8e5cd3831c82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosVelocity-response)))
  "Returns md5sum for a message object of type 'GetPosVelocity-response"
  "03d33e418b2174778dea8e5cd3831c82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosVelocity-response>)))
  "Returns full string definition for message of type '<GetPosVelocity-response>"
  (cl:format cl:nil "int16 present_position~%int16 goal_position~%int16 present_velocity~%int16 goal_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosVelocity-response)))
  "Returns full string definition for message of type 'GetPosVelocity-response"
  (cl:format cl:nil "int16 present_position~%int16 goal_position~%int16 present_velocity~%int16 goal_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosVelocity-response>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosVelocity-response
    (cl:cons ':present_position (present_position msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':present_velocity (present_velocity msg))
    (cl:cons ':goal_velocity (goal_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPosVelocity)))
  'GetPosVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPosVelocity)))
  'GetPosVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosVelocity)))
  "Returns string type for a service object of type '<GetPosVelocity>"
  "seed_robotics/GetPosVelocity")