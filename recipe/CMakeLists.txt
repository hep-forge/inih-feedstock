cmake_minimum_required(VERSION 3.10)
project(inih C)

add_library(inih SHARED
    ini.c
)

target_include_directories(inih PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(inih PROPERTIES
    VERSION 1.0
    SOVERSION 1
    PUBLIC_HEADER "ini.h"
)

install(TARGETS inih
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)
