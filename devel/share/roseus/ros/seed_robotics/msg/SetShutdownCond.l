;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SetShutdownCond)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SetShutdownCond (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SETSHUTDOWNCOND")
  (make-package "SEED_ROBOTICS::SETSHUTDOWNCOND"))

(in-package "ROS")
;;//! \htmlinclude SetShutdownCond.msg.html


(defclass seed_robotics::SetShutdownCond
  :super ros::object
  :slots (_name _temperature _overload ))

(defmethod seed_robotics::SetShutdownCond
  (:init
   (&key
    ((:name __name) "")
    ((:temperature __temperature) nil)
    ((:overload __overload) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _temperature __temperature)
   (setq _overload __overload)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:temperature
   (&optional (__temperature :null))
   (if (not (eq __temperature :null)) (setq _temperature __temperature)) _temperature)
  (:overload
   (&optional (__overload :null))
   (if (not (eq __overload :null)) (setq _overload __overload)) _overload)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _temperature
    1
    ;; bool _overload
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _temperature
       (if _temperature (write-byte -1 s) (write-byte 0 s))
     ;; bool _overload
       (if _overload (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _temperature
     (setq _temperature (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overload
     (setq _overload (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get seed_robotics::SetShutdownCond :md5sum-) "b50d1b8fda73a468067ba7e8581dfde8")
(setf (get seed_robotics::SetShutdownCond :datatype-) "seed_robotics/SetShutdownCond")
(setf (get seed_robotics::SetShutdownCond :definition-)
      "string name
bool temperature
bool overload

")



(provide :seed_robotics/SetShutdownCond "b50d1b8fda73a468067ba7e8581dfde8")


