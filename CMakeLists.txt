cmake_minimum_required(VERSION 3.0.0)
project(include_test VERSION 0.1.0)

include(CTest)
enable_testing()

option(USE_ALL "Use all including files" OFF)
if (USE_ALL)
  add_definitions(-DUSE_ALL)
endif()

add_executable(include_test main.cpp file_0.cpp file_1.cpp file_10.cpp  file_11.cpp file_12.cpp file_13.cpp file_14.cpp file_15.cpp file_16.cpp file_17.cpp file_18.cpp file_19.cpp 
    file_2.cpp file_3.cpp file_4.cpp file_5.cpp file_6.cpp file_7.cpp file_8.cpp file_9.cpp
)

# With precompiled headers, the speed of includeing bucket headers is almost as fast as including the header(s) directly.
target_precompile_headers(include_test
  PRIVATE
    all_headers.h
)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)