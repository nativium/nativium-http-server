#include "nativium/net/http/HttpServer.hpp"

#include <iostream>
#include <string>

using namespace nativium::net::http;

int main(int argc, char **argv)
{
    auto httpServer = HttpServer::shared();

    httpServer->initialize();
    httpServer->start();

    return EXIT_SUCCESS;
}
