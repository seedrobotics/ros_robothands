;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetGoalPosition)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetGoalPosition (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETGOALPOSITION")
  (make-package "SEED_ROBOTICS::GETGOALPOSITION"))
(unless (find-package "SEED_ROBOTICS::GETGOALPOSITIONREQUEST")
  (make-package "SEED_ROBOTICS::GETGOALPOSITIONREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETGOALPOSITIONRESPONSE")
  (make-package "SEED_ROBOTICS::GETGOALPOSITIONRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetGoalPositionRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetGoalPositionRequest
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

(defclass seed_robotics::GetGoalPositionResponse
  :super ros::object
  :slots (_goal_position ))

(defmethod seed_robotics::GetGoalPositionResponse
  (:init
   (&key
    ((:goal_position __goal_position) 0)
    )
   (send-super :init)
   (setq _goal_position (round __goal_position))
   self)
  (:goal_position
   (&optional __goal_position)
   (if __goal_position (setq _goal_position __goal_position)) _goal_position)
  (:serialization-length
   ()
   (+
    ;; int16 _goal_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _goal_position
       (write-word _goal_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _goal_position
     (setq _goal_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetGoalPosition
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetGoalPosition :md5sum-) "c6430525f1b226ec7b2120ff40297feb")
(setf (get seed_robotics::GetGoalPosition :datatype-) "seed_robotics/GetGoalPosition")
(setf (get seed_robotics::GetGoalPosition :request) seed_robotics::GetGoalPositionRequest)
(setf (get seed_robotics::GetGoalPosition :response) seed_robotics::GetGoalPositionResponse)

(defmethod seed_robotics::GetGoalPositionRequest
  (:response () (instance seed_robotics::GetGoalPositionResponse :init)))

(setf (get seed_robotics::GetGoalPositionRequest :md5sum-) "c6430525f1b226ec7b2120ff40297feb")
(setf (get seed_robotics::GetGoalPositionRequest :datatype-) "seed_robotics/GetGoalPositionRequest")
(setf (get seed_robotics::GetGoalPositionRequest :definition-)
      "uint8 id
---
int16 goal_position

")

(setf (get seed_robotics::GetGoalPositionResponse :md5sum-) "c6430525f1b226ec7b2120ff40297feb")
(setf (get seed_robotics::GetGoalPositionResponse :datatype-) "seed_robotics/GetGoalPositionResponse")
(setf (get seed_robotics::GetGoalPositionResponse :definition-)
      "uint8 id
---
int16 goal_position

")



(provide :seed_robotics/GetGoalPosition "c6430525f1b226ec7b2120ff40297feb")


