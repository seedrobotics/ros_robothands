;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetPresentVelocity)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetPresentVelocity (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETPRESENTVELOCITY")
  (make-package "SEED_ROBOTICS::GETPRESENTVELOCITY"))
(unless (find-package "SEED_ROBOTICS::GETPRESENTVELOCITYREQUEST")
  (make-package "SEED_ROBOTICS::GETPRESENTVELOCITYREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETPRESENTVELOCITYRESPONSE")
  (make-package "SEED_ROBOTICS::GETPRESENTVELOCITYRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetPresentVelocityRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetPresentVelocityRequest
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

(defclass seed_robotics::GetPresentVelocityResponse
  :super ros::object
  :slots (_present_velocity ))

(defmethod seed_robotics::GetPresentVelocityResponse
  (:init
   (&key
    ((:present_velocity __present_velocity) 0)
    )
   (send-super :init)
   (setq _present_velocity (round __present_velocity))
   self)
  (:present_velocity
   (&optional __present_velocity)
   (if __present_velocity (setq _present_velocity __present_velocity)) _present_velocity)
  (:serialization-length
   ()
   (+
    ;; int16 _present_velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _present_velocity
       (write-word _present_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _present_velocity
     (setq _present_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetPresentVelocity
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetPresentVelocity :md5sum-) "2414cb2e4ff96bd9445295b7a5e4de44")
(setf (get seed_robotics::GetPresentVelocity :datatype-) "seed_robotics/GetPresentVelocity")
(setf (get seed_robotics::GetPresentVelocity :request) seed_robotics::GetPresentVelocityRequest)
(setf (get seed_robotics::GetPresentVelocity :response) seed_robotics::GetPresentVelocityResponse)

(defmethod seed_robotics::GetPresentVelocityRequest
  (:response () (instance seed_robotics::GetPresentVelocityResponse :init)))

(setf (get seed_robotics::GetPresentVelocityRequest :md5sum-) "2414cb2e4ff96bd9445295b7a5e4de44")
(setf (get seed_robotics::GetPresentVelocityRequest :datatype-) "seed_robotics/GetPresentVelocityRequest")
(setf (get seed_robotics::GetPresentVelocityRequest :definition-)
      "uint8 id
---
int16 present_velocity

")

(setf (get seed_robotics::GetPresentVelocityResponse :md5sum-) "2414cb2e4ff96bd9445295b7a5e4de44")
(setf (get seed_robotics::GetPresentVelocityResponse :datatype-) "seed_robotics/GetPresentVelocityResponse")
(setf (get seed_robotics::GetPresentVelocityResponse :definition-)
      "uint8 id
---
int16 present_velocity

")



(provide :seed_robotics/GetPresentVelocity "2414cb2e4ff96bd9445295b7a5e4de44")


