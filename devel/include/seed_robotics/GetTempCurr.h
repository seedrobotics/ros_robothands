// Generated by gencpp from file seed_robotics/GetTempCurr.msg
// DO NOT EDIT!


#ifndef SEED_ROBOTICS_MESSAGE_GETTEMPCURR_H
#define SEED_ROBOTICS_MESSAGE_GETTEMPCURR_H

#include <ros/service_traits.h>


#include <seed_robotics/GetTempCurrRequest.h>
#include <seed_robotics/GetTempCurrResponse.h>


namespace seed_robotics
{

struct GetTempCurr
{

typedef GetTempCurrRequest Request;
typedef GetTempCurrResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetTempCurr
} // namespace seed_robotics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::seed_robotics::GetTempCurr > {
  static const char* value()
  {
    return "f7123ebb92ae5f9e20543d821a1be8fe";
  }

  static const char* value(const ::seed_robotics::GetTempCurr&) { return value(); }
};

template<>
struct DataType< ::seed_robotics::GetTempCurr > {
  static const char* value()
  {
    return "seed_robotics/GetTempCurr";
  }

  static const char* value(const ::seed_robotics::GetTempCurr&) { return value(); }
};


// service_traits::MD5Sum< ::seed_robotics::GetTempCurrRequest> should match
// service_traits::MD5Sum< ::seed_robotics::GetTempCurr >
template<>
struct MD5Sum< ::seed_robotics::GetTempCurrRequest>
{
  static const char* value()
  {
    return MD5Sum< ::seed_robotics::GetTempCurr >::value();
  }
  static const char* value(const ::seed_robotics::GetTempCurrRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::seed_robotics::GetTempCurrRequest> should match
// service_traits::DataType< ::seed_robotics::GetTempCurr >
template<>
struct DataType< ::seed_robotics::GetTempCurrRequest>
{
  static const char* value()
  {
    return DataType< ::seed_robotics::GetTempCurr >::value();
  }
  static const char* value(const ::seed_robotics::GetTempCurrRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::seed_robotics::GetTempCurrResponse> should match
// service_traits::MD5Sum< ::seed_robotics::GetTempCurr >
template<>
struct MD5Sum< ::seed_robotics::GetTempCurrResponse>
{
  static const char* value()
  {
    return MD5Sum< ::seed_robotics::GetTempCurr >::value();
  }
  static const char* value(const ::seed_robotics::GetTempCurrResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::seed_robotics::GetTempCurrResponse> should match
// service_traits::DataType< ::seed_robotics::GetTempCurr >
template<>
struct DataType< ::seed_robotics::GetTempCurrResponse>
{
  static const char* value()
  {
    return DataType< ::seed_robotics::GetTempCurr >::value();
  }
  static const char* value(const ::seed_robotics::GetTempCurrResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SEED_ROBOTICS_MESSAGE_GETTEMPCURR_H
