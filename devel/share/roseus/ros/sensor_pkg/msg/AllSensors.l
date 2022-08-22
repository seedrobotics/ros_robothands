;; Auto-generated. Do not edit!


(when (boundp 'sensor_pkg::AllSensors)
  (if (not (find-package "SENSOR_PKG"))
    (make-package "SENSOR_PKG"))
  (shadow 'AllSensors (find-package "SENSOR_PKG")))
(unless (find-package "SENSOR_PKG::ALLSENSORS")
  (make-package "SENSOR_PKG::ALLSENSORS"))

(in-package "ROS")
;;//! \htmlinclude AllSensors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_pkg::AllSensors
  :super ros::object
  :slots (_header _length _data ))

(defmethod sensor_pkg::AllSensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:length __length) 0)
    ((:data __data) ())
    )
   (send-super :init)
   (setq _header __header)
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
    ;; int8 _length
    1
    ;; sensor_pkg/lone_sensor[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _length
       (write-byte _length s)
     ;; sensor_pkg/lone_sensor[] _data
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
   ;; int8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _length 127) (setq _length (- _length 256)))
   ;; sensor_pkg/lone_sensor[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance sensor_pkg::lone_sensor :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_pkg::AllSensors :md5sum-) "924a629e89d5d37257a3c93c544dec03")
(setf (get sensor_pkg::AllSensors :datatype-) "sensor_pkg/AllSensors")
(setf (get sensor_pkg::AllSensors :definition-)
      "Header header
int8 length
sensor_pkg/lone_sensor[] data

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
MSG: sensor_pkg/lone_sensor
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



(provide :sensor_pkg/AllSensors "924a629e89d5d37257a3c93c544dec03")


