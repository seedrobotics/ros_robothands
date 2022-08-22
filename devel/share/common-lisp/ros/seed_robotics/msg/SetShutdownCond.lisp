; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SetShutdownCond.msg.html

(cl:defclass <SetShutdownCond> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:boolean
    :initform cl:nil)
   (overload
    :reader overload
    :initarg :overload
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetShutdownCond (<SetShutdownCond>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetShutdownCond>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetShutdownCond)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SetShutdownCond> is deprecated: use seed_robotics-msg:SetShutdownCond instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetShutdownCond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:name-val is deprecated.  Use seed_robotics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <SetShutdownCond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:temperature-val is deprecated.  Use seed_robotics-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'overload-val :lambda-list '(m))
(cl:defmethod overload-val ((m <SetShutdownCond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:overload-val is deprecated.  Use seed_robotics-msg:overload instead.")
  (overload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetShutdownCond>) ostream)
  "Serializes a message object of type '<SetShutdownCond>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'temperature) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overload) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetShutdownCond>) istream)
  "Deserializes a message object of type '<SetShutdownCond>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'temperature) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overload) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetShutdownCond>)))
  "Returns string type for a message object of type '<SetShutdownCond>"
  "seed_robotics/SetShutdownCond")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetShutdownCond)))
  "Returns string type for a message object of type 'SetShutdownCond"
  "seed_robotics/SetShutdownCond")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetShutdownCond>)))
  "Returns md5sum for a message object of type '<SetShutdownCond>"
  "b50d1b8fda73a468067ba7e8581dfde8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetShutdownCond)))
  "Returns md5sum for a message object of type 'SetShutdownCond"
  "b50d1b8fda73a468067ba7e8581dfde8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetShutdownCond>)))
  "Returns full string definition for message of type '<SetShutdownCond>"
  (cl:format cl:nil "string name~%bool temperature~%bool overload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetShutdownCond)))
  "Returns full string definition for message of type 'SetShutdownCond"
  (cl:format cl:nil "string name~%bool temperature~%bool overload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetShutdownCond>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetShutdownCond>))
  "Converts a ROS message object to a list"
  (cl:list 'SetShutdownCond
    (cl:cons ':name (name msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':overload (overload msg))
))
