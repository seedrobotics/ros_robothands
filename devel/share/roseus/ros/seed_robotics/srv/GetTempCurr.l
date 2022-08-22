;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetTempCurr)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetTempCurr (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETTEMPCURR")
  (make-package "SEED_ROBOTICS::GETTEMPCURR"))
(unless (find-package "SEED_ROBOTICS::GETTEMPCURRREQUEST")
  (make-package "SEED_ROBOTICS::GETTEMPCURRREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETTEMPCURRRESPONSE")
  (make-package "SEED_ROBOTICS::GETTEMPCURRRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetTempCurrRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetTempCurrRequest
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

(defclass seed_robotics::GetTempCurrResponse
  :super ros::object
  :slots (_current _temperature ))

(defmethod seed_robotics::GetTempCurrResponse
  (:init
   (&key
    ((:current __current) 0)
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _current (round __current))
   (setq _temperature (round __temperature))
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; int16 _current
    2
    ;; int8 _temperature
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _current
       (write-word _current s)
     ;; int8 _temperature
       (write-byte _temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temperature 127) (setq _temperature (- _temperature 256)))
   ;;
   self)
  )

(defclass seed_robotics::GetTempCurr
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetTempCurr :md5sum-) "f7123ebb92ae5f9e20543d821a1be8fe")
(setf (get seed_robotics::GetTempCurr :datatype-) "seed_robotics/GetTempCurr")
(setf (get seed_robotics::GetTempCurr :request) seed_robotics::GetTempCurrRequest)
(setf (get seed_robotics::GetTempCurr :response) seed_robotics::GetTempCurrResponse)

(defmethod seed_robotics::GetTempCurrRequest
  (:response () (instance seed_robotics::GetTempCurrResponse :init)))

(setf (get seed_robotics::GetTempCurrRequest :md5sum-) "f7123ebb92ae5f9e20543d821a1be8fe")
(setf (get seed_robotics::GetTempCurrRequest :datatype-) "seed_robotics/GetTempCurrRequest")
(setf (get seed_robotics::GetTempCurrRequest :definition-)
      "uint8 id
---
int16 current
int8 temperature

")

(setf (get seed_robotics::GetTempCurrResponse :md5sum-) "f7123ebb92ae5f9e20543d821a1be8fe")
(setf (get seed_robotics::GetTempCurrResponse :datatype-) "seed_robotics/GetTempCurrResponse")
(setf (get seed_robotics::GetTempCurrResponse :definition-)
      "uint8 id
---
int16 current
int8 temperature

")



(provide :seed_robotics/GetTempCurr "f7123ebb92ae5f9e20543d821a1be8fe")


