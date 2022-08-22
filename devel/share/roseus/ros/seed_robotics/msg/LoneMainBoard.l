;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::LoneMainBoard)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'LoneMainBoard (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::LONEMAINBOARD")
  (make-package "SEED_ROBOTICS::LONEMAINBOARD"))

(in-package "ROS")
;;//! \htmlinclude LoneMainBoard.msg.html


(defclass seed_robotics::LoneMainBoard
  :super ros::object
  :slots (_id _name _palm_IR_sensor _capacitive_sensor_1 _capacitive_sensor_2 ))

(defmethod seed_robotics::LoneMainBoard
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:palm_IR_sensor __palm_IR_sensor) 0)
    ((:capacitive_sensor_1 __capacitive_sensor_1) 0)
    ((:capacitive_sensor_2 __capacitive_sensor_2) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _palm_IR_sensor (round __palm_IR_sensor))
   (setq _capacitive_sensor_1 (round __capacitive_sensor_1))
   (setq _capacitive_sensor_2 (round __capacitive_sensor_2))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:palm_IR_sensor
   (&optional __palm_IR_sensor)
   (if __palm_IR_sensor (setq _palm_IR_sensor __palm_IR_sensor)) _palm_IR_sensor)
  (:capacitive_sensor_1
   (&optional __capacitive_sensor_1)
   (if __capacitive_sensor_1 (setq _capacitive_sensor_1 __capacitive_sensor_1)) _capacitive_sensor_1)
  (:capacitive_sensor_2
   (&optional __capacitive_sensor_2)
   (if __capacitive_sensor_2 (setq _capacitive_sensor_2 __capacitive_sensor_2)) _capacitive_sensor_2)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; string _name
    4 (length _name)
    ;; uint16 _palm_IR_sensor
    2
    ;; uint16 _capacitive_sensor_1
    2
    ;; uint16 _capacitive_sensor_2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _palm_IR_sensor
       (write-word _palm_IR_sensor s)
     ;; uint16 _capacitive_sensor_1
       (write-word _capacitive_sensor_1 s)
     ;; uint16 _capacitive_sensor_2
       (write-word _capacitive_sensor_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _palm_IR_sensor
     (setq _palm_IR_sensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _capacitive_sensor_1
     (setq _capacitive_sensor_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _capacitive_sensor_2
     (setq _capacitive_sensor_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get seed_robotics::LoneMainBoard :md5sum-) "875f68e3bca4fff5a77828447db760f0")
(setf (get seed_robotics::LoneMainBoard :datatype-) "seed_robotics/LoneMainBoard")
(setf (get seed_robotics::LoneMainBoard :definition-)
      "uint8 id
string name
uint16 palm_IR_sensor
uint16 capacitive_sensor_1
uint16 capacitive_sensor_2

")



(provide :seed_robotics/LoneMainBoard "875f68e3bca4fff5a77828447db760f0")


