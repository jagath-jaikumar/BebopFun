// Generated by gencpp from file atags/AprilTag.msg
// DO NOT EDIT!


#ifndef ATAGS_MESSAGE_APRILTAG_H
#define ATAGS_MESSAGE_APRILTAG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace atags
{
template <class ContainerAllocator>
struct AprilTag_
{
  typedef AprilTag_<ContainerAllocator> Type;

  AprilTag_()
    : id(0)
    , hamming_distance(0)
    , distance(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
    }
  AprilTag_(const ContainerAllocator& _alloc)
    : id(0)
    , hamming_distance(0)
    , distance(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef uint32_t _hamming_distance_type;
  _hamming_distance_type hamming_distance;

   typedef double _distance_type;
  _distance_type distance;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _roll_type;
  _roll_type roll;





  typedef boost::shared_ptr< ::atags::AprilTag_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::atags::AprilTag_<ContainerAllocator> const> ConstPtr;

}; // struct AprilTag_

typedef ::atags::AprilTag_<std::allocator<void> > AprilTag;

typedef boost::shared_ptr< ::atags::AprilTag > AprilTagPtr;
typedef boost::shared_ptr< ::atags::AprilTag const> AprilTagConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::atags::AprilTag_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::atags::AprilTag_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace atags

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'atags': ['/home/nb950/catkin_ws/src/atags/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::atags::AprilTag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atags::AprilTag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atags::AprilTag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atags::AprilTag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atags::AprilTag_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atags::AprilTag_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::atags::AprilTag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "be890ac3bb9849ceca6044551db294c3";
  }

  static const char* value(const ::atags::AprilTag_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbe890ac3bb9849ceULL;
  static const uint64_t static_value2 = 0xca6044551db294c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::atags::AprilTag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "atags/AprilTag";
  }

  static const char* value(const ::atags::AprilTag_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::atags::AprilTag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 	id\n\
uint32 	hamming_distance\n\
float64 distance\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 yaw\n\
float64 pitch\n\
float64 roll\n\
";
  }

  static const char* value(const ::atags::AprilTag_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::atags::AprilTag_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.hamming_distance);
      stream.next(m.distance);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.roll);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AprilTag_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::atags::AprilTag_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::atags::AprilTag_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "hamming_distance: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.hamming_distance);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATAGS_MESSAGE_APRILTAG_H
