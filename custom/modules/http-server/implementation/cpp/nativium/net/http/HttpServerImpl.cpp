#include "HttpServerImpl.hpp"
#include "nativium/core/ApplicationCore.hpp"

#include "drogon/drogon.h"

#include <filesystem>

namespace nativium
{
namespace net
{

namespace http
{

using namespace nativium::net::http;
using namespace nativium::core;

std::shared_ptr<HttpServerImpl> HttpServerImpl::instance = nullptr;

HttpServerImpl::HttpServerImpl()
{
    // ignore
}

std::shared_ptr<HttpServer> HttpServer::shared()
{
    return HttpServerImpl::internalSharedInstance();
}

std::shared_ptr<HttpServerImpl> HttpServerImpl::internalSharedInstance()
{
    if (instance == nullptr)
    {
        instance = std::make_shared<HttpServerImpl>();
    }

    return instance;
}

void HttpServerImpl::initialize()
{
    drogon::app().loadConfigFile("config.json");
    auto &json = drogon::app().getCustomConfig();

    std::cout << "[HttpServerImpl : initialize] Version: " << ApplicationCore::shared()->getVersion() << std::endl;
    std::cout << "[HttpServerImpl : initialize] Number of threads: " << drogon::app().getThreadNum() << std::endl;
    std::cout << "[HttpServerImpl : initialize] Document root path: " << drogon::app().getDocumentRoot() << std::endl;
    std::cout << "[HttpServerImpl : initialize] Server: " << json["url"].asString() << std::endl;
}

void HttpServerImpl::start()
{
    drogon::app().run();
}

} // namespace http
} // namespace net
} // namespace nativium
