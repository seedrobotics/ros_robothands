// Generated by gencpp from file sensor_pkg/lone_sensor.msg
// DO NOT EDIT!


#ifndef SENSOR_PKG_MESSAGE_LONE_SENSOR_H
#define SENSOR_PKG_MESSAGE_LONE_SENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor_pkg
{
template <class ContainerAllocator>
struct lone_sensor_
{
  typedef lone_sensor_<ContainerAllocator> Type;

  lone_sensor_()
    : id(0)
    , fx(0)
    , fy(0)
    , fz(0)
    , abs(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , is_present(false)
    , is_3D(false)  {
    }
  lone_sensor_(const ContainerAllocator& _alloc)
    : id(0)
    , fx(0)
    , fy(0)
    , fz(0)
    , abs(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , is_present(false)
    , is_3D(false)  {
  (void)_alloc;
    }



   typedef int8_t _id_type;
  _id_type id;

   typedef int64_t _fx_type;
  _fx_type fx;

   typedef int64_t _fy_type;
  _fy_type fy;

   typedef int64_t _fz_type;
  _fz_type fz;

   typedef double _abs_type;
  _abs_type abs;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef uint8_t _is_present_type;
  _is_present_type is_present;

   typedef uint8_t _is_3D_type;
  _is_3D_type is_3D;





  typedef boost::shared_ptr< ::sensor_pkg::lone_sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_pkg::lone_sensor_<ContainerAllocator> const> ConstPtr;

}; // struct lone_sensor_

typedef ::sensor_pkg::lone_sensor_<std::allocator<void> > lone_sensor;

typedef boost::shared_ptr< ::sensor_pkg::lone_sensor > lone_sensorPtr;
typedef boost::shared_ptr< ::sensor_pkg::lone_sensor const> lone_sensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_pkg::lone_sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_pkg::lone_sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_pkg::lone_sensor_<ContainerAllocator1> & lhs, const ::sensor_pkg::lone_sensor_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.fx == rhs.fx &&
    lhs.fy == rhs.fy &&
    lhs.fz == rhs.fz &&
    lhs.abs == rhs.abs &&
    lhs.yaw == rhs.yaw &&
    lhs.pitch == rhs.pitch &&
    lhs.is_present == rhs.is_present &&
    lhs.is_3D == rhs.is_3D;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_pkg::lone_sensor_<ContainerAllocator1> & lhs, const ::sensor_pkg::lone_sensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_pkg::lone_sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_pkg::lone_sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_pkg::lone_sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d74951cd5ea9208665af447aa3c67759";
  }

  static const char* value(const ::sensor_pkg::lone_sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd74951cd5ea92086ULL;
  static const uint64_t static_value2 = 0x65af447aa3c67759ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_pkg/lone_sensor";
  }

  static const char* value(const ::sensor_pkg::lone_sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 id\n"
"int64 fx\n"
"int64 fy\n"
"int64 fz\n"
"float64 abs\n"
"float64 yaw\n"
"float64 pitch\n"
"bool is_present\n"
"bool is_3D\n"
;
  }

  static const char* value(const ::sensor_pkg::lone_sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.fx);
      stream.next(m.fy);
      stream.next(m.fz);
      stream.next(m.abs);
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.is_present);
      stream.next(m.is_3D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lone_sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_pkg::lone_sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_pkg::lone_sensor_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id);
    s << indent << "fx: ";
    Printer<int64_t>::stream(s, indent + "  ", v.fx);
    s << indent << "fy: ";
    Printer<int64_t>::stream(s, indent + "  ", v.fy);
    s << indent << "fz: ";
    Printer<int64_t>::stream(s, indent + "  ", v.fz);
    s << indent << "abs: ";
    Printer<double>::stream(s, indent + "  ", v.abs);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "is_present: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_present);
    s << indent << "is_3D: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_3D);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_PKG_MESSAGE_LONE_SENSOR_H