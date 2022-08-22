;; Auto-generated. Do not edit!


(when (boundp 'sensor_pkg::lone_sensor)
  (if (not (find-package "SENSOR_PKG"))
    (make-package "SENSOR_PKG"))
  (shadow 'lone_sensor (find-package "SENSOR_PKG")))
(unless (find-package "SENSOR_PKG::LONE_SENSOR")
  (make-package "SENSOR_PKG::LONE_SENSOR"))

(in-package "ROS")
;;//! \htmlinclude lone_sensor.msg.html


(defclass sensor_pkg::lone_sensor
  :super ros::object
  :slots (_id _fx _fy _fz _abs _yaw _pitch _is_present _is_3D ))

(defmethod sensor_pkg::lone_sensor
  (:init
   (&key
    ((:id __id) 0)
    ((:fx __fx) 0)
    ((:fy __fy) 0)
    ((:fz __fz) 0)
    ((:abs __abs) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:is_present __is_present) nil)
    ((:is_3D __is_3D) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _fx (round __fx))
   (setq _fy (round __fy))
   (setq _fz (round __fz))
   (setq _abs (float __abs))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _is_present __is_present)
   (setq _is_3D __is_3D)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:fz
   (&optional __fz)
   (if __fz (setq _fz __fz)) _fz)
  (:abs
   (&optional __abs)
   (if __abs (setq _abs __abs)) _abs)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:is_present
   (&optional (__is_present :null))
   (if (not (eq __is_present :null)) (setq _is_present __is_present)) _is_present)
  (:is_3D
   (&optional (__is_3D :null))
   (if (not (eq __is_3D :null)) (setq _is_3D __is_3D)) _is_3D)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; int64 _fx
    8
    ;; int64 _fy
    8
    ;; int64 _fz
    8
    ;; float64 _abs
    8
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; bool _is_present
    1
    ;; bool _is_3D
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; int64 _fx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fx) (= (length (_fx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fx . bv) 0) 0) s)
              (write-long (ash (elt (_fx . bv) 1) -1) s))
             ((and (class _fx) (= (length (_fx . bv)) 1)) ;; big1
              (write-long (elt (_fx . bv) 0) s)
              (write-long (if (>= _fx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fx s)(write-long (if (>= _fx 0) 0 #xffffffff) s)))
     ;; int64 _fy
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fy (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fy) (= (length (_fy . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fy . bv) 0) 0) s)
              (write-long (ash (elt (_fy . bv) 1) -1) s))
             ((and (class _fy) (= (length (_fy . bv)) 1)) ;; big1
              (write-long (elt (_fy . bv) 0) s)
              (write-long (if (>= _fy 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fy s)(write-long (if (>= _fy 0) 0 #xffffffff) s)))
     ;; int64 _fz
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fz (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fz) (= (length (_fz . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fz . bv) 0) 0) s)
              (write-long (ash (elt (_fz . bv) 1) -1) s))
             ((and (class _fz) (= (length (_fz . bv)) 1)) ;; big1
              (write-long (elt (_fz . bv) 0) s)
              (write-long (if (>= _fz 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fz s)(write-long (if (>= _fz 0) 0 #xffffffff) s)))
     ;; float64 _abs
       (sys::poke _abs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_present
       (if _is_present (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_3D
       (if _is_3D (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int64 _fx
#+(or :alpha :irix6 :x86_64)
      (setf _fx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _fy
#+(or :alpha :irix6 :x86_64)
      (setf _fy (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fy (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _fz
#+(or :alpha :irix6 :x86_64)
      (setf _fz (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fz (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _abs
     (setq _abs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_present
     (setq _is_present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_3D
     (setq _is_3D (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_pkg::lone_sensor :md5sum-) "d74951cd5ea9208665af447aa3c67759")
(setf (get sensor_pkg::lone_sensor :datatype-) "sensor_pkg/lone_sensor")
(setf (get sensor_pkg::lone_sensor :definition-)
      "int8 id
int64 fx
int64 fy
int64 fz
float64 abs
float64 yaw
float64 pitch
bool is_present
bool is_3D

")



(provide :sensor_pkg/lone_sensor "d74951cd5ea9208665af447aa3c67759")


