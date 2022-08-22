; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude AllJoints.msg.html

(cl:defclass <AllJoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector seed_robotics-msg:LoneJoint)
   :initform (cl:make-array 0 :element-type 'seed_robotics-msg:LoneJoint :initial-element (cl:make-instance 'seed_robotics-msg:LoneJoint))))
)

(cl:defclass AllJoints (<AllJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<AllJoints> is deprecated: use seed_robotics-msg:AllJoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AllJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:header-val is deprecated.  Use seed_robotics-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <AllJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:length-val is deprecated.  Use seed_robotics-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <AllJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:joints-val is deprecated.  Use seed_robotics-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllJoints>) ostream)
  "Serializes a message object of type '<AllJoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllJoints>) istream)
  "Deserializes a message object of type '<AllJoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'seed_robotics-msg:LoneJoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllJoints>)))
  "Returns string type for a message object of type '<AllJoints>"
  "seed_robotics/AllJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllJoints)))
  "Returns string type for a message object of type 'AllJoints"
  "seed_robotics/AllJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllJoints>)))
  "Returns md5sum for a message object of type '<AllJoints>"
  "0c243bafdaa2962b834d336b24525b43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllJoints)))
  "Returns md5sum for a message object of type 'AllJoints"
  "0c243bafdaa2962b834d336b24525b43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllJoints>)))
  "Returns full string definition for message of type '<AllJoints>"
  (cl:format cl:nil "Header header~%uint8 length~%seed_robotics/LoneJoint[] joints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: seed_robotics/LoneJoint~%string name~%uint8 bus_id~%uint8 stiffness~%uint8 stress_level~%uint16 target_position~%uint16 target_speed~%uint16 torque_limit~%uint16 present_position~%int16 present_speed~%uint8 temperature~%uint8 moving~%uint8 HW_error_condition~%int16 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllJoints)))
  "Returns full string definition for message of type 'AllJoints"
  (cl:format cl:nil "Header header~%uint8 length~%seed_robotics/LoneJoint[] joints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: seed_robotics/LoneJoint~%string name~%uint8 bus_id~%uint8 stiffness~%uint8 stress_level~%uint16 target_position~%uint16 target_speed~%uint16 torque_limit~%uint16 present_position~%int16 present_speed~%uint8 temperature~%uint8 moving~%uint8 HW_error_condition~%int16 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllJoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'AllJoints
    (cl:cons ':header (header msg))
    (cl:cons ':length (length msg))
    (cl:cons ':joints (joints msg))
))
