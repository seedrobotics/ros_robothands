; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude GetCurrent-request.msg.html

(cl:defclass <GetCurrent-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetCurrent-request (<GetCurrent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetCurrent-request> is deprecated: use seed_robotics-srv:GetCurrent-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetCurrent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id-val is deprecated.  Use seed_robotics-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrent-request>) ostream)
  "Serializes a message object of type '<GetCurrent-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrent-request>) istream)
  "Deserializes a message object of type '<GetCurrent-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrent-request>)))
  "Returns string type for a service object of type '<GetCurrent-request>"
  "seed_robotics/GetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrent-request)))
  "Returns string type for a service object of type 'GetCurrent-request"
  "seed_robotics/GetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrent-request>)))
  "Returns md5sum for a message object of type '<GetCurrent-request>"
  "e5afeed341ec02e41760a747f3e580ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrent-request)))
  "Returns md5sum for a message object of type 'GetCurrent-request"
  "e5afeed341ec02e41760a747f3e580ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrent-request>)))
  "Returns full string definition for message of type '<GetCurrent-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrent-request)))
  "Returns full string definition for message of type 'GetCurrent-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrent-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrent-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetCurrent-response.msg.html

(cl:defclass <GetCurrent-response> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetCurrent-response (<GetCurrent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<GetCurrent-response> is deprecated: use seed_robotics-srv:GetCurrent-response instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <GetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:current-val is deprecated.  Use seed_robotics-srv:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrent-response>) ostream)
  "Serializes a message object of type '<GetCurrent-response>"
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrent-response>) istream)
  "Deserializes a message object of type '<GetCurrent-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrent-response>)))
  "Returns string type for a service object of type '<GetCurrent-response>"
  "seed_robotics/GetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrent-response)))
  "Returns string type for a service object of type 'GetCurrent-response"
  "seed_robotics/GetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrent-response>)))
  "Returns md5sum for a message object of type '<GetCurrent-response>"
  "e5afeed341ec02e41760a747f3e580ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrent-response)))
  "Returns md5sum for a message object of type 'GetCurrent-response"
  "e5afeed341ec02e41760a747f3e580ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrent-response>)))
  "Returns full string definition for message of type '<GetCurrent-response>"
  (cl:format cl:nil "int16 current~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrent-response)))
  "Returns full string definition for message of type 'GetCurrent-response"
  (cl:format cl:nil "int16 current~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrent-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrent-response
    (cl:cons ':current (current msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrent)))
  'GetCurrent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrent)))
  'GetCurrent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrent)))
  "Returns string type for a service object of type '<GetCurrent>"
  "seed_robotics/GetCurrent")