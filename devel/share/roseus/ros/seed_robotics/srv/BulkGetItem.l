;; Auto-generated. Do not edit!


(when (boundp 'seed_robotics::BulkGetItem)
  (if (not (find-package "SEED_ROBOTICS"))
    (make-package "SEED_ROBOTICS"))
  (shadow 'BulkGetItem (find-package "SEED_ROBOTICS")))
(unless (find-package "SEED_ROBOTICS::BULKGETITEM")
  (make-package "SEED_ROBOTICS::BULKGETITEM"))
(unless (find-package "SEED_ROBOTICS::BULKGETITEMREQUEST")
  (make-package "SEED_ROBOTICS::BULKGETITEMREQUEST"))
(unless (find-package "SEED_ROBOTICS::BULKGETITEMRESPONSE")
  (make-package "SEED_ROBOTICS::BULKGETITEMRESPONSE"))

(in-package "ROS")





(defclass seed_robotics::BulkGetItemRequest
  :super ros::object
  :slots (_id1 _id2 _item1 _item2 ))

(defmethod seed_robotics::BulkGetItemRequest
  (:init
   (&key
    ((:id1 __id1) 0)
    ((:id2 __id2) 0)
    ((:item1 __item1) "")
    ((:item2 __item2) "")
    )
   (send-super :init)
   (setq _id1 (round __id1))
   (setq _id2 (round __id2))
   (setq _item1 (string __item1))
   (setq _item2 (string __item2))
   self)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:item1
   (&optional __item1)
   (if __item1 (setq _item1 __item1)) _item1)
  (:item2
   (&optional __item2)
   (if __item2 (setq _item2 __item2)) _item2)
  (:serialization-length
   ()
   (+
    ;; uint8 _id1
    1
    ;; uint8 _id2
    1
    ;; string _item1
    4 (length _item1)
    ;; string _item2
    4 (length _item2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id1
       (write-byte _id1 s)
     ;; uint8 _id2
       (write-byte _id2 s)
     ;; string _item1
       (write-long (length _item1) s) (princ _item1 s)
     ;; string _item2
       (write-long (length _item2) s) (princ _item2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id1
     (setq _id1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id2
     (setq _id2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _item1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _item1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _item2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _item2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass seed_robotics::BulkGetItemResponse
  :super ros::object
  :slots (_value1 _value2 ))

(defmethod seed_robotics::BulkGetItemResponse
  (:init
   (&key
    ((:value1 __value1) 0)
    ((:value2 __value2) 0)
    )
   (send-super :init)
   (setq _value1 (round __value1))
   (setq _value2 (round __value2))
   self)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; int32 _value1
    4
    ;; int32 _value2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value1
       (write-long _value1 s)
     ;; int32 _value2
       (write-long _value2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value1
     (setq _value1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value2
     (setq _value2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass seed_robotics::BulkGetItem
  :super ros::object
  :slots ())

(setf (get seed_robotics::BulkGetItem :md5sum-) "f0b74b4d53178e0d0ede26a30b687544")
(setf (get seed_robotics::BulkGetItem :datatype-) "seed_robotics/BulkGetItem")
(setf (get seed_robotics::BulkGetItem :request) seed_robotics::BulkGetItemRequest)
(setf (get seed_robotics::BulkGetItem :response) seed_robotics::BulkGetItemResponse)

(defmethod seed_robotics::BulkGetItemRequest
  (:response () (instance seed_robotics::BulkGetItemResponse :init)))

(setf (get seed_robotics::BulkGetItemRequest :md5sum-) "f0b74b4d53178e0d0ede26a30b687544")
(setf (get seed_robotics::BulkGetItemRequest :datatype-) "seed_robotics/BulkGetItemRequest")
(setf (get seed_robotics::BulkGetItemRequest :definition-)
      "uint8 id1
uint8 id2
string item1
string item2
---
int32 value1
int32 value2

")

(setf (get seed_robotics::BulkGetItemResponse :md5sum-) "f0b74b4d53178e0d0ede26a30b687544")
(setf (get seed_robotics::BulkGetItemResponse :datatype-) "seed_robotics/BulkGetItemResponse")
(setf (get seed_robotics::BulkGetItemResponse :definition-)
      "uint8 id1
uint8 id2
string item1
string item2
---
int32 value1
int32 value2

")



(provide :seed_robotics/BulkGetItem "f0b74b4d53178e0d0ede26a30b687544")


