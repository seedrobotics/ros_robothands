; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude AllMainBoards.msg.html

(cl:defclass <AllMainBoards> (roslisp-msg-protocol:ros-message)
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
   (boards
    :reader boards
    :initarg :boards
    :type (cl:vector seed_robotics-msg:LoneMainBoard)
   :initform (cl:make-array 0 :element-type 'seed_robotics-msg:LoneMainBoard :initial-element (cl:make-instance 'seed_robotics-msg:LoneMainBoard))))
)

(cl:defclass AllMainBoards (<AllMainBoards>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllMainBoards>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllMainBoards)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<AllMainBoards> is deprecated: use seed_robotics-msg:AllMainBoards instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AllMainBoards>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:header-val is deprecated.  Use seed_robotics-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <AllMainBoards>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:length-val is deprecated.  Use seed_robotics-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'boards-val :lambda-list '(m))
(cl:defmethod boards-val ((m <AllMainBoards>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:boards-val is deprecated.  Use seed_robotics-msg:boards instead.")
  (boards m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllMainBoards>) ostream)
  "Serializes a message object of type '<AllMainBoards>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boards))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boards))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllMainBoards>) istream)
  "Deserializes a message object of type '<AllMainBoards>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boards) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boards)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'seed_robotics-msg:LoneMainBoard))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllMainBoards>)))
  "Returns string type for a message object of type '<AllMainBoards>"
  "seed_robotics/AllMainBoards")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllMainBoards)))
  "Returns string type for a message object of type 'AllMainBoards"
  "seed_robotics/AllMainBoards")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllMainBoards>)))
  "Returns md5sum for a message object of type '<AllMainBoards>"
  "abd5fb0a6ebd19a335f879c68cdd135f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllMainBoards)))
  "Returns md5sum for a message object of type 'AllMainBoards"
  "abd5fb0a6ebd19a335f879c68cdd135f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllMainBoards>)))
  "Returns full string definition for message of type '<AllMainBoards>"
  (cl:format cl:nil "Header header~%uint8 length~%seed_robotics/LoneMainBoard[] boards~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: seed_robotics/LoneMainBoard~%uint8 id~%string name~%uint16 palm_IR_sensor~%uint16 capacitive_sensor_1~%uint16 capacitive_sensor_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllMainBoards)))
  "Returns full string definition for message of type 'AllMainBoards"
  (cl:format cl:nil "Header header~%uint8 length~%seed_robotics/LoneMainBoard[] boards~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: seed_robotics/LoneMainBoard~%uint8 id~%string name~%uint16 palm_IR_sensor~%uint16 capacitive_sensor_1~%uint16 capacitive_sensor_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllMainBoards>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boards) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllMainBoards>))
  "Converts a ROS message object to a list"
  (cl:list 'AllMainBoards
    (cl:cons ':header (header msg))
    (cl:cons ':length (length msg))
    (cl:cons ':boards (boards msg))
))
