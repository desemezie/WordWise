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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17"

# Include any dependencies generated for this target.
include CMakeFiles/bitbuddy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bitbuddy.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bitbuddy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bitbuddy.dir/flags.make

CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o: CMakeFiles/bitbuddy.dir/flags.make
CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o: bitbuddy_autogen/mocs_compilation.cpp
CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o: CMakeFiles/bitbuddy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o -MF CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o -c "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/bitbuddy_autogen/mocs_compilation.cpp"

CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/bitbuddy_autogen/mocs_compilation.cpp" > CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.i

CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/bitbuddy_autogen/mocs_compilation.cpp" -o CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.s

# Object files for target bitbuddy
bitbuddy_OBJECTS = \
"CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o"

# External object files for target bitbuddy
bitbuddy_EXTERNAL_OBJECTS =

bitbuddy: CMakeFiles/bitbuddy.dir/bitbuddy_autogen/mocs_compilation.cpp.o
bitbuddy: CMakeFiles/bitbuddy.dir/build.make
bitbuddy: /Users/danielesemezie/Qt/6.6.2/macos/lib/QtWidgets.framework/Versions/A/QtWidgets
bitbuddy: /Users/danielesemezie/Qt/6.6.2/macos/lib/QtMultimedia.framework/Versions/A/QtMultimedia
bitbuddy: /Users/danielesemezie/Qt/6.6.2/macos/lib/QtGui.framework/Versions/A/QtGui
bitbuddy: /Users/danielesemezie/Qt/6.6.2/macos/lib/QtNetwork.framework/Versions/A/QtNetwork
bitbuddy: /Users/danielesemezie/Qt/6.6.2/macos/lib/QtCore.framework/Versions/A/QtCore
bitbuddy: CMakeFiles/bitbuddy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bitbuddy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bitbuddy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bitbuddy.dir/build: bitbuddy
.PHONY : CMakeFiles/bitbuddy.dir/build

CMakeFiles/bitbuddy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bitbuddy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bitbuddy.dir/clean

CMakeFiles/bitbuddy.dir/depend:
	cd "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17" "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17" "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17" "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17" "/Users/danielesemezie/Computer science/3rd year/CS3307/CS3307/group17/CMakeFiles/bitbuddy.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/bitbuddy.dir/depend

