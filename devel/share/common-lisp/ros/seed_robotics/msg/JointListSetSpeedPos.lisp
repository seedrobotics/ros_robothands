; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude JointListSetSpeedPos.msg.html

(cl:defclass <JointListSetSpeedPos> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector seed_robotics-msg:JointSetSpeedPos)
   :initform (cl:make-array 0 :element-type 'seed_robotics-msg:JointSetSpeedPos :initial-element (cl:make-instance 'seed_robotics-msg:JointSetSpeedPos))))
)

(cl:defclass JointListSetSpeedPos (<JointListSetSpeedPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointListSetSpeedPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointListSetSpeedPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<JointListSetSpeedPos> is deprecated: use seed_robotics-msg:JointListSetSpeedPos instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <JointListSetSpeedPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:joints-val is deprecated.  Use seed_robotics-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointListSetSpeedPos>) ostream)
  "Serializes a message object of type '<JointListSetSpeedPos>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointListSetSpeedPos>) istream)
  "Deserializes a message object of type '<JointListSetSpeedPos>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'seed_robotics-msg:JointSetSpeedPos))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointListSetSpeedPos>)))
  "Returns string type for a message object of type '<JointListSetSpeedPos>"
  "seed_robotics/JointListSetSpeedPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointListSetSpeedPos)))
  "Returns string type for a message object of type 'JointListSetSpeedPos"
  "seed_robotics/JointListSetSpeedPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointListSetSpeedPos>)))
  "Returns md5sum for a message object of type '<JointListSetSpeedPos>"
  "d110ce7073a027c2e8fa43d4d7e9a4ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointListSetSpeedPos)))
  "Returns md5sum for a message object of type 'JointListSetSpeedPos"
  "d110ce7073a027c2e8fa43d4d7e9a4ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointListSetSpeedPos>)))
  "Returns full string definition for message of type '<JointListSetSpeedPos>"
  (cl:format cl:nil "seed_robotics/JointSetSpeedPos[] joints~%~%================================================================================~%MSG: seed_robotics/JointSetSpeedPos~%string name~%uint16 target_pos~%int16 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointListSetSpeedPos)))
  "Returns full string definition for message of type 'JointListSetSpeedPos"
  (cl:format cl:nil "seed_robotics/JointSetSpeedPos[] joints~%~%================================================================================~%MSG: seed_robotics/JointSetSpeedPos~%string name~%uint16 target_pos~%int16 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointListSetSpeedPos>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointListSetSpeedPos>))
  "Converts a ROS message object to a list"
  (cl:list 'JointListSetSpeedPos
    (cl:cons ':joints (joints msg))
))
