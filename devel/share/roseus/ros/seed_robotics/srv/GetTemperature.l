;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::GetTemperature)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'GetTemperature (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::GETTEMPERATURE")
  (make-package "SEED_ROBOTICS::GETTEMPERATURE"))
(unless (find-package "SEED_ROBOTICS::GETTEMPERATUREREQUEST")
  (make-package "SEED_ROBOTICS::GETTEMPERATUREREQUEST"))
(unless (find-package "SEED_ROBOTICS::GETTEMPERATURERESPONSE")
  (make-package "SEED_ROBOTICS::GETTEMPERATURERESPONSE"))

(in-package "ROS")





(defclass seed_robotics::GetTemperatureRequest
  :super ros::object
  :slots (_id ))

(defmethod seed_robotics::GetTemperatureRequest
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

(defclass seed_robotics::GetTemperatureResponse
  :super ros::object
  :slots (_temperature ))

(defmethod seed_robotics::GetTemperatureResponse
  (:init
   (&key
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _temperature (round __temperature))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; int8 _temperature
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _temperature
       (write-byte _temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temperature 127) (setq _temperature (- _temperature 256)))
   ;;
   self)
  )

(defclass seed_robotics::GetTemperature
  :super ros::object
  :slots ())

(setf (get seed_robotics::GetTemperature :md5sum-) "89b37f343ec5c3e46049b037c86c9747")
(setf (get seed_robotics::GetTemperature :datatype-) "seed_robotics/GetTemperature")
(setf (get seed_robotics::GetTemperature :request) seed_robotics::GetTemperatureRequest)
(setf (get seed_robotics::GetTemperature :response) seed_robotics::GetTemperatureResponse)

(defmethod seed_robotics::GetTemperatureRequest
  (:response () (instance seed_robotics::GetTemperatureResponse :init)))

(setf (get seed_robotics::GetTemperatureRequest :md5sum-) "89b37f343ec5c3e46049b037c86c9747")
(setf (get seed_robotics::GetTemperatureRequest :datatype-) "seed_robotics/GetTemperatureRequest")
(setf (get seed_robotics::GetTemperatureRequest :definition-)
      "uint8 id
---
int8 temperature

")

(setf (get seed_robotics::GetTemperatureResponse :md5sum-) "89b37f343ec5c3e46049b037c86c9747")
(setf (get seed_robotics::GetTemperatureResponse :datatype-) "seed_robotics/GetTemperatureResponse")
(setf (get seed_robotics::GetTemperatureResponse :definition-)
      "uint8 id
---
int8 temperature

")



(provide :seed_robotics/GetTemperature "89b37f343ec5c3e46049b037c86c9747")


