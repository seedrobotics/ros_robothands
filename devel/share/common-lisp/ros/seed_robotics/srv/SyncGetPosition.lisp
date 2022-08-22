; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude SyncGetPosition-request.msg.html

(cl:defclass <SyncGetPosition-request> (roslisp-msg-protocol:ros-message)
  ((id1
    :reader id1
    :initarg :id1
    :type cl:fixnum
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SyncGetPosition-request (<SyncGetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncGetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncGetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<SyncGetPosition-request> is deprecated: use seed_robotics-srv:SyncGetPosition-request instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <SyncGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id1-val is deprecated.  Use seed_robotics-srv:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <SyncGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id2-val is deprecated.  Use seed_robotics-srv:id2 instead.")
  (id2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncGetPosition-request>) ostream)
  "Serializes a message object of type '<SyncGetPosition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncGetPosition-request>) istream)
  "Deserializes a message object of type '<SyncGetPosition-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncGetPosition-request>)))
  "Returns string type for a service object of type '<SyncGetPosition-request>"
  "seed_robotics/SyncGetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncGetPosition-request)))
  "Returns string type for a service object of type 'SyncGetPosition-request"
  "seed_robotics/SyncGetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncGetPosition-request>)))
  "Returns md5sum for a message object of type '<SyncGetPosition-request>"
  "4a5a90af26ce6360c45e1980f134941b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncGetPosition-request)))
  "Returns md5sum for a message object of type 'SyncGetPosition-request"
  "4a5a90af26ce6360c45e1980f134941b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncGetPosition-request>)))
  "Returns full string definition for message of type '<SyncGetPosition-request>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncGetPosition-request)))
  "Returns full string definition for message of type 'SyncGetPosition-request"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncGetPosition-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncGetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncGetPosition-request
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
))
;//! \htmlinclude SyncGetPosition-response.msg.html

(cl:defclass <SyncGetPosition-response> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:integer
    :initform 0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncGetPosition-response (<SyncGetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncGetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncGetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<SyncGetPosition-response> is deprecated: use seed_robotics-srv:SyncGetPosition-response instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <SyncGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:position1-val is deprecated.  Use seed_robotics-srv:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <SyncGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:position2-val is deprecated.  Use seed_robotics-srv:position2 instead.")
  (position2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncGetPosition-response>) ostream)
  "Serializes a message object of type '<SyncGetPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'position1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncGetPosition-response>) istream)
  "Deserializes a message object of type '<SyncGetPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncGetPosition-response>)))
  "Returns string type for a service object of type '<SyncGetPosition-response>"
  "seed_robotics/SyncGetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncGetPosition-response)))
  "Returns string type for a service object of type 'SyncGetPosition-response"
  "seed_robotics/SyncGetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncGetPosition-response>)))
  "Returns md5sum for a message object of type '<SyncGetPosition-response>"
  "4a5a90af26ce6360c45e1980f134941b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncGetPosition-response)))
  "Returns md5sum for a message object of type 'SyncGetPosition-response"
  "4a5a90af26ce6360c45e1980f134941b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncGetPosition-response>)))
  "Returns full string definition for message of type '<SyncGetPosition-response>"
  (cl:format cl:nil "int32 position1~%int32 position2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncGetPosition-response)))
  "Returns full string definition for message of type 'SyncGetPosition-response"
  (cl:format cl:nil "int32 position1~%int32 position2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncGetPosition-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncGetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncGetPosition-response
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SyncGetPosition)))
  'SyncGetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SyncGetPosition)))
  'SyncGetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncGetPosition)))
  "Returns string type for a service object of type '<SyncGetPosition>"
  "seed_robotics/SyncGetPosition")