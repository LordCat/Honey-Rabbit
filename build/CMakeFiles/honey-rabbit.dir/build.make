# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\dooma\Repos\Honey-Rabbit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\dooma\Repos\Honey-Rabbit\build

# Include any dependencies generated for this target.
include CMakeFiles/honey-rabbit.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/honey-rabbit.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/honey-rabbit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/honey-rabbit.dir/flags.make

CMakeFiles/honey-rabbit.dir/codegen:
.PHONY : CMakeFiles/honey-rabbit.dir/codegen

CMakeFiles/honey-rabbit.dir/src/main.cpp.obj: CMakeFiles/honey-rabbit.dir/flags.make
CMakeFiles/honey-rabbit.dir/src/main.cpp.obj: C:/Users/dooma/Repos/Honey-Rabbit/src/main.cpp
CMakeFiles/honey-rabbit.dir/src/main.cpp.obj: CMakeFiles/honey-rabbit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\dooma\Repos\Honey-Rabbit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/honey-rabbit.dir/src/main.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/honey-rabbit.dir/src/main.cpp.obj -MF CMakeFiles\honey-rabbit.dir\src\main.cpp.obj.d -o CMakeFiles\honey-rabbit.dir\src\main.cpp.obj -c C:\Users\dooma\Repos\Honey-Rabbit\src\main.cpp

CMakeFiles/honey-rabbit.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/honey-rabbit.dir/src/main.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dooma\Repos\Honey-Rabbit\src\main.cpp > CMakeFiles\honey-rabbit.dir\src\main.cpp.i

CMakeFiles/honey-rabbit.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/honey-rabbit.dir/src/main.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dooma\Repos\Honey-Rabbit\src\main.cpp -o CMakeFiles\honey-rabbit.dir\src\main.cpp.s

# Object files for target honey-rabbit
honey__rabbit_OBJECTS = \
"CMakeFiles/honey-rabbit.dir/src/main.cpp.obj"

# External object files for target honey-rabbit
honey__rabbit_EXTERNAL_OBJECTS =

honey-rabbit.exe: CMakeFiles/honey-rabbit.dir/src/main.cpp.obj
honey-rabbit.exe: CMakeFiles/honey-rabbit.dir/build.make
honey-rabbit.exe: C:/msys64/mingw64/lib/libspdlog.dll.a
honey-rabbit.exe: C:/msys64/mingw64/lib/libfmt.dll.a
honey-rabbit.exe: CMakeFiles/honey-rabbit.dir/linkLibs.rsp
honey-rabbit.exe: CMakeFiles/honey-rabbit.dir/objects1.rsp
honey-rabbit.exe: CMakeFiles/honey-rabbit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\dooma\Repos\Honey-Rabbit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable honey-rabbit.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\honey-rabbit.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/honey-rabbit.dir/build: honey-rabbit.exe
.PHONY : CMakeFiles/honey-rabbit.dir/build

CMakeFiles/honey-rabbit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\honey-rabbit.dir\cmake_clean.cmake
.PHONY : CMakeFiles/honey-rabbit.dir/clean

CMakeFiles/honey-rabbit.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\dooma\Repos\Honey-Rabbit C:\Users\dooma\Repos\Honey-Rabbit C:\Users\dooma\Repos\Honey-Rabbit\build C:\Users\dooma\Repos\Honey-Rabbit\build C:\Users\dooma\Repos\Honey-Rabbit\build\CMakeFiles\honey-rabbit.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/honey-rabbit.dir/depend

