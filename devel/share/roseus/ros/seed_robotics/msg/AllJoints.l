;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::AllJoints)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'AllJoints (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::ALLJOINTS")
  (make-package "SEED_ROBOTICS::ALLJOINTS"))

(in-package "ROS")
;;//! \htmlinclude AllJoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass seed_robotics::AllJoints
  :super ros::object
  :slots (_header _length _joints ))

(defmethod seed_robotics::AllJoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:length __length) 0)
    ((:joints __joints) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _length (round __length))
   (setq _joints __joints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _length
    1
    ;; seed_robotics/LoneJoint[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _length
       (write-byte _length s)
     ;; seed_robotics/LoneJoint[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; seed_robotics/LoneJoint[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance seed_robotics::LoneJoint :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::AllJoints :md5sum-) "0c243bafdaa2962b834d336b24525b43")
(setf (get seed_robotics::AllJoints :datatype-) "seed_robotics/AllJoints")
(setf (get seed_robotics::AllJoints :definition-)
      "Header header
uint8 length
seed_robotics/LoneJoint[] joints

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: seed_robotics/LoneJoint
string name
uint8 bus_id
uint8 stiffness
uint8 stress_level
uint16 target_position
uint16 target_speed
uint16 torque_limit
uint16 present_position
int16 present_speed
uint8 temperature
uint8 moving
uint8 HW_error_condition
int16 current

")



(provide :seed_robotics/AllJoints "0c243bafdaa2962b834d336b24525b43")


