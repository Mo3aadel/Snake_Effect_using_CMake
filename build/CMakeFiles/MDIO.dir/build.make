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

# Include any dependencies generated for this target.
include CMakeFiles/MDIO.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MDIO.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MDIO.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MDIO.dir/flags.make

CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj: CMakeFiles/MDIO.dir/flags.make
CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj: C:/Users/HP/Desktop/SE_using_CMake/lib/MDIO_Program.c
CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj: CMakeFiles/MDIO.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj"
	E:/WinAVR/bin/avr-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj -MF CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj.d -o CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj -c C:/Users/HP/Desktop/SE_using_CMake/lib/MDIO_Program.c

CMakeFiles/MDIO.dir/lib/MDIO_Program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/MDIO.dir/lib/MDIO_Program.c.i"
	E:/WinAVR/bin/avr-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/HP/Desktop/SE_using_CMake/lib/MDIO_Program.c > CMakeFiles/MDIO.dir/lib/MDIO_Program.c.i

CMakeFiles/MDIO.dir/lib/MDIO_Program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/MDIO.dir/lib/MDIO_Program.c.s"
	E:/WinAVR/bin/avr-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/HP/Desktop/SE_using_CMake/lib/MDIO_Program.c -o CMakeFiles/MDIO.dir/lib/MDIO_Program.c.s

# Object files for target MDIO
MDIO_OBJECTS = \
"CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj"

# External object files for target MDIO
MDIO_EXTERNAL_OBJECTS =

libraries/libMDIO.a: CMakeFiles/MDIO.dir/lib/MDIO_Program.c.obj
libraries/libMDIO.a: CMakeFiles/MDIO.dir/build.make
libraries/libMDIO.a: CMakeFiles/MDIO.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libraries/libMDIO.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MDIO.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MDIO.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MDIO.dir/build: libraries/libMDIO.a
.PHONY : CMakeFiles/MDIO.dir/build

CMakeFiles/MDIO.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MDIO.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MDIO.dir/clean

CMakeFiles/MDIO.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/HP/Desktop/SE_using_CMake C:/Users/HP/Desktop/SE_using_CMake C:/Users/HP/Desktop/SE_using_CMake/build C:/Users/HP/Desktop/SE_using_CMake/build C:/Users/HP/Desktop/SE_using_CMake/build/CMakeFiles/MDIO.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MDIO.dir/depend

