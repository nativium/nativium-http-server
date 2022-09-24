# dependencies for tests
include(${NATIVIUM_ROOT_PATH}/cmake/dependencies-tests.cmake)

# drogon
find_package(Drogon CONFIG REQUIRED)
target_link_libraries(${NATIVIUM_PROJECT_NAME} PRIVATE Drogon::Drogon)
