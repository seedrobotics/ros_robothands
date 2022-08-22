; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetPresentPosition-request.msg.html

(cl:defclass <GetPresentPosition-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPresentPosition-request (<GetPresentPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPresentPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPresentPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPresentPosition-request> is deprecated: use seed_robotics-srv:GetPresentPosition-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetPresentPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPresentPosition-request>) ostream)
  "Serializes a message object of type '<GetPresentPosition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPresentPosition-request>) istream)
  "Deserializes a message object of type '<GetPresentPosition-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPresentPosition-request>)))
  "Returns string type for a service object of type '<GetPresentPosition-request>"
  "seed_robotics/GetPresentPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentPosition-request)))
  "Returns string type for a service object of type 'GetPresentPosition-request"
  "seed_robotics/GetPresentPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPresentPosition-request>)))
  "Returns md5sum for a message object of type '<GetPresentPosition-request>"
  "d91c2c73f7e02d744ba302aa9965c4c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPresentPosition-request)))
  "Returns md5sum for a message object of type 'GetPresentPosition-request"
  "d91c2c73f7e02d744ba302aa9965c4c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPresentPosition-request>)))
  "Returns full string definition for message of type '<GetPresentPosition-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPresentPosition-request)))
  "Returns full string definition for message of type 'GetPresentPosition-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPresentPosition-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPresentPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPresentPosition-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetPresentPosition-response.msg.html

(cl:defclass <GetPresentPosition-response> (roslisp-msg-protocol:ros-message)
  ((present_position
    :reader present_position
    :initarg :present_position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPresentPosition-response (<GetPresentPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPresentPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPresentPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetPresentPosition-response> is deprecated: use seed_robotics-srv:GetPresentPosition-response instead.")))

(cl:ensure-generic-function 'present_position-val :lambda-list '(m))
(cl:defmethod present_position-val ((m <GetPresentPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:present_position-val is deprecated.  Use seed_robotics-srv:present_position instead.")
  (present_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPresentPosition-response>) ostream)
  "Serializes a message object of type '<GetPresentPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'present_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPresentPosition-response>) istream)
  "Deserializes a message object of type '<GetPresentPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'present_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPresentPosition-response>)))
  "Returns string type for a service object of type '<GetPresentPosition-response>"
  "seed_robotics/GetPresentPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentPosition-response)))
  "Returns string type for a service object of type 'GetPresentPosition-response"
  "seed_robotics/GetPresentPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPresentPosition-response>)))
  "Returns md5sum for a message object of type '<GetPresentPosition-response>"
  "d91c2c73f7e02d744ba302aa9965c4c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPresentPosition-response)))
  "Returns md5sum for a message object of type 'GetPresentPosition-response"
  "d91c2c73f7e02d744ba302aa9965c4c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPresentPosition-response>)))
  "Returns full string definition for message of type '<GetPresentPosition-response>"
  (cl:format cl:nil "int16 present_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPresentPosition-response)))
  "Returns full string definition for message of type 'GetPresentPosition-response"
  (cl:format cl:nil "int16 present_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPresentPosition-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPresentPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPresentPosition-response
    (cl:cons ':present_position (present_position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPresentPosition)))
  'GetPresentPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPresentPosition)))
  'GetPresentPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPresentPosition)))
  "Returns string type for a service object of type '<GetPresentPosition>"
  "seed_robotics/GetPresentPosition")