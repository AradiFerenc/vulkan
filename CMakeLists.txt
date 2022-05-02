cmake_minimum_required(VERSION 3.22)
project(untitled)

set(CMAKE_CXX_STANDARD 17)
link_libraries(glfw vulkan)
add_executable(untitled main.cpp )
