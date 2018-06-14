;; Auto-generated. Do not edit!


(when (boundp 'atags::AprilTag)
  (if (not (find-package "ATAGS"))
    (make-package "ATAGS"))
  (shadow 'AprilTag (find-package "ATAGS")))
(unless (find-package "ATAGS::APRILTAG")
  (make-package "ATAGS::APRILTAG"))

(in-package "ROS")
;;//! \htmlinclude AprilTag.msg.html


(defclass atags::AprilTag
  :super ros::object
  :slots (_id _hamming_distance _distance _x _y _z _yaw _pitch _roll ))

(defmethod atags::AprilTag
  (:init
   (&key
    ((:id __id) 0)
    ((:hamming_distance __hamming_distance) 0)
    ((:distance __distance) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _hamming_distance (round __hamming_distance))
   (setq _distance (float __distance))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:hamming_distance
   (&optional __hamming_distance)
   (if __hamming_distance (setq _hamming_distance __hamming_distance)) _hamming_distance)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _hamming_distance
    4
    ;; float64 _distance
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _hamming_distance
       (write-long _hamming_distance s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _hamming_distance
     (setq _hamming_distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get atags::AprilTag :md5sum-) "be890ac3bb9849ceca6044551db294c3")
(setf (get atags::AprilTag :datatype-) "atags/AprilTag")
(setf (get atags::AprilTag :definition-)
      "uint32 	id
uint32 	hamming_distance
float64 distance
float64 x
float64 y
float64 z
float64 yaw
float64 pitch
float64 roll
")



(provide :atags/AprilTag "be890ac3bb9849ceca6044551db294c3")


