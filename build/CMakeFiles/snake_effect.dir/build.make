# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/HP/Desktop/SE_using_CMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/HP/Desktop/SE_using_CMake/build

# Utility rule file for snake_effect.

# Include any custom commands dependencies for this target.
include CMakeFiles/snake_effect.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/snake_effect.dir/progress.make

CMakeFiles/snake_effect: snake_effect.hex
CMakeFiles/snake_effect: binary_report.txt

binary_report.txt: snake_effect.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating binary_report.txt"
	avr-size snake_effect.elf > binary_report.txt

snake_effect.hex: snake_effect.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Creating hex file: snake_effect.hex"
	avr-objcopy -O ihex snake_effect.elf snake_effect.hex

snake_effect: CMakeFiles/snake_effect
snake_effect: binary_report.txt
snake_effect: snake_effect.hex
snake_effect: CMakeFiles/snake_effect.dir/build.make
.PHONY : snake_effect

# Rule to build all files generated by this target.
CMakeFiles/snake_effect.dir/build: snake_effect
.PHONY : CMakeFiles/snake_effect.dir/build

CMakeFiles/snake_effect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snake_effect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snake_effect.dir/clean

CMakeFiles/snake_effect.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/HP/Desktop/SE_using_CMake C:/Users/HP/Desktop/SE_using_CMake C:/Users/HP/Desktop/SE_using_CMake/build C:/Users/HP/Desktop/SE_using_CMake/build C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles/snake_effect.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/snake_effect.dir/depend

