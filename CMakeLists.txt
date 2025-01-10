cmake_minimum_required(VERSION 3.10)
project(cpp_project)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_project src/main.cpp)

# Add Test Cases
add_subdirectory(tests)
add_executable(tests tests/test_main.cpp)
target_link_libraries(tests gtest gtest_main)