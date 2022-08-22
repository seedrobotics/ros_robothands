;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::JointSetSpeedPos)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'JointSetSpeedPos (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::JOINTSETSPEEDPOS")
  (make-package "SEED_ROBOTICS::JOINTSETSPEEDPOS"))

(in-package "ROS")
;;//! \htmlinclude JointSetSpeedPos.msg.html


(defclass seed_robotics::JointSetSpeedPos
  :super ros::object
  :slots (_name _target_pos _target_speed ))

(defmethod seed_robotics::JointSetSpeedPos
  (:init
   (&key
    ((:name __name) "")
    ((:target_pos __target_pos) 0)
    ((:target_speed __target_speed) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _target_pos (round __target_pos))
   (setq _target_speed (round __target_speed))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:target_speed
   (&optional __target_speed)
   (if __target_speed (setq _target_speed __target_speed)) _target_speed)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint16 _target_pos
    2
    ;; int16 _target_speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _target_pos
       (write-word _target_pos s)
     ;; int16 _target_speed
       (write-word _target_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _target_pos
     (setq _target_pos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_speed
     (setq _target_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get seed_robotics::JointSetSpeedPos :md5sum-) "081224d8d07c92db7062a286ebd648c5")
(setf (get seed_robotics::JointSetSpeedPos :datatype-) "seed_robotics/JointSetSpeedPos")
(setf (get seed_robotics::JointSetSpeedPos :definition-)
      "string name
uint16 target_pos
int16 target_speed

")



(provide :seed_robotics/JointSetSpeedPos "081224d8d07c92db7062a286ebd648c5")


