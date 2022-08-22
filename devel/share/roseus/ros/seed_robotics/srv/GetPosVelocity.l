;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetPosVelocity)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetPosVelocity (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETPOSVELOCITY")
  (make-package "SEED_ROBOTICS::GETPOSVELOCITY"))
(unless (find-package "SEED_ROBOTICS::GETPOSVELOCITYREQUEST")
  (make-package "SEED_ROBOTICS::GETPOSVELOCITYREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETPOSVELOCITYRESPONSE")
  (make-package "SEED_ROBOTICS::GETPOSVELOCITYRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetPosVelocityRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetPosVelocityRequest
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

(defclass seed_robotics::GetPosVelocityResponse
  :super ros::object
  :slots (_present_position _goal_position _present_velocity _goal_velocity ))

(defmethod seed_robotics::GetPosVelocityResponse
  (:init
   (&key
    ((:present_position __present_position) 0)
    ((:goal_position __goal_position) 0)
    ((:present_velocity __present_velocity) 0)
    ((:goal_velocity __goal_velocity) 0)
    )
   (send-super :init)
   (setq _present_position (round __present_position))
   (setq _goal_position (round __goal_position))
   (setq _present_velocity (round __present_velocity))
   (setq _goal_velocity (round __goal_velocity))
   self)
  (:present_position
   (&optional __present_position)
   (if __present_position (setq _present_position __present_position)) _present_position)
  (:goal_position
   (&optional __goal_position)
   (if __goal_position (setq _goal_position __goal_position)) _goal_position)
  (:present_velocity
   (&optional __present_velocity)
   (if __present_velocity (setq _present_velocity __present_velocity)) _present_velocity)
  (:goal_velocity
   (&optional __goal_velocity)
   (if __goal_velocity (setq _goal_velocity __goal_velocity)) _goal_velocity)
  (:serialization-length
   ()
   (+
    ;; int16 _present_position
    2
    ;; int16 _goal_position
    2
    ;; int16 _present_velocity
    2
    ;; int16 _goal_velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _present_position
       (write-word _present_position s)
     ;; int16 _goal_position
       (write-word _goal_position s)
     ;; int16 _present_velocity
       (write-word _present_velocity s)
     ;; int16 _goal_velocity
       (write-word _goal_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _present_position
     (setq _present_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _goal_position
     (setq _goal_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _present_velocity
     (setq _present_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _goal_velocity
     (setq _goal_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetPosVelocity
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetPosVelocity :md5sum-) "03d33e418b2174778dea8e5cd3831c82")
(setf (get seed_robotics::GetPosVelocity :datatype-) "seed_robotics/GetPosVelocity")
(setf (get seed_robotics::GetPosVelocity :request) seed_robotics::GetPosVelocityRequest)
(setf (get seed_robotics::GetPosVelocity :response) seed_robotics::GetPosVelocityResponse)

(defmethod seed_robotics::GetPosVelocityRequest
  (:response () (instance seed_robotics::GetPosVelocityResponse :init)))

(setf (get seed_robotics::GetPosVelocityRequest :md5sum-) "03d33e418b2174778dea8e5cd3831c82")
(setf (get seed_robotics::GetPosVelocityRequest :datatype-) "seed_robotics/GetPosVelocityRequest")
(setf (get seed_robotics::GetPosVelocityRequest :definition-)
      "uint8 id
---
int16 present_position
int16 goal_position
int16 present_velocity
int16 goal_velocity

")

(setf (get seed_robotics::GetPosVelocityResponse :md5sum-) "03d33e418b2174778dea8e5cd3831c82")
(setf (get seed_robotics::GetPosVelocityResponse :datatype-) "seed_robotics/GetPosVelocityResponse")
(setf (get seed_robotics::GetPosVelocityResponse :definition-)
      "uint8 id
---
int16 present_position
int16 goal_position
int16 present_velocity
int16 goal_velocity

")



(provide :seed_robotics/GetPosVelocity "03d33e418b2174778dea8e5cd3831c82")


