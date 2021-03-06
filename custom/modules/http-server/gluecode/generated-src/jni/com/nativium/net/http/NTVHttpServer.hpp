// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#pragma once

#include "djinni/jni/djinni_support.hpp"
#include "nativium/net/http/HttpServer.hpp"

namespace djinni_generated {

class NTVHttpServer final : ::djinni::JniInterface<::nativium::net::http::HttpServer, NTVHttpServer> {
public:
    using CppType = std::shared_ptr<::nativium::net::http::HttpServer>;
    using CppOptType = std::shared_ptr<::nativium::net::http::HttpServer>;
    using JniType = jobject;

    using Boxed = NTVHttpServer;

    ~NTVHttpServer();

    static CppType toCpp(JNIEnv* jniEnv, JniType j) { return ::djinni::JniClass<NTVHttpServer>::get()._fromJava(jniEnv, j); }
    static ::djinni::LocalRef<JniType> fromCppOpt(JNIEnv* jniEnv, const CppOptType& c) { return {jniEnv, ::djinni::JniClass<NTVHttpServer>::get()._toJava(jniEnv, c)}; }
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv* jniEnv, const CppType& c) { return fromCppOpt(jniEnv, c); }

private:
    NTVHttpServer();
    friend ::djinni::JniClass<NTVHttpServer>;
    friend ::djinni::JniInterface<::nativium::net::http::HttpServer, NTVHttpServer>;

};

}  // namespace djinni_generated
