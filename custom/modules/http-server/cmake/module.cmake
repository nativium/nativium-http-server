# module config
set(MODULE_NAME "http-server")

# files
nativium_add_header_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/net/http/*.hpp")
nativium_add_header_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/*.hpp")
nativium_add_header_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/controller/*.hpp")

nativium_add_source_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp/nativium/net/http/*.cpp")
nativium_add_source_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/*.cpp")
nativium_add_source_files_g("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp/nativium/net/http/controller/*.cpp")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # files
    nativium_add_header_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.hpp")
    nativium_add_source_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni/*.cpp")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # files
    nativium_add_header_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.h")
    nativium_add_source_files_gr("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc/*.mm")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/${MODULE_NAME}/gluecode/generated-src/objc")
endif()
