; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude LoneMainBoard.msg.html

(cl:defclass <LoneMainBoard> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (palm_IR_sensor
    :reader palm_IR_sensor
    :initarg :palm_IR_sensor
    :type cl:fixnum
    :initform 0)
   (capacitive_sensor_1
    :reader capacitive_sensor_1
    :initarg :capacitive_sensor_1
    :type cl:fixnum
    :initform 0)
   (capacitive_sensor_2
    :reader capacitive_sensor_2
    :initarg :capacitive_sensor_2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LoneMainBoard (<LoneMainBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoneMainBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoneMainBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<LoneMainBoard> is deprecated: use seed_robotics-msg:LoneMainBoard instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LoneMainBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:id-val is deprecated.  Use seed_robotics-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LoneMainBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:name-val is deprecated.  Use seed_robotics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'palm_IR_sensor-val :lambda-list '(m))
(cl:defmethod palm_IR_sensor-val ((m <LoneMainBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:palm_IR_sensor-val is deprecated.  Use seed_robotics-msg:palm_IR_sensor instead.")
  (palm_IR_sensor m))

(cl:ensure-generic-function 'capacitive_sensor_1-val :lambda-list '(m))
(cl:defmethod capacitive_sensor_1-val ((m <LoneMainBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:capacitive_sensor_1-val is deprecated.  Use seed_robotics-msg:capacitive_sensor_1 instead.")
  (capacitive_sensor_1 m))

(cl:ensure-generic-function 'capacitive_sensor_2-val :lambda-list '(m))
(cl:defmethod capacitive_sensor_2-val ((m <LoneMainBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:capacitive_sensor_2-val is deprecated.  Use seed_robotics-msg:capacitive_sensor_2 instead.")
  (capacitive_sensor_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoneMainBoard>) ostream)
  "Serializes a message object of type '<LoneMainBoard>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'palm_IR_sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'palm_IR_sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacitive_sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacitive_sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacitive_sensor_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacitive_sensor_2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoneMainBoard>) istream)
  "Deserializes a message object of type '<LoneMainBoard>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'palm_IR_sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'palm_IR_sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacitive_sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacitive_sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacitive_sensor_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacitive_sensor_2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoneMainBoard>)))
  "Returns string type for a message object of type '<LoneMainBoard>"
  "seed_robotics/LoneMainBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoneMainBoard)))
  "Returns string type for a message object of type 'LoneMainBoard"
  "seed_robotics/LoneMainBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoneMainBoard>)))
  "Returns md5sum for a message object of type '<LoneMainBoard>"
  "875f68e3bca4fff5a77828447db760f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoneMainBoard)))
  "Returns md5sum for a message object of type 'LoneMainBoard"
  "875f68e3bca4fff5a77828447db760f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoneMainBoard>)))
  "Returns full string definition for message of type '<LoneMainBoard>"
  (cl:format cl:nil "uint8 id~%string name~%uint16 palm_IR_sensor~%uint16 capacitive_sensor_1~%uint16 capacitive_sensor_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoneMainBoard)))
  "Returns full string definition for message of type 'LoneMainBoard"
  (cl:format cl:nil "uint8 id~%string name~%uint16 palm_IR_sensor~%uint16 capacitive_sensor_1~%uint16 capacitive_sensor_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoneMainBoard>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoneMainBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'LoneMainBoard
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':palm_IR_sensor (palm_IR_sensor msg))
    (cl:cons ':capacitive_sensor_1 (capacitive_sensor_1 msg))
    (cl:cons ':capacitive_sensor_2 (capacitive_sensor_2 msg))
))
