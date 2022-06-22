#include "MySimpleController.hpp"

#include <filesystem>

namespace nativium
{
namespace net
{
namespace http
{
namespace controller
{

void MySimpleController::asyncHandleHttpRequest(const drogon::HttpRequestPtr &req, std::function<void(const drogon::HttpResponsePtr &)> &&callback)
{
    Json::Value ret;
    ret["message"] = "Hello, " + req->getParameter("name") + "!";
    auto resp = drogon::HttpResponse::newHttpJsonResponse(ret);
    callback(resp);
}

} // namespace controller
} // namespace http
} // namespace net
} // namespace nativium
