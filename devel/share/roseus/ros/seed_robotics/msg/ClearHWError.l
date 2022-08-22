;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::ClearHWError)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'ClearHWError (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::CLEARHWERROR")
  (make-package "SEED_ROBOTICS::CLEARHWERROR"))

(in-package "ROS")
;;//! \htmlinclude ClearHWError.msg.html


(defclass seed_robotics::ClearHWError
  :super ros::object
  :slots (_name ))

(defmethod seed_robotics::ClearHWError
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get seed_robotics::ClearHWError :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get seed_robotics::ClearHWError :datatype-) "seed_robotics/ClearHWError")
(setf (get seed_robotics::ClearHWError :definition-)
      "string name

")



(provide :seed_robotics/ClearHWError "c1f3d28f1b044c871e6eff2e9fc3c667")


