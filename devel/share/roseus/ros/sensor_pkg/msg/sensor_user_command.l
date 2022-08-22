;; Auto-generated. Do not edit!


(when (boundp 'sensor_pkg::sensor_user_command)
  (if (not (find-package "SENSOR_PKG"))
    (make-package "SENSOR_PKG"))
  (shadow 'sensor_user_command (find-package "SENSOR_PKG")))
(unless (find-package "SENSOR_PKG::SENSOR_USER_COMMAND")
  (make-package "SENSOR_PKG::SENSOR_USER_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude sensor_user_command.msg.html


(defclass sensor_pkg::sensor_user_command
  :super ros::object
  :slots (_calibrate _setepoch _epoch_sec _epoch_msec _diagnosis_request _set_frequency _frequency _raw_string _raw ))

(defmethod sensor_pkg::sensor_user_command
  (:init
   (&key
    ((:calibrate __calibrate) nil)
    ((:setepoch __setepoch) nil)
    ((:epoch_sec __epoch_sec) "")
    ((:epoch_msec __epoch_msec) "")
    ((:diagnosis_request __diagnosis_request) nil)
    ((:set_frequency __set_frequency) nil)
    ((:frequency __frequency) 0)
    ((:raw_string __raw_string) nil)
    ((:raw __raw) "")
    )
   (send-super :init)
   (setq _calibrate __calibrate)
   (setq _setepoch __setepoch)
   (setq _epoch_sec (string __epoch_sec))
   (setq _epoch_msec (string __epoch_msec))
   (setq _diagnosis_request __diagnosis_request)
   (setq _set_frequency __set_frequency)
   (setq _frequency (round __frequency))
   (setq _raw_string __raw_string)
   (setq _raw (string __raw))
   self)
  (:calibrate
   (&optional (__calibrate :null))
   (if (not (eq __calibrate :null)) (setq _calibrate __calibrate)) _calibrate)
  (:setepoch
   (&optional (__setepoch :null))
   (if (not (eq __setepoch :null)) (setq _setepoch __setepoch)) _setepoch)
  (:epoch_sec
   (&optional __epoch_sec)
   (if __epoch_sec (setq _epoch_sec __epoch_sec)) _epoch_sec)
  (:epoch_msec
   (&optional __epoch_msec)
   (if __epoch_msec (setq _epoch_msec __epoch_msec)) _epoch_msec)
  (:diagnosis_request
   (&optional (__diagnosis_request :null))
   (if (not (eq __diagnosis_request :null)) (setq _diagnosis_request __diagnosis_request)) _diagnosis_request)
  (:set_frequency
   (&optional (__set_frequency :null))
   (if (not (eq __set_frequency :null)) (setq _set_frequency __set_frequency)) _set_frequency)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:raw_string
   (&optional (__raw_string :null))
   (if (not (eq __raw_string :null)) (setq _raw_string __raw_string)) _raw_string)
  (:raw
   (&optional __raw)
   (if __raw (setq _raw __raw)) _raw)
  (:serialization-length
   ()
   (+
    ;; bool _calibrate
    1
    ;; bool _setepoch
    1
    ;; string _epoch_sec
    4 (length _epoch_sec)
    ;; string _epoch_msec
    4 (length _epoch_msec)
    ;; bool _diagnosis_request
    1
    ;; bool _set_frequency
    1
    ;; int8 _frequency
    1
    ;; bool _raw_string
    1
    ;; string _raw
    4 (length _raw)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _calibrate
       (if _calibrate (write-byte -1 s) (write-byte 0 s))
     ;; bool _setepoch
       (if _setepoch (write-byte -1 s) (write-byte 0 s))
     ;; string _epoch_sec
       (write-long (length _epoch_sec) s) (princ _epoch_sec s)
     ;; string _epoch_msec
       (write-long (length _epoch_msec) s) (princ _epoch_msec s)
     ;; bool _diagnosis_request
       (if _diagnosis_request (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_frequency
       (if _set_frequency (write-byte -1 s) (write-byte 0 s))
     ;; int8 _frequency
       (write-byte _frequency s)
     ;; bool _raw_string
       (if _raw_string (write-byte -1 s) (write-byte 0 s))
     ;; string _raw
       (write-long (length _raw) s) (princ _raw s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _calibrate
     (setq _calibrate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _setepoch
     (setq _setepoch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _epoch_sec
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _epoch_sec (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _epoch_msec
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _epoch_msec (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _diagnosis_request
     (setq _diagnosis_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_frequency
     (setq _set_frequency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _frequency
     (setq _frequency (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _frequency 127) (setq _frequency (- _frequency 256)))
   ;; bool _raw_string
     (setq _raw_string (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _raw
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _raw (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_pkg::sensor_user_command :md5sum-) "07453c0ab726c6f2c228b4f0e11711ec")
(setf (get sensor_pkg::sensor_user_command :datatype-) "sensor_pkg/sensor_user_command")
(setf (get sensor_pkg::sensor_user_command :definition-)
      "bool calibrate
bool setepoch
string epoch_sec
string epoch_msec
bool diagnosis_request
bool set_frequency
int8 frequency
bool raw_string
string raw

")



(provide :sensor_pkg/sensor_user_command "07453c0ab726c6f2c228b4f0e11711ec")


