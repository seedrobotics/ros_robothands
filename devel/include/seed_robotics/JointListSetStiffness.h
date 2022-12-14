// Generated by gencpp from file seed_robotics/JointListSetStiffness.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_JOINTLISTSETSTIFFNESS_H
#define SEED_ROBOTICS_MESSAGE_JOINTLISTSETSTIFFNESS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <seed_robotics/SetStiffness.h>

namespace seed_robotics
{
template <class ContainerAllocator>
struct JointListSetStiffness_
{
  typedef JointListSetStiffness_<ContainerAllocator> Type;

  JointListSetStiffness_()
    : joints()  {
    }
  JointListSetStiffness_(const ContainerAllocator& _alloc)
    : joints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::seed_robotics::SetStiffness_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::seed_robotics::SetStiffness_<ContainerAllocator> >::other >  _joints_type;
  _joints_type joints;





  typedef boost::shared_ptr< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> const> ConstPtr;

}; // struct JointListSetStiffness_

typedef ::seed_robotics::JointListSetStiffness_<std::allocator<void> > JointListSetStiffness;

typedef boost::shared_ptr< ::seed_robotics::JointListSetStiffness > JointListSetStiffnessPtr;
typedef boost::shared_ptr< ::seed_robotics::JointListSetStiffness const> JointListSetStiffnessConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::JointListSetStiffness_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::JointListSetStiffness_<ContainerAllocator1> & lhs, const ::seed_robotics::JointListSetStiffness_<ContainerAllocator2> & rhs)
{
  return lhs.joints == rhs.joints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::JointListSetStiffness_<ContainerAllocator1> & lhs, const ::seed_robotics::JointListSetStiffness_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dba60e53277bd72c114abe7a790b8b92";
  }

  static const char* value(const ::seed_robotics::JointListSetStiffness_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdba60e53277bd72cULL;
  static const uint64_t static_value2 = 0x114abe7a790b8b92ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/JointListSetStiffness";
  }

  static const char* value(const ::seed_robotics::JointListSetStiffness_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/SetStiffness[] joints\n"
"\n"
"================================================================================\n"
"MSG: seed_robotics/SetStiffness\n"
"string name\n"
"uint8 stiffness\n"
;
  }

  static const char* value(const ::seed_robotics::JointListSetStiffness_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointListSetStiffness_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::JointListSetStiffness_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::JointListSetStiffness_<ContainerAllocator>& v)
  {
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::seed_robotics::SetStiffness_<ContainerAllocator> >::stream(s, indent + "    ", v.joints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_JOINTLISTSETSTIFFNESS_H
