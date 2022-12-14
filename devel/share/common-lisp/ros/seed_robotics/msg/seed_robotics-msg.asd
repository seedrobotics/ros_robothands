
(cl:in-package :asdf)

(defsystem "seed_robotics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AllJoints" :depends-on ("_package_AllJoints"))
    (:file "_package_AllJoints" :depends-on ("_package"))
    (:file "AllMainBoards" :depends-on ("_package_AllMainBoards"))
    (:file "_package_AllMainBoards" :depends-on ("_package"))
    (:file "ClearHWError" :depends-on ("_package_ClearHWError"))
    (:file "_package_ClearHWError" :depends-on ("_package"))
    (:file "JointListSetSpeedPos" :depends-on ("_package_JointListSetSpeedPos"))
    (:file "_package_JointListSetSpeedPos" :depends-on ("_package"))
    (:file "JointListSetStiffness" :depends-on ("_package_JointListSetStiffness"))
    (:file "_package_JointListSetStiffness" :depends-on ("_package"))
    (:file "JointSetSpeedPos" :depends-on ("_package_JointSetSpeedPos"))
    (:file "_package_JointSetSpeedPos" :depends-on ("_package"))
    (:file "LoneJoint" :depends-on ("_package_LoneJoint"))
    (:file "_package_LoneJoint" :depends-on ("_package"))
    (:file "LoneMainBoard" :depends-on ("_package_LoneMainBoard"))
    (:file "_package_LoneMainBoard" :depends-on ("_package"))
    (:file "SetShutdownCond" :depends-on ("_package_SetShutdownCond"))
    (:file "_package_SetShutdownCond" :depends-on ("_package"))
    (:file "SetStiffness" :depends-on ("_package_SetStiffness"))
    (:file "_package_SetStiffness" :depends-on ("_package"))
  ))