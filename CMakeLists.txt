cmake_minimum_required(VERSION 3.20)
project(vtutorial)
set(CMAKE_CXX_STANDARD 17)
add_executable(vtutorial)
target_sources(vtutorial PRIVATE main.cpp)

if (CMAKE_HOST_WIN32)
    add_subdirectory(dependencies/glfw)
    include_directories(dependencies/glfw/include)
    find_package(Vulkan REQUIRED)
    target_link_libraries(vtutorial glfw ${GLFW_LIBRARIES} Vulkan::Vulkan)
else()
    target_link_libraries(vtutorial glfw vulkan)
endif ()