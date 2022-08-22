; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude BulkSetItem.msg.html

(cl:defclass <BulkSetItem> (roslisp-msg-protocol:ros-message)
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
    :initform "")
   (value1
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

(cl:defclass BulkSetItem (<BulkSetItem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BulkSetItem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BulkSetItem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<BulkSetItem> is deprecated: use seed_robotics-msg:BulkSetItem instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id1-val is deprecated.  Use seed_robotics-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id2-val is deprecated.  Use seed_robotics-msg:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'item1-val :lambda-list '(m))
(cl:defmethod item1-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:item1-val is deprecated.  Use seed_robotics-msg:item1 instead.")
  (item1 m))

(cl:ensure-generic-function 'item2-val :lambda-list '(m))
(cl:defmethod item2-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:item2-val is deprecated.  Use seed_robotics-msg:item2 instead.")
  (item2 m))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:value1-val is deprecated.  Use seed_robotics-msg:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <BulkSetItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:value2-val is deprecated.  Use seed_robotics-msg:value2 instead.")
  (value2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BulkSetItem>) ostream)
  "Serializes a message object of type '<BulkSetItem>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BulkSetItem>) istream)
  "Deserializes a message object of type '<BulkSetItem>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BulkSetItem>)))
  "Returns string type for a message object of type '<BulkSetItem>"
  "seed_robotics/BulkSetItem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulkSetItem)))
  "Returns string type for a message object of type 'BulkSetItem"
  "seed_robotics/BulkSetItem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BulkSetItem>)))
  "Returns md5sum for a message object of type '<BulkSetItem>"
  "57637498ac8b526dd9c5ab3d57aff27d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BulkSetItem)))
  "Returns md5sum for a message object of type 'BulkSetItem"
  "57637498ac8b526dd9c5ab3d57aff27d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BulkSetItem>)))
  "Returns full string definition for message of type '<BulkSetItem>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%string item1~%string item2~%int32 value1~%int32 value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BulkSetItem)))
  "Returns full string definition for message of type 'BulkSetItem"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%string item1~%string item2~%int32 value1~%int32 value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BulkSetItem>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'item1))
     4 (cl:length (cl:slot-value msg 'item2))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BulkSetItem>))
  "Converts a ROS message object to a list"
  (cl:list 'BulkSetItem
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':item1 (item1 msg))
    (cl:cons ':item2 (item2 msg))
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':value2 (value2 msg))
))
