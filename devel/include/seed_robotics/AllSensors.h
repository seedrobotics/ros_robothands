// Generated by gencpp from file seed_robotics/AllSensors.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_ALLSENSORS_H
#define SEED_ROBOTICS_MESSAGE_ALLSENSORS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <seed_robotics/lone_sensor.h>

namespace seed_robotics
{
template <class ContainerAllocator>
struct AllSensors_
{
  typedef AllSensors_<ContainerAllocator> Type;

  AllSensors_()
    : header()
    , hand_polarity()
    , length(0)
    , data()  {
    }
  AllSensors_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , hand_polarity(_alloc)
    , length(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _hand_polarity_type;
  _hand_polarity_type hand_polarity;

   typedef int8_t _length_type;
  _length_type length;

   typedef std::vector< ::seed_robotics::lone_sensor_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::seed_robotics::lone_sensor_<ContainerAllocator> >::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::seed_robotics::AllSensors_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_robotics::AllSensors_<ContainerAllocator> const> ConstPtr;

}; // struct AllSensors_

typedef ::seed_robotics::AllSensors_<std::allocator<void> > AllSensors;

typedef boost::shared_ptr< ::seed_robotics::AllSensors > AllSensorsPtr;
typedef boost::shared_ptr< ::seed_robotics::AllSensors const> AllSensorsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_robotics::AllSensors_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_robotics::AllSensors_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_robotics::AllSensors_<ContainerAllocator1> & lhs, const ::seed_robotics::AllSensors_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.hand_polarity == rhs.hand_polarity &&
    lhs.length == rhs.length &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_robotics::AllSensors_<ContainerAllocator1> & lhs, const ::seed_robotics::AllSensors_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_robotics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::AllSensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_robotics::AllSensors_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::AllSensors_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_robotics::AllSensors_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::AllSensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_robotics::AllSensors_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_robotics::AllSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7fc8e5608d349b81ac8bdfd33a1df714";
  }

  static const char* value(const ::seed_robotics::AllSensors_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7fc8e5608d349b81ULL;
  static const uint64_t static_value2 = 0xac8bdfd33a1df714ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_robotics::AllSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_robotics/AllSensors";
  }

  static const char* value(const ::seed_robotics::AllSensors_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_robotics::AllSensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string hand_polarity\n"
"int8 length\n"
"seed_robotics/lone_sensor[] data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: seed_robotics/lone_sensor\n"
"int8 id\n"
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

  static const char* value(const ::seed_robotics::AllSensors_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_robotics::AllSensors_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.hand_polarity);
      stream.next(m.length);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AllSensors_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_robotics::AllSensors_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_robotics::AllSensors_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "hand_polarity: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.hand_polarity);
    s << indent << "length: ";
    Printer<int8_t>::stream(s, indent + "  ", v.length);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::seed_robotics::lone_sensor_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_ALLSENSORS_H
