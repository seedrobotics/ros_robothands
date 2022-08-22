; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetTempCurr-request.msg.html

(cl:defclass <GetTempCurr-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTempCurr-request (<GetTempCurr-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTempCurr-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTempCurr-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetTempCurr-request> is deprecated: use seed_robotics-srv:GetTempCurr-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetTempCurr-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTempCurr-request>) ostream)
  "Serializes a message object of type '<GetTempCurr-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTempCurr-request>) istream)
  "Deserializes a message object of type '<GetTempCurr-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTempCurr-request>)))
  "Returns string type for a service object of type '<GetTempCurr-request>"
  "seed_robotics/GetTempCurrRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTempCurr-request)))
  "Returns string type for a service object of type 'GetTempCurr-request"
  "seed_robotics/GetTempCurrRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTempCurr-request>)))
  "Returns md5sum for a message object of type '<GetTempCurr-request>"
  "f7123ebb92ae5f9e20543d821a1be8fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTempCurr-request)))
  "Returns md5sum for a message object of type 'GetTempCurr-request"
  "f7123ebb92ae5f9e20543d821a1be8fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTempCurr-request>)))
  "Returns full string definition for message of type '<GetTempCurr-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTempCurr-request)))
  "Returns full string definition for message of type 'GetTempCurr-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTempCurr-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTempCurr-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTempCurr-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetTempCurr-response.msg.html

(cl:defclass <GetTempCurr-response> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTempCurr-response (<GetTempCurr-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTempCurr-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTempCurr-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetTempCurr-response> is deprecated: use seed_robotics-srv:GetTempCurr-response instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <GetTempCurr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:current-val is deprecated.  Use seed_robotics-srv:current instead.")
  (current m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <GetTempCurr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:temperature-val is deprecated.  Use seed_robotics-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTempCurr-response>) ostream)
  "Serializes a message object of type '<GetTempCurr-response>"
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTempCurr-response>) istream)
  "Deserializes a message object of type '<GetTempCurr-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTempCurr-response>)))
  "Returns string type for a service object of type '<GetTempCurr-response>"
  "seed_robotics/GetTempCurrResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTempCurr-response)))
  "Returns string type for a service object of type 'GetTempCurr-response"
  "seed_robotics/GetTempCurrResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTempCurr-response>)))
  "Returns md5sum for a message object of type '<GetTempCurr-response>"
  "f7123ebb92ae5f9e20543d821a1be8fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTempCurr-response)))
  "Returns md5sum for a message object of type 'GetTempCurr-response"
  "f7123ebb92ae5f9e20543d821a1be8fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTempCurr-response>)))
  "Returns full string definition for message of type '<GetTempCurr-response>"
  (cl:format cl:nil "int16 current~%int8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTempCurr-response)))
  "Returns full string definition for message of type 'GetTempCurr-response"
  (cl:format cl:nil "int16 current~%int8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTempCurr-response>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTempCurr-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTempCurr-response
    (cl:cons ':current (current msg))
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTempCurr)))
  'GetTempCurr-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTempCurr)))
  'GetTempCurr-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTempCurr)))
  "Returns string type for a service object of type '<GetTempCurr>"
  "seed_robotics/GetTempCurr")