cmake_minimum_required(VERSION 3.22.1)
project(flagsecure)

set(CMAKE_CXX_STANDARD 17)

add_library(flagsecure SHARED
    zygisk/src/main.cpp
)

target_include_directories(flagsecure PRIVATE
    zygisk/src/include   # put zygisk.hpp here
)

target_link_libraries(flagsecure
    android
    log
)

# Strip the binary to reduce size
target_link_options(flagsecure PRIVATE -Wl,--strip-all)