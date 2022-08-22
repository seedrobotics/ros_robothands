;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::AllMainBoards)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'AllMainBoards (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::ALLMAINBOARDS")
  (make-package "SEED_ROBOTICS::ALLMAINBOARDS"))

(in-package "ROS")
;;//! \htmlinclude AllMainBoards.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass seed_robotics::AllMainBoards
  :super ros::object
  :slots (_header _length _boards ))

(defmethod seed_robotics::AllMainBoards
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:length __length) 0)
    ((:boards __boards) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _length (round __length))
   (setq _boards __boards)
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
  (:boards
   (&rest __boards)
   (if (keywordp (car __boards))
       (send* _boards __boards)
     (progn
       (if __boards (setq _boards (car __boards)))
       _boards)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _length
    1
    ;; seed_robotics/LoneMainBoard[] _boards
    (apply #'+ (send-all _boards :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _length
       (write-byte _length s)
     ;; seed_robotics/LoneMainBoard[] _boards
     (write-long (length _boards) s)
     (dolist (elem _boards)
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
   ;; seed_robotics/LoneMainBoard[] _boards
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boards (let (r) (dotimes (i n) (push (instance seed_robotics::LoneMainBoard :init) r)) r))
     (dolist (elem- _boards)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::AllMainBoards :md5sum-) "abd5fb0a6ebd19a335f879c68cdd135f")
(setf (get seed_robotics::AllMainBoards :datatype-) "seed_robotics/AllMainBoards")
(setf (get seed_robotics::AllMainBoards :definition-)
      "Header header
uint8 length
seed_robotics/LoneMainBoard[] boards

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
MSG: seed_robotics/LoneMainBoard
uint8 id
string name
uint16 palm_IR_sensor
uint16 capacitive_sensor_1
uint16 capacitive_sensor_2

")



(provide :seed_robotics/AllMainBoards "abd5fb0a6ebd19a335f879c68cdd135f")


