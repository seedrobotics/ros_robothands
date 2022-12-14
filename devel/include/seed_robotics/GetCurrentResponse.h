// Generated by gencpp from file seed_robotics/GetCurrentResponse.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_GETCURRENTRESPONSE_H
#define SEED_ROBOTICS_MESSAGE_GETCURRENTRESPONSE_H


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
struct GetCurrentResponse_
{
  typedef GetCurrentResponse_<ContainerAllocator> Type;

  GetCurrentResponse_()
    : current(0)  {
    }
  GetCurrentResponse_(const ContainerAllocator& _alloc)
    : current(0)  {
  (void)_alloc;
    }



   typedef int16_t _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCurrentResponse_

typedef ::seed_robotics::GetCurrentResponse_<std::allocator<void> > GetCurrentResponse;

typedef boost::shared_ptr< ::seed_robotics::GetCurrentResponse > GetCurrentResponsePtr;
typedef boost::shared_ptr< ::seed_robotics::GetCurrentResponse const> GetCurrentResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::GetCurrentResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::GetCurrentResponse_<ContainerAllocator1> & lhs, const ::seed_robotics::GetCurrentResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current == rhs.current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::GetCurrentResponse_<ContainerAllocator1> & lhs, const ::seed_robotics::GetCurrentResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "356c7207b80d4fd7fe00c928de25f840";
  }

  static const char* value(const ::seed_robotics::GetCurrentResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x356c7207b80d4fd7ULL;
  static const uint64_t static_value2 = 0xfe00c928de25f840ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/GetCurrentResponse";
  }

  static const char* value(const ::seed_robotics::GetCurrentResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 current\n"
"\n"
;
  }

  static const char* value(const ::seed_robotics::GetCurrentResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCurrentResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::GetCurrentResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::GetCurrentResponse_<ContainerAllocator>& v)
  {
    s << indent << "current: ";
    Printer<int16_t>::stream(s, indent + "  ", v.current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_GETCURRENTRESPONSE_H
