; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude ListSetStiffness.msg.html

(cl:defclass <ListSetStiffness> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector seed_robotics-msg:SetStiffness)
   :initform (cl:make-array 0 :element-type 'seed_robotics-msg:SetStiffness :initial-element (cl:make-instance 'seed_robotics-msg:SetStiffness))))
)

(cl:defclass ListSetStiffness (<ListSetStiffness>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListSetStiffness>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListSetStiffness)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<ListSetStiffness> is deprecated: use seed_robotics-msg:ListSetStiffness instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <ListSetStiffness>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:joints-val is deprecated.  Use seed_robotics-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListSetStiffness>) ostream)
  "Serializes a message object of type '<ListSetStiffness>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListSetStiffness>) istream)
  "Deserializes a message object of type '<ListSetStiffness>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'seed_robotics-msg:SetStiffness))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListSetStiffness>)))
  "Returns string type for a message object of type '<ListSetStiffness>"
  "seed_robotics/ListSetStiffness")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListSetStiffness)))
  "Returns string type for a message object of type 'ListSetStiffness"
  "seed_robotics/ListSetStiffness")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListSetStiffness>)))
  "Returns md5sum for a message object of type '<ListSetStiffness>"
  "dba60e53277bd72c114abe7a790b8b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListSetStiffness)))
  "Returns md5sum for a message object of type 'ListSetStiffness"
  "dba60e53277bd72c114abe7a790b8b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListSetStiffness>)))
  "Returns full string definition for message of type '<ListSetStiffness>"
  (cl:format cl:nil "seed_robotics/SetStiffness[] joints~%~%================================================================================~%MSG: seed_robotics/SetStiffness~%string name~%uint8 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListSetStiffness)))
  "Returns full string definition for message of type 'ListSetStiffness"
  (cl:format cl:nil "seed_robotics/SetStiffness[] joints~%~%================================================================================~%MSG: seed_robotics/SetStiffness~%string name~%uint8 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListSetStiffness>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListSetStiffness>))
  "Converts a ROS message object to a list"
  (cl:list 'ListSetStiffness
    (cl:cons ':joints (joints msg))
))
