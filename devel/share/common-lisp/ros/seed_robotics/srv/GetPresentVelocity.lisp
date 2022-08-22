; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetPresentVelocity-request.msg.html

(cl:defclass <GetPresentVelocity-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPresentVelocity-request (<GetPresentVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPresentVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPresentVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPresentVelocity-request> is deprecated: use seed_robotics-srv:GetPresentVelocity-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetPresentVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPresentVelocity-request>) ostream)
  "Serializes a message object of type '<GetPresentVelocity-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPresentVelocity-request>) istream)
  "Deserializes a message object of type '<GetPresentVelocity-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPresentVelocity-request>)))
  "Returns string type for a service object of type '<GetPresentVelocity-request>"
  "seed_robotics/GetPresentVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentVelocity-request)))
  "Returns string type for a service object of type 'GetPresentVelocity-request"
  "seed_robotics/GetPresentVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPresentVelocity-request>)))
  "Returns md5sum for a message object of type '<GetPresentVelocity-request>"
  "2414cb2e4ff96bd9445295b7a5e4de44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPresentVelocity-request)))
  "Returns md5sum for a message object of type 'GetPresentVelocity-request"
  "2414cb2e4ff96bd9445295b7a5e4de44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPresentVelocity-request>)))
  "Returns full string definition for message of type '<GetPresentVelocity-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPresentVelocity-request)))
  "Returns full string definition for message of type 'GetPresentVelocity-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPresentVelocity-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPresentVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPresentVelocity-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetPresentVelocity-response.msg.html

(cl:defclass <GetPresentVelocity-response> (roslisp-msg-protocol:ros-message)
  ((present_velocity
    :reader present_velocity
    :initarg :present_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPresentVelocity-response (<GetPresentVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPresentVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPresentVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPresentVelocity-response> is deprecated: use seed_robotics-srv:GetPresentVelocity-response instead.")))

(cl:ensure-generic-function 'present_velocity-val :lambda-list '(m))
(cl:defmethod present_velocity-val ((m <GetPresentVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:present_velocity-val is deprecated.  Use seed_robotics-srv:present_velocity instead.")
  (present_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPresentVelocity-response>) ostream)
  "Serializes a message object of type '<GetPresentVelocity-response>"
  (cl:let* ((signed (cl:slot-value msg 'present_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPresentVelocity-response>) istream)
  "Deserializes a message object of type '<GetPresentVelocity-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'present_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPresentVelocity-response>)))
  "Returns string type for a service object of type '<GetPresentVelocity-response>"
  "seed_robotics/GetPresentVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentVelocity-response)))
  "Returns string type for a service object of type 'GetPresentVelocity-response"
  "seed_robotics/GetPresentVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPresentVelocity-response>)))
  "Returns md5sum for a message object of type '<GetPresentVelocity-response>"
  "2414cb2e4ff96bd9445295b7a5e4de44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPresentVelocity-response)))
  "Returns md5sum for a message object of type 'GetPresentVelocity-response"
  "2414cb2e4ff96bd9445295b7a5e4de44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPresentVelocity-response>)))
  "Returns full string definition for message of type '<GetPresentVelocity-response>"
  (cl:format cl:nil "int16 present_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPresentVelocity-response)))
  "Returns full string definition for message of type 'GetPresentVelocity-response"
  (cl:format cl:nil "int16 present_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPresentVelocity-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPresentVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPresentVelocity-response
    (cl:cons ':present_velocity (present_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPresentVelocity)))
  'GetPresentVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPresentVelocity)))
  'GetPresentVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentVelocity)))
  "Returns string type for a service object of type '<GetPresentVelocity>"
  "seed_robotics/GetPresentVelocity")