# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/suzanne/UNIX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/suzanne/UNIX/build

# Include any dependencies generated for this target.
include CMakeFiles/sawtooth-sweep.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sawtooth-sweep.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sawtooth-sweep.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sawtooth-sweep.dir/flags.make

CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o: CMakeFiles/sawtooth-sweep.dir/flags.make
CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o: /Users/suzanne/UNIX/sawtooth-sweep.cpp
CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o: CMakeFiles/sawtooth-sweep.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/suzanne/UNIX/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o -MF CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o.d -o CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o -c /Users/suzanne/UNIX/sawtooth-sweep.cpp

CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/suzanne/UNIX/sawtooth-sweep.cpp > CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.i

CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/suzanne/UNIX/sawtooth-sweep.cpp -o CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.s

# Object files for target sawtooth-sweep
sawtooth__sweep_OBJECTS = \
"CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o"

# External object files for target sawtooth-sweep
sawtooth__sweep_EXTERNAL_OBJECTS =

sawtooth-sweep: CMakeFiles/sawtooth-sweep.dir/sawtooth-sweep.cpp.o
sawtooth-sweep: CMakeFiles/sawtooth-sweep.dir/build.make
sawtooth-sweep: CMakeFiles/sawtooth-sweep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/suzanne/UNIX/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sawtooth-sweep"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sawtooth-sweep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sawtooth-sweep.dir/build: sawtooth-sweep
.PHONY : CMakeFiles/sawtooth-sweep.dir/build

CMakeFiles/sawtooth-sweep.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sawtooth-sweep.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sawtooth-sweep.dir/clean

CMakeFiles/sawtooth-sweep.dir/depend:
	cd /Users/suzanne/UNIX/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suzanne/UNIX /Users/suzanne/UNIX /Users/suzanne/UNIX/build /Users/suzanne/UNIX/build /Users/suzanne/UNIX/build/CMakeFiles/sawtooth-sweep.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/sawtooth-sweep.dir/depend

