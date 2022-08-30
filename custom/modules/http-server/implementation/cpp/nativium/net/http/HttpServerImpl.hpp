#pragma once

#include "nativium/net/http/HttpServer.hpp"

#include <memory>

namespace nativium
{
namespace net
{
namespace http
{

class HttpServerImpl : public HttpServer
{
public:
    HttpServerImpl();
    virtual ~HttpServerImpl() {}

    static std::shared_ptr<HttpServerImpl> internalSharedInstance();

    virtual void initialize() override;
    virtual void start() override;

private:
    static std::shared_ptr<HttpServerImpl> instance;
};

} // namespace http
} // namespace net
} // namespace nativium
