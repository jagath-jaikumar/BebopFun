;; Auto-generated. Do not edit!


(when (boundp 'atags::AprilTagList)
  (if (not (find-package "ATAGS"))
    (make-package "ATAGS"))
  (shadow 'AprilTagList (find-package "ATAGS")))
(unless (find-package "ATAGS::APRILTAGLIST")
  (make-package "ATAGS::APRILTAGLIST"))

(in-package "ROS")
;;//! \htmlinclude AprilTagList.msg.html


(defclass atags::AprilTagList
  :super ros::object
  :slots (_april_tags ))

(defmethod atags::AprilTagList
  (:init
   (&key
    ((:april_tags __april_tags) (let (r) (dotimes (i 0) (push (instance atags::AprilTag :init) r)) r))
    )
   (send-super :init)
   (setq _april_tags __april_tags)
   self)
  (:april_tags
   (&rest __april_tags)
   (if (keywordp (car __april_tags))
       (send* _april_tags __april_tags)
     (progn
       (if __april_tags (setq _april_tags (car __april_tags)))
       _april_tags)))
  (:serialization-length
   ()
   (+
    ;; atags/AprilTag[] _april_tags
    (apply #'+ (send-all _april_tags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; atags/AprilTag[] _april_tags
     (write-long (length _april_tags) s)
     (dolist (elem _april_tags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; atags/AprilTag[] _april_tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _april_tags (let (r) (dotimes (i n) (push (instance atags::AprilTag :init) r)) r))
     (dolist (elem- _april_tags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get atags::AprilTagList :md5sum-) "213573b69d7bd9ad75dae95f24eb462e")
(setf (get atags::AprilTagList :datatype-) "atags/AprilTagList")
(setf (get atags::AprilTagList :definition-)
      "AprilTag[] april_tags
================================================================================
MSG: atags/AprilTag
uint32 	id
uint32 	hamming_distance
float64 distance
float64 x
float64 y
float64 z
float64 yaw
float64 pitch
float64 roll
")



(provide :atags/AprilTagList "213573b69d7bd9ad75dae95f24eb462e")


