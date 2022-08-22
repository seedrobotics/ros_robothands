;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::ListSetStiffness)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'ListSetStiffness (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::LISTSETSTIFFNESS")
  (make-package "SEED_ROBOTICS::LISTSETSTIFFNESS"))

(in-package "ROS")
;;//! \htmlinclude ListSetStiffness.msg.html


(defclass seed_robotics::ListSetStiffness
  :super ros::object
  :slots (_joints ))

(defmethod seed_robotics::ListSetStiffness
  (:init
   (&key
    ((:joints __joints) ())
    )
   (send-super :init)
   (setq _joints __joints)
   self)
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
    ;; seed_robotics/SetStiffness[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; seed_robotics/SetStiffness[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; seed_robotics/SetStiffness[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance seed_robotics::SetStiffness :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get seed_robotics::ListSetStiffness :md5sum-) "dba60e53277bd72c114abe7a790b8b92")
(setf (get seed_robotics::ListSetStiffness :datatype-) "seed_robotics/ListSetStiffness")
(setf (get seed_robotics::ListSetStiffness :definition-)
      "seed_robotics/SetStiffness[] joints

================================================================================
MSG: seed_robotics/SetStiffness
string name
uint8 stiffness

")



(provide :seed_robotics/ListSetStiffness "dba60e53277bd72c114abe7a790b8b92")


