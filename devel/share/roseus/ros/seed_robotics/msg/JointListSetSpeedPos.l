;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::JointListSetSpeedPos)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'JointListSetSpeedPos (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::JOINTLISTSETSPEEDPOS")
  (make-package "SEED_ROBOTICS::JOINTLISTSETSPEEDPOS"))

(in-package "ROS")
;;//! \htmlinclude JointListSetSpeedPos.msg.html


(defclass seed_robotics::JointListSetSpeedPos
  :super ros::object
  :slots (_joints ))

(defmethod seed_robotics::JointListSetSpeedPos
  (:init
   (&key
    ((:joints __joints) ())
    )
   (send-super :init)
   (setq _joints __joints)
   self)
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
    ;; seed_robotics/JointSetSpeedPos[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; seed_robotics/JointSetSpeedPos[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; seed_robotics/JointSetSpeedPos[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance seed_robotics::JointSetSpeedPos :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::JointListSetSpeedPos :md5sum-) "d110ce7073a027c2e8fa43d4d7e9a4ca")
(setf (get seed_robotics::JointListSetSpeedPos :datatype-) "seed_robotics/JointListSetSpeedPos")
(setf (get seed_robotics::JointListSetSpeedPos :definition-)
      "seed_robotics/JointSetSpeedPos[] joints

================================================================================
MSG: seed_robotics/JointSetSpeedPos
string name
uint16 target_pos
int16 target_speed

")



(provide :seed_robotics/JointListSetSpeedPos "d110ce7073a027c2e8fa43d4d7e9a4ca")


