// Generated by gencpp from file gsdf_msgs/SCDSPSOGet.msg
// DO NOT EDIT!


#ifndef GSDF_MSGS_MESSAGE_SCDSPSOGET_H
#define GSDF_MSGS_MESSAGE_SCDSPSOGET_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gsdf_msgs
{
template <class ContainerAllocator>
struct SCDSPSOGet_
{
  typedef SCDSPSOGet_<ContainerAllocator> Type;

  SCDSPSOGet_()
    : key()
    , pos()
    , val(0.0)
    , robot_id(0)
    , gen(0)
    , timestamp(0)  {
    }
  SCDSPSOGet_(const ContainerAllocator& _alloc)
    : key(_alloc)
    , pos(_alloc)
    , val(0.0)
    , robot_id(0)
    , gen(0)
    , timestamp(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _key_type;
  _key_type key;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _pos_type;
  _pos_type pos;

   typedef float _val_type;
  _val_type val;

   typedef int32_t _robot_id_type;
  _robot_id_type robot_id;

   typedef int32_t _gen_type;
  _gen_type gen;

   typedef int32_t _timestamp_type;
  _timestamp_type timestamp;





  typedef boost::shared_ptr< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> const> ConstPtr;

}; // struct SCDSPSOGet_

typedef ::gsdf_msgs::SCDSPSOGet_<std::allocator<void> > SCDSPSOGet;

typedef boost::shared_ptr< ::gsdf_msgs::SCDSPSOGet > SCDSPSOGetPtr;
typedef boost::shared_ptr< ::gsdf_msgs::SCDSPSOGet const> SCDSPSOGetConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gsdf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'gsdf_msgs': ['/home/plankton/DDP/src/micros_swarm_framework/core/gsdf_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4df795d490b81d6e66669b482531c966";
  }

  static const char* value(const ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4df795d490b81d6eULL;
  static const uint64_t static_value2 = 0x66669b482531c966ULL;
};

template<class ContainerAllocator>
struct DataType< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gsdf_msgs/SCDSPSOGet";
  }

  static const char* value(const ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string key\n\
float32[] pos\n\
float32 val\n\
int32 robot_id\n\
int32 gen\n\
int32 timestamp\n\
";
  }

  static const char* value(const ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
      stream.next(m.pos);
      stream.next(m.val);
      stream.next(m.robot_id);
      stream.next(m.gen);
      stream.next(m.timestamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SCDSPSOGet_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gsdf_msgs::SCDSPSOGet_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.key);
    s << indent << "pos[]" << std::endl;
    for (size_t i = 0; i < v.pos.size(); ++i)
    {
      s << indent << "  pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pos[i]);
    }
    s << indent << "val: ";
    Printer<float>::stream(s, indent + "  ", v.val);
    s << indent << "robot_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_id);
    s << indent << "gen: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gen);
    s << indent << "timestamp: ";
    Printer<int32_t>::stream(s, indent + "  ", v.timestamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GSDF_MSGS_MESSAGE_SCDSPSOGET_H