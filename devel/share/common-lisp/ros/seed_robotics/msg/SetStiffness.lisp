; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude SetStiffness.msg.html

(cl:defclass <SetStiffness> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (stiffness
    :reader stiffness
    :initarg :stiffness
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetStiffness (<SetStiffness>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStiffness>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStiffness)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<SetStiffness> is deprecated: use seed_robotics-msg:SetStiffness instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetStiffness>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:name-val is deprecated.  Use seed_robotics-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <SetStiffness>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:stiffness-val is deprecated.  Use seed_robotics-msg:stiffness instead.")
  (stiffness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStiffness>) ostream)
  "Serializes a message object of type '<SetStiffness>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stiffness)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStiffness>) istream)
  "Deserializes a message object of type '<SetStiffness>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stiffness)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStiffness>)))
  "Returns string type for a message object of type '<SetStiffness>"
  "seed_robotics/SetStiffness")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStiffness)))
  "Returns string type for a message object of type 'SetStiffness"
  "seed_robotics/SetStiffness")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStiffness>)))
  "Returns md5sum for a message object of type '<SetStiffness>"
  "e627d33eb361fcbabec59ee9bcb98a67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStiffness)))
  "Returns md5sum for a message object of type 'SetStiffness"
  "e627d33eb361fcbabec59ee9bcb98a67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStiffness>)))
  "Returns full string definition for message of type '<SetStiffness>"
  (cl:format cl:nil "string name~%uint8 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStiffness)))
  "Returns full string definition for message of type 'SetStiffness"
  (cl:format cl:nil "string name~%uint8 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStiffness>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStiffness>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStiffness
    (cl:cons ':name (name msg))
    (cl:cons ':stiffness (stiffness msg))
))
