# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = C:\Users\Ludwig\source\repos\GLTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Ludwig\source\repos\GLTest\build

# Include any dependencies generated for this target.
include CMakeFiles/GLTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GLTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GLTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GLTest.dir/flags.make

CMakeFiles/GLTest.dir/main.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/main.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/main.c.obj: C:/Users/Ludwig/source/repos/GLTest/main.c
CMakeFiles/GLTest.dir/main.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/GLTest.dir/main.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/main.c.obj -MF CMakeFiles\GLTest.dir\main.c.obj.d -o CMakeFiles\GLTest.dir\main.c.obj -c C:\Users\Ludwig\source\repos\GLTest\main.c

CMakeFiles/GLTest.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/main.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\main.c > CMakeFiles\GLTest.dir\main.c.i

CMakeFiles/GLTest.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/main.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\main.c -o CMakeFiles\GLTest.dir\main.c.s

CMakeFiles/GLTest.dir/sources/game.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/game.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/game.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/game.c
CMakeFiles/GLTest.dir/sources/game.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/GLTest.dir/sources/game.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/game.c.obj -MF CMakeFiles\GLTest.dir\sources\game.c.obj.d -o CMakeFiles\GLTest.dir\sources\game.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\game.c

CMakeFiles/GLTest.dir/sources/game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/game.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\game.c > CMakeFiles\GLTest.dir\sources\game.c.i

CMakeFiles/GLTest.dir/sources/game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/game.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\game.c -o CMakeFiles\GLTest.dir\sources\game.c.s

CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/graphics/renderer.c
CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj -MF CMakeFiles\GLTest.dir\sources\graphics\renderer.c.obj.d -o CMakeFiles\GLTest.dir\sources\graphics\renderer.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\graphics\renderer.c

CMakeFiles/GLTest.dir/sources/graphics/renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/graphics/renderer.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\graphics\renderer.c > CMakeFiles\GLTest.dir\sources\graphics\renderer.c.i

CMakeFiles/GLTest.dir/sources/graphics/renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/graphics/renderer.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\graphics\renderer.c -o CMakeFiles\GLTest.dir\sources\graphics\renderer.c.s

CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/resources/resourcemanager.c
CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj -MF CMakeFiles\GLTest.dir\sources\resources\resourcemanager.c.obj.d -o CMakeFiles\GLTest.dir\sources\resources\resourcemanager.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\resources\resourcemanager.c

CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\resources\resourcemanager.c > CMakeFiles\GLTest.dir\sources\resources\resourcemanager.c.i

CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\resources\resourcemanager.c -o CMakeFiles\GLTest.dir\sources\resources\resourcemanager.c.s

CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/resources/shaders/shader.c
CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj -MF CMakeFiles\GLTest.dir\sources\resources\shaders\shader.c.obj.d -o CMakeFiles\GLTest.dir\sources\resources\shaders\shader.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\resources\shaders\shader.c

CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\resources\shaders\shader.c > CMakeFiles\GLTest.dir\sources\resources\shaders\shader.c.i

CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\resources\shaders\shader.c -o CMakeFiles\GLTest.dir\sources\resources\shaders\shader.c.s

CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/resources/textures/texture.c
CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj -MF CMakeFiles\GLTest.dir\sources\resources\textures\texture.c.obj.d -o CMakeFiles\GLTest.dir\sources\resources\textures\texture.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\resources\textures\texture.c

CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\resources\textures\texture.c > CMakeFiles\GLTest.dir\sources\resources\textures\texture.c.i

CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\resources\textures\texture.c -o CMakeFiles\GLTest.dir\sources\resources\textures\texture.c.s

CMakeFiles/GLTest.dir/sources/window/window.c.obj: CMakeFiles/GLTest.dir/flags.make
CMakeFiles/GLTest.dir/sources/window/window.c.obj: CMakeFiles/GLTest.dir/includes_C.rsp
CMakeFiles/GLTest.dir/sources/window/window.c.obj: C:/Users/Ludwig/source/repos/GLTest/sources/window/window.c
CMakeFiles/GLTest.dir/sources/window/window.c.obj: CMakeFiles/GLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/GLTest.dir/sources/window/window.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLTest.dir/sources/window/window.c.obj -MF CMakeFiles\GLTest.dir\sources\window\window.c.obj.d -o CMakeFiles\GLTest.dir\sources\window\window.c.obj -c C:\Users\Ludwig\source\repos\GLTest\sources\window\window.c

CMakeFiles/GLTest.dir/sources/window/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLTest.dir/sources/window/window.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ludwig\source\repos\GLTest\sources\window\window.c > CMakeFiles\GLTest.dir\sources\window\window.c.i

CMakeFiles/GLTest.dir/sources/window/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLTest.dir/sources/window/window.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ludwig\source\repos\GLTest\sources\window\window.c -o CMakeFiles\GLTest.dir\sources\window\window.c.s

# Object files for target GLTest
GLTest_OBJECTS = \
"CMakeFiles/GLTest.dir/main.c.obj" \
"CMakeFiles/GLTest.dir/sources/game.c.obj" \
"CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj" \
"CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj" \
"CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj" \
"CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj" \
"CMakeFiles/GLTest.dir/sources/window/window.c.obj"

# External object files for target GLTest
GLTest_EXTERNAL_OBJECTS =

GLTest.exe: CMakeFiles/GLTest.dir/main.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/game.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/graphics/renderer.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/resources/resourcemanager.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/resources/shaders/shader.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/resources/textures/texture.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/sources/window/window.c.obj
GLTest.exe: CMakeFiles/GLTest.dir/build.make
GLTest.exe: CMakeFiles/GLTest.dir/linkLibs.rsp
GLTest.exe: CMakeFiles/GLTest.dir/objects1
GLTest.exe: CMakeFiles/GLTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable GLTest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\GLTest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GLTest.dir/build: GLTest.exe
.PHONY : CMakeFiles/GLTest.dir/build

CMakeFiles/GLTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\GLTest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/GLTest.dir/clean

CMakeFiles/GLTest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ludwig\source\repos\GLTest C:\Users\Ludwig\source\repos\GLTest C:\Users\Ludwig\source\repos\GLTest\build C:\Users\Ludwig\source\repos\GLTest\build C:\Users\Ludwig\source\repos\GLTest\build\CMakeFiles\GLTest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GLTest.dir/depend

