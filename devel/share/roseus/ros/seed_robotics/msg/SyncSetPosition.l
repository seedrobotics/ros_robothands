;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::SyncSetPosition)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'SyncSetPosition (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::SYNCSETPOSITION")
  (make-package "SEED_ROBOTICS::SYNCSETPOSITION"))

(in-package "ROS")
;;//! \htmlinclude SyncSetPosition.msg.html


(defclass seed_robotics::SyncSetPosition
  :super ros::object
  :slots (_id1 _id2 _position1 _position2 ))

(defmethod seed_robotics::SyncSetPosition
  (:init
   (&key
    ((:id1 __id1) 0)
    ((:id2 __id2) 0)
    ((:position1 __position1) 0)
    ((:position2 __position2) 0)
    )
   (send-super :init)
   (setq _id1 (round __id1))
   (setq _id2 (round __id2))
   (setq _position1 (round __position1))
   (setq _position2 (round __position2))
   self)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:serialization-length
   ()
   (+
    ;; uint8 _id1
    1
    ;; uint8 _id2
    1
    ;; int32 _position1
    4
    ;; int32 _position2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id1
       (write-byte _id1 s)
     ;; uint8 _id2
       (write-byte _id2 s)
     ;; int32 _position1
       (write-long _position1 s)
     ;; int32 _position2
       (write-long _position2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id1
     (setq _id1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id2
     (setq _id2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _position1
     (setq _position1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position2
     (setq _position2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get seed_robotics::SyncSetPosition :md5sum-) "c9220e34b4c74855ca69205046aec62f")
(setf (get seed_robotics::SyncSetPosition :datatype-) "seed_robotics/SyncSetPosition")
(setf (get seed_robotics::SyncSetPosition :definition-)
      "uint8 id1
uint8 id2
int32 position1
int32 position2

")



(provide :seed_robotics/SyncSetPosition "c9220e34b4c74855ca69205046aec62f")


