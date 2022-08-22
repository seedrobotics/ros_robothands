; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetTemperature-request.msg.html

(cl:defclass <GetTemperature-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTemperature-request (<GetTemperature-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemperature-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemperature-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetTemperature-request> is deprecated: use seed_robotics-srv:GetTemperature-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetTemperature-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemperature-request>) ostream)
  "Serializes a message object of type '<GetTemperature-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemperature-request>) istream)
  "Deserializes a message object of type '<GetTemperature-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemperature-request>)))
  "Returns string type for a service object of type '<GetTemperature-request>"
  "seed_robotics/GetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature-request)))
  "Returns string type for a service object of type 'GetTemperature-request"
  "seed_robotics/GetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemperature-request>)))
  "Returns md5sum for a message object of type '<GetTemperature-request>"
  "89b37f343ec5c3e46049b037c86c9747")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemperature-request)))
  "Returns md5sum for a message object of type 'GetTemperature-request"
  "89b37f343ec5c3e46049b037c86c9747")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemperature-request>)))
  "Returns full string definition for message of type '<GetTemperature-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemperature-request)))
  "Returns full string definition for message of type 'GetTemperature-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemperature-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemperature-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemperature-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetTemperature-response.msg.html

(cl:defclass <GetTemperature-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTemperature-response (<GetTemperature-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemperature-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemperature-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetTemperature-response> is deprecated: use seed_robotics-srv:GetTemperature-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <GetTemperature-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:temperature-val is deprecated.  Use seed_robotics-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemperature-response>) ostream)
  "Serializes a message object of type '<GetTemperature-response>"
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemperature-response>) istream)
  "Deserializes a message object of type '<GetTemperature-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemperature-response>)))
  "Returns string type for a service object of type '<GetTemperature-response>"
  "seed_robotics/GetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature-response)))
  "Returns string type for a service object of type 'GetTemperature-response"
  "seed_robotics/GetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemperature-response>)))
  "Returns md5sum for a message object of type '<GetTemperature-response>"
  "89b37f343ec5c3e46049b037c86c9747")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemperature-response)))
  "Returns md5sum for a message object of type 'GetTemperature-response"
  "89b37f343ec5c3e46049b037c86c9747")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemperature-response>)))
  "Returns full string definition for message of type '<GetTemperature-response>"
  (cl:format cl:nil "int8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemperature-response)))
  "Returns full string definition for message of type 'GetTemperature-response"
  (cl:format cl:nil "int8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemperature-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemperature-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemperature-response
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTemperature)))
  'GetTemperature-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTemperature)))
  'GetTemperature-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature)))
  "Returns string type for a service object of type '<GetTemperature>"
  "seed_robotics/GetTemperature")