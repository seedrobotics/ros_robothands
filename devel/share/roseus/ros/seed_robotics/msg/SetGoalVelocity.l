;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SetGoalVelocity)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SetGoalVelocity (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SETGOALVELOCITY")
  (make-package "SEED_ROBOTICS::SETGOALVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude SetGoalVelocity.msg.html


(defclass seed_robotics::SetGoalVelocity
  :super ros::object
  :slots (_id _goal_velocity ))

(defmethod seed_robotics::SetGoalVelocity
  (:init
   (&key
    ((:id __id) 0)
    ((:goal_velocity __goal_velocity) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal_velocity (round __goal_velocity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal_velocity
   (&optional __goal_velocity)
   (if __goal_velocity (setq _goal_velocity __goal_velocity)) _goal_velocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _goal_velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _goal_velocity
       (write-word _goal_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _goal_velocity
     (setq _goal_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get seed_robotics::SetGoalVelocity :md5sum-) "5c16c2214d42fb8949a3d64721f3982d")
(setf (get seed_robotics::SetGoalVelocity :datatype-) "seed_robotics/SetGoalVelocity")
(setf (get seed_robotics::SetGoalVelocity :definition-)
      "uint8 id
int16 goal_velocity

")



(provide :seed_robotics/SetGoalVelocity "5c16c2214d42fb8949a3d64721f3982d")


