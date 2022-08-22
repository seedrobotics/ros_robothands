// Generated by gencpp from file seed_robotics/ClearHWError.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_CLEARHWERROR_H
#define SEED_ROBOTICS_MESSAGE_CLEARHWERROR_H


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
struct ClearHWError_
{
  typedef ClearHWError_<ContainerAllocator> Type;

  ClearHWError_()
    : name()  {
    }
  ClearHWError_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::seed_robotics::ClearHWError_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::ClearHWError_<ContainerAllocator> const> ConstPtr;

}; // struct ClearHWError_

typedef ::seed_robotics::ClearHWError_<std::allocator<void> > ClearHWError;

typedef boost::shared_ptr< ::seed_robotics::ClearHWError > ClearHWErrorPtr;
typedef boost::shared_ptr< ::seed_robotics::ClearHWError const> ClearHWErrorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::ClearHWError_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::ClearHWError_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::ClearHWError_<ContainerAllocator1> & lhs, const ::seed_robotics::ClearHWError_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::ClearHWError_<ContainerAllocator1> & lhs, const ::seed_robotics::ClearHWError_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::ClearHWError_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::ClearHWError_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::ClearHWError_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::ClearHWError_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::ClearHWError_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::ClearHWError_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::ClearHWError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::seed_robotics::ClearHWError_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::ClearHWError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/ClearHWError";
  }

  static const char* value(const ::seed_robotics::ClearHWError_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::ClearHWError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
;
  }

  static const char* value(const ::seed_robotics::ClearHWError_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::ClearHWError_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClearHWError_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::ClearHWError_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::ClearHWError_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_CLEARHWERROR_H