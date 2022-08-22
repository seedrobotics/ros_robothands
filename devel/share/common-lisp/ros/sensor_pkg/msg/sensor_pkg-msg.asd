
(cl:in-package :asdf)

(defsystem "sensor_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AllSensors" :depends-on ("_package_AllSensors"))
    (:file "_package_AllSensors" :depends-on ("_package"))
    (:file "lone_sensor" :depends-on ("_package_lone_sensor"))
    (:file "_package_lone_sensor" :depends-on ("_package"))
    (:file "sensor_user_command" :depends-on ("_package_sensor_user_command"))
    (:file "_package_sensor_user_command" :depends-on ("_package"))
  ))