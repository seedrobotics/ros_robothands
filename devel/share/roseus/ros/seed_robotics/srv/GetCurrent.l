;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetCurrent)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetCurrent (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETCURRENT")
  (make-package "SEED_ROBOTICS::GETCURRENT"))
(unless (find-package "SEED_ROBOTICS::GETCURRENTREQUEST")
  (make-package "SEED_ROBOTICS::GETCURRENTREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETCURRENTRESPONSE")
  (make-package "SEED_ROBOTICS::GETCURRENTRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetCurrentRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetCurrentRequest
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

(defclass seed_robotics::GetCurrentResponse
  :super ros::object
  :slots (_current ))

(defmethod seed_robotics::GetCurrentResponse
  (:init
   (&key
    ((:current __current) 0)
    )
   (send-super :init)
   (setq _current (round __current))
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; int16 _current
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _current
       (write-word _current s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_robotics::GetCurrent
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetCurrent :md5sum-) "e5afeed341ec02e41760a747f3e580ae")
(setf (get seed_robotics::GetCurrent :datatype-) "seed_robotics/GetCurrent")
(setf (get seed_robotics::GetCurrent :request) seed_robotics::GetCurrentRequest)
(setf (get seed_robotics::GetCurrent :response) seed_robotics::GetCurrentResponse)

(defmethod seed_robotics::GetCurrentRequest
  (:response () (instance seed_robotics::GetCurrentResponse :init)))

(setf (get seed_robotics::GetCurrentRequest :md5sum-) "e5afeed341ec02e41760a747f3e580ae")
(setf (get seed_robotics::GetCurrentRequest :datatype-) "seed_robotics/GetCurrentRequest")
(setf (get seed_robotics::GetCurrentRequest :definition-)
      "uint8 id
---
int16 current

")

(setf (get seed_robotics::GetCurrentResponse :md5sum-) "e5afeed341ec02e41760a747f3e580ae")
(setf (get seed_robotics::GetCurrentResponse :datatype-) "seed_robotics/GetCurrentResponse")
(setf (get seed_robotics::GetCurrentResponse :definition-)
      "uint8 id
---
int16 current

")



(provide :seed_robotics/GetCurrent "e5afeed341ec02e41760a747f3e580ae")


