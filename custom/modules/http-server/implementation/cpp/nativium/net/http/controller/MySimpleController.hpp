#pragma once

#include <string>

#include "drogon/HttpSimpleController.h"

namespace nativium
{
namespace net
{
namespace http
{
namespace controller
{

class MySimpleController : public drogon::HttpSimpleController<MySimpleController>
{
public:
    MySimpleController(){};
    virtual ~MySimpleController(){};

    virtual void asyncHandleHttpRequest(const drogon::HttpRequestPtr &req, std::function<void(const drogon::HttpResponsePtr &)> &&callback) override;
    PATH_LIST_BEGIN
    PATH_ADD("/json", drogon::Get);
    PATH_LIST_END
};

} // namespace controller
} // namespace http
} // namespace net
} // namespace nativium
