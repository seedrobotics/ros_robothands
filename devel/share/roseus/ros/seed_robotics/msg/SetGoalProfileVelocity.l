;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SetGoalProfileVelocity)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SetGoalProfileVelocity (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SETGOALPROFILEVELOCITY")
  (make-package "SEED_ROBOTICS::SETGOALPROFILEVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude SetGoalProfileVelocity.msg.html


(defclass seed_robotics::SetGoalProfileVelocity
  :super ros::object
  :slots (_id _goal_profile_velocity ))

(defmethod seed_robotics::SetGoalProfileVelocity
  (:init
   (&key
    ((:id __id) 0)
    ((:goal_profile_velocity __goal_profile_velocity) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal_profile_velocity (round __goal_profile_velocity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal_profile_velocity
   (&optional __goal_profile_velocity)
   (if __goal_profile_velocity (setq _goal_profile_velocity __goal_profile_velocity)) _goal_profile_velocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int32 _goal_profile_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int32 _goal_profile_velocity
       (write-long _goal_profile_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _goal_profile_velocity
     (setq _goal_profile_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get seed_robotics::SetGoalProfileVelocity :md5sum-) "46b70f7b9e0160279323583cbdf16e19")
(setf (get seed_robotics::SetGoalProfileVelocity :datatype-) "seed_robotics/SetGoalProfileVelocity")
(setf (get seed_robotics::SetGoalProfileVelocity :definition-)
      "uint8 id
int32 goal_profile_velocity

")



(provide :seed_robotics/SetGoalProfileVelocity "46b70f7b9e0160279323583cbdf16e19")


