; Auto-generated. Do not edit!


(cl:in-package seed_robotics-srv)


;//! \htmlinclude BulkGetItem-request.msg.html

(cl:defclass <BulkGetItem-request> (roslisp-msg-protocol:ros-message)
  ((id1
    :reader id1
    :initarg :id1
    :type cl:fixnum
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:fixnum
    :initform 0)
   (item1
    :reader item1
    :initarg :item1
    :type cl:string
    :initform "")
   (item2
    :reader item2
    :initarg :item2
    :type cl:string
    :initform ""))
)

(cl:defclass BulkGetItem-request (<BulkGetItem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BulkGetItem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BulkGetItem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<BulkGetItem-request> is deprecated: use seed_robotics-srv:BulkGetItem-request instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <BulkGetItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id1-val is deprecated.  Use seed_robotics-srv:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <BulkGetItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:id2-val is deprecated.  Use seed_robotics-srv:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'item1-val :lambda-list '(m))
(cl:defmethod item1-val ((m <BulkGetItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:item1-val is deprecated.  Use seed_robotics-srv:item1 instead.")
  (item1 m))

(cl:ensure-generic-function 'item2-val :lambda-list '(m))
(cl:defmethod item2-val ((m <BulkGetItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:item2-val is deprecated.  Use seed_robotics-srv:item2 instead.")
  (item2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BulkGetItem-request>) ostream)
  "Serializes a message object of type '<BulkGetItem-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'item1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'item1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'item2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'item2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BulkGetItem-request>) istream)
  "Deserializes a message object of type '<BulkGetItem-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'item1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'item1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'item2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'item2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BulkGetItem-request>)))
  "Returns string type for a service object of type '<BulkGetItem-request>"
  "seed_robotics/BulkGetItemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulkGetItem-request)))
  "Returns string type for a service object of type 'BulkGetItem-request"
  "seed_robotics/BulkGetItemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BulkGetItem-request>)))
  "Returns md5sum for a message object of type '<BulkGetItem-request>"
  "f0b74b4d53178e0d0ede26a30b687544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BulkGetItem-request)))
  "Returns md5sum for a message object of type 'BulkGetItem-request"
  "f0b74b4d53178e0d0ede26a30b687544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BulkGetItem-request>)))
  "Returns full string definition for message of type '<BulkGetItem-request>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%string item1~%string item2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BulkGetItem-request)))
  "Returns full string definition for message of type 'BulkGetItem-request"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%string item1~%string item2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BulkGetItem-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'item1))
     4 (cl:length (cl:slot-value msg 'item2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BulkGetItem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BulkGetItem-request
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':item1 (item1 msg))
    (cl:cons ':item2 (item2 msg))
))
;//! \htmlinclude BulkGetItem-response.msg.html

(cl:defclass <BulkGetItem-response> (roslisp-msg-protocol:ros-message)
  ((value1
    :reader value1
    :initarg :value1
    :type cl:integer
    :initform 0)
   (value2
    :reader value2
    :initarg :value2
    :type cl:integer
    :initform 0))
)

(cl:defclass BulkGetItem-response (<BulkGetItem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BulkGetItem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BulkGetItem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-srv:<BulkGetItem-response> is deprecated: use seed_robotics-srv:BulkGetItem-response instead.")))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <BulkGetItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:value1-val is deprecated.  Use seed_robotics-srv:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <BulkGetItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-srv:value2-val is deprecated.  Use seed_robotics-srv:value2 instead.")
  (value2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BulkGetItem-response>) ostream)
  "Serializes a message object of type '<BulkGetItem-response>"
  (cl:let* ((signed (cl:slot-value msg 'value1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BulkGetItem-response>) istream)
  "Deserializes a message object of type '<BulkGetItem-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BulkGetItem-response>)))
  "Returns string type for a service object of type '<BulkGetItem-response>"
  "seed_robotics/BulkGetItemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulkGetItem-response)))
  "Returns string type for a service object of type 'BulkGetItem-response"
  "seed_robotics/BulkGetItemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BulkGetItem-response>)))
  "Returns md5sum for a message object of type '<BulkGetItem-response>"
  "f0b74b4d53178e0d0ede26a30b687544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BulkGetItem-response)))
  "Returns md5sum for a message object of type 'BulkGetItem-response"
  "f0b74b4d53178e0d0ede26a30b687544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BulkGetItem-response>)))
  "Returns full string definition for message of type '<BulkGetItem-response>"
  (cl:format cl:nil "int32 value1~%int32 value2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BulkGetItem-response)))
  "Returns full string definition for message of type 'BulkGetItem-response"
  (cl:format cl:nil "int32 value1~%int32 value2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BulkGetItem-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BulkGetItem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BulkGetItem-response
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':value2 (value2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BulkGetItem)))
  'BulkGetItem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BulkGetItem)))
  'BulkGetItem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulkGetItem)))
  "Returns string type for a service object of type '<BulkGetItem>"
  "seed_robotics/BulkGetItem")