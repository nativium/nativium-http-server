# module config
set(MODULE_NAME "http-server")

# files
nativium_add_header_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/net/http/*.hpp" GLOB)
nativium_add_header_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/*.hpp" GLOB)
nativium_add_header_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/controller/*.hpp" GLOB)

nativium_add_source_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/net/http/*.cpp" GLOB)
nativium_add_source_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/*.cpp" GLOB)
nativium_add_source_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/controller/*.cpp" GLOB)

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # files
    nativium_add_header_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.hpp" RECURSIVE)
    nativium_add_source_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.cpp" RECURSIVE)

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # files
    nativium_add_header_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.h" RECURSIVE INSTALL INSTALL_FILTER "Private.h")
    nativium_add_source_files("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.mm" RECURSIVE)

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc")
endif()
