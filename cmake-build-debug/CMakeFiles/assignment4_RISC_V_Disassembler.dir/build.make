# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\assignment4_RISC_V_Disassembler.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\assignment4_RISC_V_Disassembler.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\assignment4_RISC_V_Disassembler.dir\flags.make

CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.obj: CMakeFiles\assignment4_RISC_V_Disassembler.dir\flags.make
CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.obj /FdCMakeFiles\assignment4_RISC_V_Disassembler.dir\ /FS -c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\main.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\main.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.s /c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\main.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.obj: CMakeFiles\assignment4_RISC_V_Disassembler.dir\flags.make
CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.obj: ..\hex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.obj /FdCMakeFiles\assignment4_RISC_V_Disassembler.dir\ /FS -c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\hex.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\hex.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/hex.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.s /c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\hex.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.obj: CMakeFiles\assignment4_RISC_V_Disassembler.dir\flags.make
CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.obj: ..\memory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.obj /FdCMakeFiles\assignment4_RISC_V_Disassembler.dir\ /FS -c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\memory.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\memory.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/memory.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.s /c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\memory.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.obj: CMakeFiles\assignment4_RISC_V_Disassembler.dir\flags.make
CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.obj: ..\rv32i.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.obj /FdCMakeFiles\assignment4_RISC_V_Disassembler.dir\ /FS -c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\rv32i.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\rv32i.cpp
<<

CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment4_RISC_V_Disassembler.dir/rv32i.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.s /c C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\rv32i.cpp
<<

# Object files for target assignment4_RISC_V_Disassembler
assignment4_RISC_V_Disassembler_OBJECTS = \
"CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.obj" \
"CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.obj" \
"CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.obj" \
"CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.obj"

# External object files for target assignment4_RISC_V_Disassembler
assignment4_RISC_V_Disassembler_EXTERNAL_OBJECTS =

assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\main.cpp.obj
assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\hex.cpp.obj
assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\memory.cpp.obj
assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\rv32i.cpp.obj
assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\build.make
assignment4_RISC_V_Disassembler.exe: CMakeFiles\assignment4_RISC_V_Disassembler.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable assignment4_RISC_V_Disassembler.exe"
	"C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\assignment4_RISC_V_Disassembler.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\assignment4_RISC_V_Disassembler.dir\objects1.rsp @<<
 /out:assignment4_RISC_V_Disassembler.exe /implib:assignment4_RISC_V_Disassembler.lib /pdb:C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\assignment4_RISC_V_Disassembler.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\assignment4_RISC_V_Disassembler.dir\build: assignment4_RISC_V_Disassembler.exe

.PHONY : CMakeFiles\assignment4_RISC_V_Disassembler.dir\build

CMakeFiles\assignment4_RISC_V_Disassembler.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\assignment4_RISC_V_Disassembler.dir\cmake_clean.cmake
.PHONY : CMakeFiles\assignment4_RISC_V_Disassembler.dir\clean

CMakeFiles\assignment4_RISC_V_Disassembler.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug C:\Users\steve\CLionProjects\assignment4_RISC-V_Disassembler\cmake-build-debug\CMakeFiles\assignment4_RISC_V_Disassembler.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\assignment4_RISC_V_Disassembler.dir\depend

