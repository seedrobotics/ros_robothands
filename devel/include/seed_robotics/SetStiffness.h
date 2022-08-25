// Generated by gencpp from file seed_robotics/SetStiffness.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_SETSTIFFNESS_H
#define SEED_ROBOTICS_MESSAGE_SETSTIFFNESS_H


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
struct SetStiffness_
{
  typedef SetStiffness_<ContainerAllocator> Type;

  SetStiffness_()
    : name()
    , stiffness(0)  {
    }
  SetStiffness_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , stiffness(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _stiffness_type;
  _stiffness_type stiffness;





  typedef boost::shared_ptr< ::seed_robotics::SetStiffness_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::SetStiffness_<ContainerAllocator> const> ConstPtr;

}; // struct SetStiffness_

typedef ::seed_robotics::SetStiffness_<std::allocator<void> > SetStiffness;

typedef boost::shared_ptr< ::seed_robotics::SetStiffness > SetStiffnessPtr;
typedef boost::shared_ptr< ::seed_robotics::SetStiffness const> SetStiffnessConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::SetStiffness_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::SetStiffness_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::SetStiffness_<ContainerAllocator1> & lhs, const ::seed_robotics::SetStiffness_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.stiffness == rhs.stiffness;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::SetStiffness_<ContainerAllocator1> & lhs, const ::seed_robotics::SetStiffness_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::SetStiffness_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::SetStiffness_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::SetStiffness_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::SetStiffness_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::SetStiffness_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::SetStiffness_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::SetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e627d33eb361fcbabec59ee9bcb98a67";
  }

  static const char* value(const ::seed_robotics::SetStiffness_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe627d33eb361fcbaULL;
  static const uint64_t static_value2 = 0xbec59ee9bcb98a67ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::SetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/SetStiffness";
  }

  static const char* value(const ::seed_robotics::SetStiffness_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::SetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"uint8 stiffness\n"
;
  }

  static const char* value(const ::seed_robotics::SetStiffness_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::SetStiffness_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.stiffness);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetStiffness_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::SetStiffness_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::SetStiffness_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "stiffness: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stiffness);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_SETSTIFFNESS_H