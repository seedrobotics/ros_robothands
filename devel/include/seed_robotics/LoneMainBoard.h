// Generated by gencpp from file seed_robotics/LoneMainBoard.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_LONEMAINBOARD_H
#define SEED_ROBOTICS_MESSAGE_LONEMAINBOARD_H


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
struct LoneMainBoard_
{
  typedef LoneMainBoard_<ContainerAllocator> Type;

  LoneMainBoard_()
    : id(0)
    , name()
    , palm_IR_sensor(0)
    , capacitive_sensor_1(0)
    , capacitive_sensor_2(0)  {
    }
  LoneMainBoard_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , palm_IR_sensor(0)
    , capacitive_sensor_1(0)
    , capacitive_sensor_2(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint16_t _palm_IR_sensor_type;
  _palm_IR_sensor_type palm_IR_sensor;

   typedef uint16_t _capacitive_sensor_1_type;
  _capacitive_sensor_1_type capacitive_sensor_1;

   typedef uint16_t _capacitive_sensor_2_type;
  _capacitive_sensor_2_type capacitive_sensor_2;





  typedef boost::shared_ptr< ::seed_robotics::LoneMainBoard_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::LoneMainBoard_<ContainerAllocator> const> ConstPtr;

}; // struct LoneMainBoard_

typedef ::seed_robotics::LoneMainBoard_<std::allocator<void> > LoneMainBoard;

typedef boost::shared_ptr< ::seed_robotics::LoneMainBoard > LoneMainBoardPtr;
typedef boost::shared_ptr< ::seed_robotics::LoneMainBoard const> LoneMainBoardConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::LoneMainBoard_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::LoneMainBoard_<ContainerAllocator1> & lhs, const ::seed_robotics::LoneMainBoard_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name &&
    lhs.palm_IR_sensor == rhs.palm_IR_sensor &&
    lhs.capacitive_sensor_1 == rhs.capacitive_sensor_1 &&
    lhs.capacitive_sensor_2 == rhs.capacitive_sensor_2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::LoneMainBoard_<ContainerAllocator1> & lhs, const ::seed_robotics::LoneMainBoard_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::LoneMainBoard_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::LoneMainBoard_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::LoneMainBoard_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "875f68e3bca4fff5a77828447db760f0";
  }

  static const char* value(const ::seed_robotics::LoneMainBoard_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x875f68e3bca4fff5ULL;
  static const uint64_t static_value2 = 0xa77828447db760f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/LoneMainBoard";
  }

  static const char* value(const ::seed_robotics::LoneMainBoard_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"string name\n"
"uint16 palm_IR_sensor\n"
"uint16 capacitive_sensor_1\n"
"uint16 capacitive_sensor_2\n"
;
  }

  static const char* value(const ::seed_robotics::LoneMainBoard_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.palm_IR_sensor);
      stream.next(m.capacitive_sensor_1);
      stream.next(m.capacitive_sensor_2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoneMainBoard_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::LoneMainBoard_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::LoneMainBoard_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "palm_IR_sensor: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.palm_IR_sensor);
    s << indent << "capacitive_sensor_1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.capacitive_sensor_1);
    s << indent << "capacitive_sensor_2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.capacitive_sensor_2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_LONEMAINBOARD_H
