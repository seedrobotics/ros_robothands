;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::ListClearHWError)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'ListClearHWError (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::LISTCLEARHWERROR")
  (make-package "SEED_ROBOTICS::LISTCLEARHWERROR"))

(in-package "ROS")
;;//! \htmlinclude ListClearHWError.msg.html


(defclass seed_robotics::ListClearHWError
  :super ros::object
  :slots (_length _joints ))

(defmethod seed_robotics::ListClearHWError
  (:init
   (&key
    ((:length __length) 0)
    ((:joints __joints) ())
    )
   (send-super :init)
   (setq _length (round __length))
   (setq _joints __joints)
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; uint8 _length
    1
    ;; seed_robotics/ClearHWError[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _length
       (write-byte _length s)
     ;; seed_robotics/ClearHWError[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; seed_robotics/ClearHWError[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance seed_robotics::ClearHWError :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::ListClearHWError :md5sum-) "958e71b9000541067274a36d79e8291e")
(setf (get seed_robotics::ListClearHWError :datatype-) "seed_robotics/ListClearHWError")
(setf (get seed_robotics::ListClearHWError :definition-)
      "uint8 length
seed_robotics/ClearHWError[] joints

================================================================================
MSG: seed_robotics/ClearHWError
string name

")



(provide :seed_robotics/ListClearHWError "958e71b9000541067274a36d79e8291e")


