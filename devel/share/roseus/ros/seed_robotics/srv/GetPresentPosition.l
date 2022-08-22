;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetPresentPosition)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetPresentPosition (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETPRESENTPOSITION")
  (make-package "SEED_ROBOTICS::GETPRESENTPOSITION"))
(unless (find-package "SEED_ROBOTICS::GETPRESENTPOSITIONREQUEST")
  (make-package "SEED_ROBOTICS::GETPRESENTPOSITIONREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETPRESENTPOSITIONRESPONSE")
  (make-package "SEED_ROBOTICS::GETPRESENTPOSITIONRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetPresentPositionRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetPresentPositionRequest
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

(defclass seed_robotics::GetPresentPositionResponse
  :super ros::object
  :slots (_present_position ))

(defmethod seed_robotics::GetPresentPositionResponse
  (:init
   (&key
    ((:present_position __present_position) 0)
    )
   (send-super :init)
   (setq _present_position (round __present_position))
   self)
  (:present_position
   (&optional __present_position)
   (if __present_position (setq _present_position __present_position)) _present_position)
  (:serialization-length
   ()
   (+
    ;; int16 _present_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _present_position
       (write-word _present_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _present_position
     (setq _present_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetPresentPosition
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetPresentPosition :md5sum-) "d91c2c73f7e02d744ba302aa9965c4c8")
(setf (get seed_robotics::GetPresentPosition :datatype-) "seed_robotics/GetPresentPosition")
(setf (get seed_robotics::GetPresentPosition :request) seed_robotics::GetPresentPositionRequest)
(setf (get seed_robotics::GetPresentPosition :response) seed_robotics::GetPresentPositionResponse)

(defmethod seed_robotics::GetPresentPositionRequest
  (:response () (instance seed_robotics::GetPresentPositionResponse :init)))

(setf (get seed_robotics::GetPresentPositionRequest :md5sum-) "d91c2c73f7e02d744ba302aa9965c4c8")
(setf (get seed_robotics::GetPresentPositionRequest :datatype-) "seed_robotics/GetPresentPositionRequest")
(setf (get seed_robotics::GetPresentPositionRequest :definition-)
      "uint8 id
---
int16 present_position

")

(setf (get seed_robotics::GetPresentPositionResponse :md5sum-) "d91c2c73f7e02d744ba302aa9965c4c8")
(setf (get seed_robotics::GetPresentPositionResponse :datatype-) "seed_robotics/GetPresentPositionResponse")
(setf (get seed_robotics::GetPresentPositionResponse :definition-)
      "uint8 id
---
int16 present_position

")



(provide :seed_robotics/GetPresentPosition "d91c2c73f7e02d744ba302aa9965c4c8")


