; Auto-generated. Do not edit!


(cl:in-package seed_robotics-msg)


;//! \htmlinclude sensor_user_command.msg.html

(cl:defclass <sensor_user_command> (roslisp-msg-protocol:ros-message)
  ((calibrate
    :reader calibrate
    :initarg :calibrate
    :type cl:boolean
    :initform cl:nil)
   (setepoch
    :reader setepoch
    :initarg :setepoch
    :type cl:boolean
    :initform cl:nil)
   (epoch_sec
    :reader epoch_sec
    :initarg :epoch_sec
    :type cl:string
    :initform "")
   (epoch_msec
    :reader epoch_msec
    :initarg :epoch_msec
    :type cl:string
    :initform "")
   (diagnosis_request
    :reader diagnosis_request
    :initarg :diagnosis_request
    :type cl:boolean
    :initform cl:nil)
   (set_frequency
    :reader set_frequency
    :initarg :set_frequency
    :type cl:boolean
    :initform cl:nil)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:fixnum
    :initform 0)
   (raw_string
    :reader raw_string
    :initarg :raw_string
    :type cl:boolean
    :initform cl:nil)
   (raw
    :reader raw
    :initarg :raw
    :type cl:string
    :initform ""))
)

(cl:defclass sensor_user_command (<sensor_user_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor_user_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor_user_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_robotics-msg:<sensor_user_command> is deprecated: use seed_robotics-msg:sensor_user_command instead.")))

(cl:ensure-generic-function 'calibrate-val :lambda-list '(m))
(cl:defmethod calibrate-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:calibrate-val is deprecated.  Use seed_robotics-msg:calibrate instead.")
  (calibrate m))

(cl:ensure-generic-function 'setepoch-val :lambda-list '(m))
(cl:defmethod setepoch-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:setepoch-val is deprecated.  Use seed_robotics-msg:setepoch instead.")
  (setepoch m))

(cl:ensure-generic-function 'epoch_sec-val :lambda-list '(m))
(cl:defmethod epoch_sec-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:epoch_sec-val is deprecated.  Use seed_robotics-msg:epoch_sec instead.")
  (epoch_sec m))

(cl:ensure-generic-function 'epoch_msec-val :lambda-list '(m))
(cl:defmethod epoch_msec-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:epoch_msec-val is deprecated.  Use seed_robotics-msg:epoch_msec instead.")
  (epoch_msec m))

(cl:ensure-generic-function 'diagnosis_request-val :lambda-list '(m))
(cl:defmethod diagnosis_request-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:diagnosis_request-val is deprecated.  Use seed_robotics-msg:diagnosis_request instead.")
  (diagnosis_request m))

(cl:ensure-generic-function 'set_frequency-val :lambda-list '(m))
(cl:defmethod set_frequency-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:set_frequency-val is deprecated.  Use seed_robotics-msg:set_frequency instead.")
  (set_frequency m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:frequency-val is deprecated.  Use seed_robotics-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'raw_string-val :lambda-list '(m))
(cl:defmethod raw_string-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:raw_string-val is deprecated.  Use seed_robotics-msg:raw_string instead.")
  (raw_string m))

(cl:ensure-generic-function 'raw-val :lambda-list '(m))
(cl:defmethod raw-val ((m <sensor_user_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_robotics-msg:raw-val is deprecated.  Use seed_robotics-msg:raw instead.")
  (raw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor_user_command>) ostream)
  "Serializes a message object of type '<sensor_user_command>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibrate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setepoch) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'epoch_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'epoch_sec))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'epoch_msec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'epoch_msec))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'diagnosis_request) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_frequency) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'frequency)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_string) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'raw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'raw))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor_user_command>) istream)
  "Deserializes a message object of type '<sensor_user_command>"
    (cl:setf (cl:slot-value msg 'calibrate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'setepoch) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epoch_sec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'epoch_sec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epoch_msec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'epoch_msec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'diagnosis_request) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_frequency) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frequency) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'raw_string) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'raw) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'raw) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor_user_command>)))
  "Returns string type for a message object of type '<sensor_user_command>"
  "seed_robotics/sensor_user_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor_user_command)))
  "Returns string type for a message object of type 'sensor_user_command"
  "seed_robotics/sensor_user_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor_user_command>)))
  "Returns md5sum for a message object of type '<sensor_user_command>"
  "07453c0ab726c6f2c228b4f0e11711ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor_user_command)))
  "Returns md5sum for a message object of type 'sensor_user_command"
  "07453c0ab726c6f2c228b4f0e11711ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor_user_command>)))
  "Returns full string definition for message of type '<sensor_user_command>"
  (cl:format cl:nil "bool calibrate~%bool setepoch~%string epoch_sec~%string epoch_msec~%bool diagnosis_request~%bool set_frequency~%int8 frequency~%bool raw_string~%string raw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor_user_command)))
  "Returns full string definition for message of type 'sensor_user_command"
  (cl:format cl:nil "bool calibrate~%bool setepoch~%string epoch_sec~%string epoch_msec~%bool diagnosis_request~%bool set_frequency~%int8 frequency~%bool raw_string~%string raw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor_user_command>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'epoch_sec))
     4 (cl:length (cl:slot-value msg 'epoch_msec))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'raw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor_user_command>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor_user_command
    (cl:cons ':calibrate (calibrate msg))
    (cl:cons ':setepoch (setepoch msg))
    (cl:cons ':epoch_sec (epoch_sec msg))
    (cl:cons ':epoch_msec (epoch_msec msg))
    (cl:cons ':diagnosis_request (diagnosis_request msg))
    (cl:cons ':set_frequency (set_frequency msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':raw_string (raw_string msg))
    (cl:cons ':raw (raw msg))
))
