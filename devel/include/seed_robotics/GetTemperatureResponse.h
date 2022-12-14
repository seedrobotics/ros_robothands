// Generated by gencpp from file seed_robotics/GetTemperatureResponse.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_GETTEMPERATURERESPONSE_H
#define SEED_ROBOTICS_MESSAGE_GETTEMPERATURERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace seed_robotics
{
template <class ContainerAllocator>
struct GetTemperatureResponse_
{
  typedef GetTemperatureResponse_<ContainerAllocator> Type;

  GetTemperatureResponse_()
    : temperature(0)  {
    }
  GetTemperatureResponse_(const ContainerAllocator& _alloc)
    : temperature(0)  {
  (void)_alloc;
    }



   typedef int8_t _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetTemperatureResponse_

typedef ::seed_robotics::GetTemperatureResponse_<std::allocator<void> > GetTemperatureResponse;

typedef boost::shared_ptr< ::seed_robotics::GetTemperatureResponse > GetTemperatureResponsePtr;
typedef boost::shared_ptr< ::seed_robotics::GetTemperatureResponse const> GetTemperatureResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator1> & lhs, const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator2> & rhs)
{
  return lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator1> & lhs, const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "708df609bf4c0f5f446cfd5c1c3b552e";
  }

  static const char* value(const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x708df609bf4c0f5fULL;
  static const uint64_t static_value2 = 0x446cfd5c1c3b552eULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/GetTemperatureResponse";
  }

  static const char* value(const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 temperature\n"
"\n"
;
  }

  static const char* value(const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTemperatureResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::GetTemperatureResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::GetTemperatureResponse_<ContainerAllocator>& v)
  {
    s << indent << "temperature: ";
    Printer<int8_t>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_GETTEMPERATURERESPONSE_H
