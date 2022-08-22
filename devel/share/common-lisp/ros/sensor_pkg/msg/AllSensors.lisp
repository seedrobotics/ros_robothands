; Auto-generated. Do not edit!


(cl:in-package sensor_pkg-msg)


;//! \htmlinclude AllSensors.msg.html

(cl:defclass <AllSensors> (roslisp-msg-protocol:ros-message)
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
   (data
    :reader data
    :initarg :data
    :type (cl:vector sensor_pkg-msg:lone_sensor)
   :initform (cl:make-array 0 :element-type 'sensor_pkg-msg:lone_sensor :initial-element (cl:make-instance 'sensor_pkg-msg:lone_sensor))))
)

(cl:defclass AllSensors (<AllSensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllSensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllSensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_pkg-msg:<AllSensors> is deprecated: use sensor_pkg-msg:AllSensors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AllSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:header-val is deprecated.  Use sensor_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <AllSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:length-val is deprecated.  Use sensor_pkg-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AllSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_pkg-msg:data-val is deprecated.  Use sensor_pkg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllSensors>) ostream)
  "Serializes a message object of type '<AllSensors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllSensors>) istream)
  "Deserializes a message object of type '<AllSensors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_pkg-msg:lone_sensor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllSensors>)))
  "Returns string type for a message object of type '<AllSensors>"
  "sensor_pkg/AllSensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllSensors)))
  "Returns string type for a message object of type 'AllSensors"
  "sensor_pkg/AllSensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllSensors>)))
  "Returns md5sum for a message object of type '<AllSensors>"
  "924a629e89d5d37257a3c93c544dec03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllSensors)))
  "Returns md5sum for a message object of type 'AllSensors"
  "924a629e89d5d37257a3c93c544dec03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllSensors>)))
  "Returns full string definition for message of type '<AllSensors>"
  (cl:format cl:nil "Header header~%int8 length~%sensor_pkg/lone_sensor[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_pkg/lone_sensor~%int8 id~%int64 fx~%int64 fy~%int64 fz~%float64 abs~%float64 yaw~%float64 pitch~%bool is_present~%bool is_3D~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllSensors)))
  "Returns full string definition for message of type 'AllSensors"
  (cl:format cl:nil "Header header~%int8 length~%sensor_pkg/lone_sensor[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_pkg/lone_sensor~%int8 id~%int64 fx~%int64 fy~%int64 fz~%float64 abs~%float64 yaw~%float64 pitch~%bool is_present~%bool is_3D~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllSensors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllSensors>))
  "Converts a ROS message object to a list"
  (cl:list 'AllSensors
    (cl:cons ':header (header msg))
    (cl:cons ':length (length msg))
    (cl:cons ':data (data msg))
))
