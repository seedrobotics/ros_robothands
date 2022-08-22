;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::AllSensors)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'AllSensors (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::ALLSENSORS")
  (make-package "SEED_ROBOTICS::ALLSENSORS"))

(in-package "ROS")
;;//! \htmlinclude AllSensors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass seed_robotics::AllSensors
  :super ros::object
  :slots (_header _hand_polarity _length _data ))

(defmethod seed_robotics::AllSensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hand_polarity __hand_polarity) "")
    ((:length __length) 0)
    ((:data __data) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _hand_polarity (string __hand_polarity))
   (setq _length (round __length))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hand_polarity
   (&optional __hand_polarity)
   (if __hand_polarity (setq _hand_polarity __hand_polarity)) _hand_polarity)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hand_polarity
    4 (length _hand_polarity)
    ;; int8 _length
    1
    ;; seed_robotics/lone_sensor[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hand_polarity
       (write-long (length _hand_polarity) s) (princ _hand_polarity s)
     ;; int8 _length
       (write-byte _length s)
     ;; seed_robotics/lone_sensor[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hand_polarity
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hand_polarity (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _length 127) (setq _length (- _length 256)))
   ;; seed_robotics/lone_sensor[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance seed_robotics::lone_sensor :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::AllSensors :md5sum-) "7fc8e5608d349b81ac8bdfd33a1df714")
(setf (get seed_robotics::AllSensors :datatype-) "seed_robotics/AllSensors")
(setf (get seed_robotics::AllSensors :definition-)
      "Header header
string hand_polarity
int8 length
seed_robotics/lone_sensor[] data

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
MSG: seed_robotics/lone_sensor
int8 id
int64 fx
int64 fy
int64 fz
float64 abs
float64 yaw
float64 pitch
bool is_present
bool is_3D

")



(provide :seed_robotics/AllSensors "7fc8e5608d349b81ac8bdfd33a1df714")


