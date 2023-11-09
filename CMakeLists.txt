# Minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name and languages used
project(snake_effect C ASM)

# Set the C standard
set(CMAKE_C_STANDARD 99)

# Set the build type
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

# Set the flags
set(CMAKE_C_FLAGS "-O2 -Wall")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_RELEASE "-O3")

# Include directories
include_directories(inc)
include_directories(lib)

# Create the libraries
file(GLOB_RECURSE LIB_SOURCES "lib/*.c")
foreach(LIB_SOURCE ${LIB_SOURCES})
    get_filename_component(LIB_NAME_WE ${LIB_SOURCE} NAME_WE)
    string(REGEX REPLACE "_.*$" "" LIB_NAME ${LIB_NAME_WE})
    add_library(${LIB_NAME} STATIC ${LIB_SOURCE})
    set_target_properties(${LIB_NAME} PROPERTIES
            ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/libraries")
endforeach()

# Source files
file(GLOB_RECURSE SOURCES "src/*.c" "lib/*.c")

# Create the executable
add_executable(${PROJECT_NAME}.elf ${SOURCES})

# Create the hex file
add_custom_command(OUTPUT ${PROJECT_NAME}.hex
        COMMAND ${CMAKE_OBJCOPY} -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
        COMMENT "Creating hex file: ${PROJECT_NAME}.hex"
        DEPENDS ${PROJECT_NAME}.elf)

# Create binary_report.txt
add_custom_command(OUTPUT binary_report.txt
        COMMAND ${AVR_SIZE} ${PROJECT_NAME}.elf > binary_report.txt
        COMMENT "Creating binary_report.txt"
        DEPENDS ${PROJECT_NAME}.elf)

# Add custom target that depends on the .hex file and binary_report.txt
add_custom_target(${PROJECT_NAME} ALL DEPENDS ${PROJECT_NAME}.hex binary_report.txt)