# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile

# Include any dependencies generated for this target.
include CMakeFiles/assignment4_RISC_V_Disassembler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment4_RISC_V_Disassembler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment4_RISC_V_Disassembler.dir/flags.make

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o: CMakeFiles/assignment4_RISC_V_Disassembler.dir/flags.make
CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o -c /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/main.cpp

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/main.cpp > CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.i

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/main.cpp -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.s

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.requires

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.provides: CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment4_RISC_V_Disassembler.dir/build.make CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.provides

CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.provides.build: CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o


CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o: CMakeFiles/assignment4_RISC_V_Disassembler.dir/flags.make
CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o: ../hex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o -c /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/hex.cpp

CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/hex.cpp > CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.i

CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/hex.cpp -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.s

CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.requires:

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.requires

CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.provides: CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment4_RISC_V_Disassembler.dir/build.make CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.provides.build
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.provides

CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.provides.build: CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o


CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o: CMakeFiles/assignment4_RISC_V_Disassembler.dir/flags.make
CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o: ../memory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o -c /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/memory.cpp

CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/memory.cpp > CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.i

CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/memory.cpp -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.s

CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.requires:

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.requires

CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.provides: CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment4_RISC_V_Disassembler.dir/build.make CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.provides.build
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.provides

CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.provides.build: CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o


CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o: CMakeFiles/assignment4_RISC_V_Disassembler.dir/flags.make
CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o: ../rv32i.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o -c /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/rv32i.cpp

CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/rv32i.cpp > CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.i

CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/rv32i.cpp -o CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.s

CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.requires:

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.requires

CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.provides: CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment4_RISC_V_Disassembler.dir/build.make CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.provides.build
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.provides

CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.provides.build: CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o


# Object files for target assignment4_RISC_V_Disassembler
assignment4_RISC_V_Disassembler_OBJECTS = \
"CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o" \
"CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o" \
"CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o" \
"CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o"

# External object files for target assignment4_RISC_V_Disassembler
assignment4_RISC_V_Disassembler_EXTERNAL_OBJECTS =

assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o
assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o
assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o
assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o
assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/build.make
assignment4_RISC_V_Disassembler: CMakeFiles/assignment4_RISC_V_Disassembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable assignment4_RISC_V_Disassembler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment4_RISC_V_Disassembler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assignment4_RISC_V_Disassembler.dir/build: assignment4_RISC_V_Disassembler

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/build

CMakeFiles/assignment4_RISC_V_Disassembler.dir/requires: CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.o.requires
CMakeFiles/assignment4_RISC_V_Disassembler.dir/requires: CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.o.requires
CMakeFiles/assignment4_RISC_V_Disassembler.dir/requires: CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.o.requires
CMakeFiles/assignment4_RISC_V_Disassembler.dir/requires: CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.o.requires

.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/requires

CMakeFiles/assignment4_RISC_V_Disassembler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/assignment4_RISC_V_Disassembler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/clean

CMakeFiles/assignment4_RISC_V_Disassembler.dir/depend:
	cd /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile /mnt/c/Users/steve/CLionProjects/assignment4_RISC-V_Disassembler/cmake-build-wsl_profile/CMakeFiles/assignment4_RISC_V_Disassembler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/assignment4_RISC_V_Disassembler.dir/depend

