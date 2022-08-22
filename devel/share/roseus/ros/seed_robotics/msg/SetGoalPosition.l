;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SetGoalPosition)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SetGoalPosition (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SETGOALPOSITION")
  (make-package "SEED_ROBOTICS::SETGOALPOSITION"))

(in-package "ROS")
;;//! \htmlinclude SetGoalPosition.msg.html


(defclass seed_robotics::SetGoalPosition
  :super ros::object
  :slots (_id _goal_position ))

(defmethod seed_robotics::SetGoalPosition
  (:init
   (&key
    ((:id __id) 0)
    ((:goal_position __goal_position) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal_position (round __goal_position))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal_position
   (&optional __goal_position)
   (if __goal_position (setq _goal_position __goal_position)) _goal_position)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _goal_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _goal_position
       (write-word _goal_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _goal_position
     (setq _goal_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get seed_robotics::SetGoalPosition :md5sum-) "660418f6d1f690fc600a479e31cb5227")
(setf (get seed_robotics::SetGoalPosition :datatype-) "seed_robotics/SetGoalPosition")
(setf (get seed_robotics::SetGoalPosition :definition-)
      "uint8 id
int16 goal_position

")



(provide :seed_robotics/SetGoalPosition "660418f6d1f690fc600a479e31cb5227")


