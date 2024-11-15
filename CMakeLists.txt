cmake_minimum_required(VERSION 3.15.0)
project(honey-rabbit VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD_REQUIRED 17)
set(CMAKE_CXX_COMPILER "g++")
 
find_package(AMQPCPP REQUIRED)
find_package(nlohmann_json REQUIRED)
find_package(spdlog REQUIRED)

add_executable(honey-rabbit src/main.cpp)

target_link_libraries(honey-rabbit AMQPCPP nlohmann_json::nlohmann_json spdlog::spdlog)
