;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SetStiffness)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SetStiffness (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SETSTIFFNESS")
  (make-package "SEED_ROBOTICS::SETSTIFFNESS"))

(in-package "ROS")
;;//! \htmlinclude SetStiffness.msg.html


(defclass seed_robotics::SetStiffness
  :super ros::object
  :slots (_name _stiffness ))

(defmethod seed_robotics::SetStiffness
  (:init
   (&key
    ((:name __name) "")
    ((:stiffness __stiffness) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _stiffness (round __stiffness))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _stiffness
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _stiffness
       (write-byte _stiffness s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _stiffness
     (setq _stiffness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get seed_robotics::SetStiffness :md5sum-) "e627d33eb361fcbabec59ee9bcb98a67")
(setf (get seed_robotics::SetStiffness :datatype-) "seed_robotics/SetStiffness")
(setf (get seed_robotics::SetStiffness :definition-)
      "string name
uint8 stiffness

")



(provide :seed_robotics/SetStiffness "e627d33eb361fcbabec59ee9bcb98a67")


