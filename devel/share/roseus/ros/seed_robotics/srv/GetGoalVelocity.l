;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetGoalVelocity)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetGoalVelocity (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETGOALVELOCITY")
  (make-package "SEED_ROBOTICS::GETGOALVELOCITY"))
(unless (find-package "SEED_ROBOTICS::GETGOALVELOCITYREQUEST")
  (make-package "SEED_ROBOTICS::GETGOALVELOCITYREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETGOALVELOCITYRESPONSE")
  (make-package "SEED_ROBOTICS::GETGOALVELOCITYRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetGoalVelocityRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetGoalVelocityRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass seed_robotics::GetGoalVelocityResponse
  :super ros::object
  :slots (_goal_velocity ))

(defmethod seed_robotics::GetGoalVelocityResponse
  (:init
   (&key
    ((:goal_velocity __goal_velocity) 0)
    )
   (send-super :init)
   (setq _goal_velocity (round __goal_velocity))
   self)
  (:goal_velocity
   (&optional __goal_velocity)
   (if __goal_velocity (setq _goal_velocity __goal_velocity)) _goal_velocity)
  (:serialization-length
   ()
   (+
    ;; int16 _goal_velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _goal_velocity
       (write-word _goal_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _goal_velocity
     (setq _goal_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetGoalVelocity
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetGoalVelocity :md5sum-) "176f1ed56ee1f0eee6e6a7fc38e4f377")
(setf (get seed_robotics::GetGoalVelocity :datatype-) "seed_robotics/GetGoalVelocity")
(setf (get seed_robotics::GetGoalVelocity :request) seed_robotics::GetGoalVelocityRequest)
(setf (get seed_robotics::GetGoalVelocity :response) seed_robotics::GetGoalVelocityResponse)

(defmethod seed_robotics::GetGoalVelocityRequest
  (:response () (instance seed_robotics::GetGoalVelocityResponse :init)))

(setf (get seed_robotics::GetGoalVelocityRequest :md5sum-) "176f1ed56ee1f0eee6e6a7fc38e4f377")
(setf (get seed_robotics::GetGoalVelocityRequest :datatype-) "seed_robotics/GetGoalVelocityRequest")
(setf (get seed_robotics::GetGoalVelocityRequest :definition-)
      "uint8 id
---
int16 goal_velocity

")

(setf (get seed_robotics::GetGoalVelocityResponse :md5sum-) "176f1ed56ee1f0eee6e6a7fc38e4f377")
(setf (get seed_robotics::GetGoalVelocityResponse :datatype-) "seed_robotics/GetGoalVelocityResponse")
(setf (get seed_robotics::GetGoalVelocityResponse :definition-)
      "uint8 id
---
int16 goal_velocity

")



(provide :seed_robotics/GetGoalVelocity "176f1ed56ee1f0eee6e6a7fc38e4f377")


