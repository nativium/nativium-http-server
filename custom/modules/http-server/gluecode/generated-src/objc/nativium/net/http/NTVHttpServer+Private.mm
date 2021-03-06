// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "nativium/net/http/NTVHttpServer+Private.h"
#import "nativium/net/http/NTVHttpServer.h"
#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface NTVHttpServer ()

- (id)initWithCpp:(const std::shared_ptr<::nativium::net::http::HttpServer>&)cppRef;

@end

@implementation NTVHttpServer {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::nativium::net::http::HttpServer>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::nativium::net::http::HttpServer>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable NTVHttpServer *)shared {
    try {
        auto objcpp_result_ = ::nativium::net::http::HttpServer::shared();
        return ::djinni_generated::HttpServer::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)initialize {
    try {
        _cppRefHandle.get()->initialize();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)start {
    try {
        _cppRefHandle.get()->start();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto HttpServer::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto HttpServer::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<NTVHttpServer>(cpp);
}

}  // namespace djinni_generated

@end
