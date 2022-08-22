;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::LoneJoint)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'LoneJoint (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::LONEJOINT")
  (make-package "SEED_ROBOTICS::LONEJOINT"))

(in-package "ROS")
;;//! \htmlinclude LoneJoint.msg.html


(defclass seed_robotics::LoneJoint
  :super ros::object
  :slots (_name _bus_id _stiffness _stress_level _target_position _target_speed _torque_limit _present_position _present_speed _temperature _moving _HW_error_condition _current ))

(defmethod seed_robotics::LoneJoint
  (:init
   (&key
    ((:name __name) "")
    ((:bus_id __bus_id) 0)
    ((:stiffness __stiffness) 0)
    ((:stress_level __stress_level) 0)
    ((:target_position __target_position) 0)
    ((:target_speed __target_speed) 0)
    ((:torque_limit __torque_limit) 0)
    ((:present_position __present_position) 0)
    ((:present_speed __present_speed) 0)
    ((:temperature __temperature) 0)
    ((:moving __moving) 0)
    ((:HW_error_condition __HW_error_condition) 0)
    ((:current __current) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _bus_id (round __bus_id))
   (setq _stiffness (round __stiffness))
   (setq _stress_level (round __stress_level))
   (setq _target_position (round __target_position))
   (setq _target_speed (round __target_speed))
   (setq _torque_limit (round __torque_limit))
   (setq _present_position (round __present_position))
   (setq _present_speed (round __present_speed))
   (setq _temperature (round __temperature))
   (setq _moving (round __moving))
   (setq _HW_error_condition (round __HW_error_condition))
   (setq _current (round __current))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:bus_id
   (&optional __bus_id)
   (if __bus_id (setq _bus_id __bus_id)) _bus_id)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:stress_level
   (&optional __stress_level)
   (if __stress_level (setq _stress_level __stress_level)) _stress_level)
  (:target_position
   (&optional __target_position)
   (if __target_position (setq _target_position __target_position)) _target_position)
  (:target_speed
   (&optional __target_speed)
   (if __target_speed (setq _target_speed __target_speed)) _target_speed)
  (:torque_limit
   (&optional __torque_limit)
   (if __torque_limit (setq _torque_limit __torque_limit)) _torque_limit)
  (:present_position
   (&optional __present_position)
   (if __present_position (setq _present_position __present_position)) _present_position)
  (:present_speed
   (&optional __present_speed)
   (if __present_speed (setq _present_speed __present_speed)) _present_speed)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:HW_error_condition
   (&optional __HW_error_condition)
   (if __HW_error_condition (setq _HW_error_condition __HW_error_condition)) _HW_error_condition)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _bus_id
    1
    ;; uint8 _stiffness
    1
    ;; uint8 _stress_level
    1
    ;; uint16 _target_position
    2
    ;; uint16 _target_speed
    2
    ;; uint16 _torque_limit
    2
    ;; uint16 _present_position
    2
    ;; int16 _present_speed
    2
    ;; uint8 _temperature
    1
    ;; uint8 _moving
    1
    ;; uint8 _HW_error_condition
    1
    ;; int16 _current
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _bus_id
       (write-byte _bus_id s)
     ;; uint8 _stiffness
       (write-byte _stiffness s)
     ;; uint8 _stress_level
       (write-byte _stress_level s)
     ;; uint16 _target_position
       (write-word _target_position s)
     ;; uint16 _target_speed
       (write-word _target_speed s)
     ;; uint16 _torque_limit
       (write-word _torque_limit s)
     ;; uint16 _present_position
       (write-word _present_position s)
     ;; int16 _present_speed
       (write-word _present_speed s)
     ;; uint8 _temperature
       (write-byte _temperature s)
     ;; uint8 _moving
       (write-byte _moving s)
     ;; uint8 _HW_error_condition
       (write-byte _HW_error_condition s)
     ;; int16 _current
       (write-word _current s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _bus_id
     (setq _bus_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _stiffness
     (setq _stiffness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _stress_level
     (setq _stress_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _target_position
     (setq _target_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _target_speed
     (setq _target_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _torque_limit
     (setq _torque_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _present_position
     (setq _present_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _present_speed
     (setq _present_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _moving
     (setq _moving (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HW_error_condition
     (setq _HW_error_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get seed_robotics::LoneJoint :md5sum-) "6abe499ce867c10d257cf3acca9de505")
(setf (get seed_robotics::LoneJoint :datatype-) "seed_robotics/LoneJoint")
(setf (get seed_robotics::LoneJoint :definition-)
      "string name
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



(provide :seed_robotics/LoneJoint "6abe499ce867c10d257cf3acca9de505")


