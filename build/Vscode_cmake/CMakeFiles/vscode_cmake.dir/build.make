# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = F:\cmake\bin\cmake.exe

# The command to remove a file.
RM = F:\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\TestMake\vscode_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\TestMake\vscode_cmake\build\Vscode_cmake

# Include any dependencies generated for this target.
include CMakeFiles/vscode_cmake.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/vscode_cmake.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vscode_cmake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vscode_cmake.dir/flags.make

CMakeFiles/vscode_cmake.dir/main.cpp.obj: CMakeFiles/vscode_cmake.dir/flags.make
CMakeFiles/vscode_cmake.dir/main.cpp.obj: CMakeFiles/vscode_cmake.dir/includes_CXX.rsp
CMakeFiles/vscode_cmake.dir/main.cpp.obj: F:/TestMake/vscode_cmake/main.cpp
CMakeFiles/vscode_cmake.dir/main.cpp.obj: CMakeFiles/vscode_cmake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:\TestMake\vscode_cmake\build\Vscode_cmake\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vscode_cmake.dir/main.cpp.obj"
	F:\vscodeConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vscode_cmake.dir/main.cpp.obj -MF CMakeFiles\vscode_cmake.dir\main.cpp.obj.d -o CMakeFiles\vscode_cmake.dir\main.cpp.obj -c F:\TestMake\vscode_cmake\main.cpp

CMakeFiles/vscode_cmake.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/vscode_cmake.dir/main.cpp.i"
	F:\vscodeConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\TestMake\vscode_cmake\main.cpp > CMakeFiles\vscode_cmake.dir\main.cpp.i

CMakeFiles/vscode_cmake.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/vscode_cmake.dir/main.cpp.s"
	F:\vscodeConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\TestMake\vscode_cmake\main.cpp -o CMakeFiles\vscode_cmake.dir\main.cpp.s

# Object files for target vscode_cmake
vscode_cmake_OBJECTS = \
"CMakeFiles/vscode_cmake.dir/main.cpp.obj"

# External object files for target vscode_cmake
vscode_cmake_EXTERNAL_OBJECTS =

vscode_cmake.exe: CMakeFiles/vscode_cmake.dir/main.cpp.obj
vscode_cmake.exe: CMakeFiles/vscode_cmake.dir/build.make
vscode_cmake.exe: CMakeFiles/vscode_cmake.dir/linkLibs.rsp
vscode_cmake.exe: CMakeFiles/vscode_cmake.dir/objects1.rsp
vscode_cmake.exe: CMakeFiles/vscode_cmake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:\TestMake\vscode_cmake\build\Vscode_cmake\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vscode_cmake.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\vscode_cmake.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vscode_cmake.dir/build: vscode_cmake.exe
.PHONY : CMakeFiles/vscode_cmake.dir/build

CMakeFiles/vscode_cmake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\vscode_cmake.dir\cmake_clean.cmake
.PHONY : CMakeFiles/vscode_cmake.dir/clean

CMakeFiles/vscode_cmake.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\TestMake\vscode_cmake F:\TestMake\vscode_cmake F:\TestMake\vscode_cmake\build\Vscode_cmake F:\TestMake\vscode_cmake\build\Vscode_cmake F:\TestMake\vscode_cmake\build\Vscode_cmake\CMakeFiles\vscode_cmake.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/vscode_cmake.dir/depend

