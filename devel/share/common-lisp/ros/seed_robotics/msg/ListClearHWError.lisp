; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude ListClearHWError.msg.html

(cl:defclass <ListClearHWError> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector seed_robotics-msg:ClearHWError)
   :initform (cl:make-array 0 :element-type 'seed_robotics-msg:ClearHWError :initial-element (cl:make-instance 'seed_robotics-msg:ClearHWError))))
)

(cl:defclass ListClearHWError (<ListClearHWError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListClearHWError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListClearHWError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<ListClearHWError> is deprecated: use seed_robotics-msg:ListClearHWError instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ListClearHWError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:length-val is deprecated.  Use seed_robotics-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <ListClearHWError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:joints-val is deprecated.  Use seed_robotics-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListClearHWError>) ostream)
  "Serializes a message object of type '<ListClearHWError>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListClearHWError>) istream)
  "Deserializes a message object of type '<ListClearHWError>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'seed_robotics-msg:ClearHWError))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListClearHWError>)))
  "Returns string type for a message object of type '<ListClearHWError>"
  "seed_robotics/ListClearHWError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListClearHWError)))
  "Returns string type for a message object of type 'ListClearHWError"
  "seed_robotics/ListClearHWError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListClearHWError>)))
  "Returns md5sum for a message object of type '<ListClearHWError>"
  "958e71b9000541067274a36d79e8291e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListClearHWError)))
  "Returns md5sum for a message object of type 'ListClearHWError"
  "958e71b9000541067274a36d79e8291e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListClearHWError>)))
  "Returns full string definition for message of type '<ListClearHWError>"
  (cl:format cl:nil "uint8 length~%seed_robotics/ClearHWError[] joints~%~%================================================================================~%MSG: seed_robotics/ClearHWError~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListClearHWError)))
  "Returns full string definition for message of type 'ListClearHWError"
  (cl:format cl:nil "uint8 length~%seed_robotics/ClearHWError[] joints~%~%================================================================================~%MSG: seed_robotics/ClearHWError~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListClearHWError>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListClearHWError>))
  "Converts a ROS message object to a list"
  (cl:list 'ListClearHWError
    (cl:cons ':length (length msg))
    (cl:cons ':joints (joints msg))
))
