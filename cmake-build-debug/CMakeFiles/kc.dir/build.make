# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = "/Users/chao.yang/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/chao.yang/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chao.yang/Work/ethos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chao.yang/Work/ethos/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kc.dir/flags.make

CMakeFiles/kc.dir/libkc/std/abort.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/abort.c.o: ../libkc/std/abort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/kc.dir/libkc/std/abort.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/abort.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/abort.c

CMakeFiles/kc.dir/libkc/std/abort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/abort.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/abort.c > CMakeFiles/kc.dir/libkc/std/abort.c.i

CMakeFiles/kc.dir/libkc/std/abort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/abort.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/abort.c -o CMakeFiles/kc.dir/libkc/std/abort.c.s

CMakeFiles/kc.dir/libkc/std/clz.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/clz.c.o: ../libkc/std/clz.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/kc.dir/libkc/std/clz.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/clz.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/clz.c

CMakeFiles/kc.dir/libkc/std/clz.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/clz.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/clz.c > CMakeFiles/kc.dir/libkc/std/clz.c.i

CMakeFiles/kc.dir/libkc/std/clz.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/clz.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/clz.c -o CMakeFiles/kc.dir/libkc/std/clz.c.s

CMakeFiles/kc.dir/libkc/std/ctz.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/ctz.c.o: ../libkc/std/ctz.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/kc.dir/libkc/std/ctz.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/ctz.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/ctz.c

CMakeFiles/kc.dir/libkc/std/ctz.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/ctz.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/ctz.c > CMakeFiles/kc.dir/libkc/std/ctz.c.i

CMakeFiles/kc.dir/libkc/std/ctz.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/ctz.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/ctz.c -o CMakeFiles/kc.dir/libkc/std/ctz.c.s

CMakeFiles/kc.dir/libkc/std/getchar.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/getchar.c.o: ../libkc/std/getchar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/kc.dir/libkc/std/getchar.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/getchar.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/getchar.c

CMakeFiles/kc.dir/libkc/std/getchar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/getchar.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/getchar.c > CMakeFiles/kc.dir/libkc/std/getchar.c.i

CMakeFiles/kc.dir/libkc/std/getchar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/getchar.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/getchar.c -o CMakeFiles/kc.dir/libkc/std/getchar.c.s

CMakeFiles/kc.dir/libkc/std/malloc.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/malloc.c.o: ../libkc/std/malloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/kc.dir/libkc/std/malloc.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/malloc.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/malloc.c

CMakeFiles/kc.dir/libkc/std/malloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/malloc.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/malloc.c > CMakeFiles/kc.dir/libkc/std/malloc.c.i

CMakeFiles/kc.dir/libkc/std/malloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/malloc.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/malloc.c -o CMakeFiles/kc.dir/libkc/std/malloc.c.s

CMakeFiles/kc.dir/libkc/std/memchr.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/memchr.c.o: ../libkc/std/memchr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/kc.dir/libkc/std/memchr.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/memchr.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/memchr.c

CMakeFiles/kc.dir/libkc/std/memchr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/memchr.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/memchr.c > CMakeFiles/kc.dir/libkc/std/memchr.c.i

CMakeFiles/kc.dir/libkc/std/memchr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/memchr.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/memchr.c -o CMakeFiles/kc.dir/libkc/std/memchr.c.s

CMakeFiles/kc.dir/libkc/std/memcmp.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/memcmp.c.o: ../libkc/std/memcmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/kc.dir/libkc/std/memcmp.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/memcmp.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/memcmp.c

CMakeFiles/kc.dir/libkc/std/memcmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/memcmp.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/memcmp.c > CMakeFiles/kc.dir/libkc/std/memcmp.c.i

CMakeFiles/kc.dir/libkc/std/memcmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/memcmp.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/memcmp.c -o CMakeFiles/kc.dir/libkc/std/memcmp.c.s

CMakeFiles/kc.dir/libkc/std/memcpy.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/memcpy.c.o: ../libkc/std/memcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/kc.dir/libkc/std/memcpy.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/memcpy.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/memcpy.c

CMakeFiles/kc.dir/libkc/std/memcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/memcpy.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/memcpy.c > CMakeFiles/kc.dir/libkc/std/memcpy.c.i

CMakeFiles/kc.dir/libkc/std/memcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/memcpy.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/memcpy.c -o CMakeFiles/kc.dir/libkc/std/memcpy.c.s

CMakeFiles/kc.dir/libkc/std/memset.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/memset.c.o: ../libkc/std/memset.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/kc.dir/libkc/std/memset.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/memset.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/memset.c

CMakeFiles/kc.dir/libkc/std/memset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/memset.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/memset.c > CMakeFiles/kc.dir/libkc/std/memset.c.i

CMakeFiles/kc.dir/libkc/std/memset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/memset.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/memset.c -o CMakeFiles/kc.dir/libkc/std/memset.c.s

CMakeFiles/kc.dir/libkc/std/printf.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/printf.c.o: ../libkc/std/printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/kc.dir/libkc/std/printf.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/printf.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/printf.c

CMakeFiles/kc.dir/libkc/std/printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/printf.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/printf.c > CMakeFiles/kc.dir/libkc/std/printf.c.i

CMakeFiles/kc.dir/libkc/std/printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/printf.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/printf.c -o CMakeFiles/kc.dir/libkc/std/printf.c.s

CMakeFiles/kc.dir/libkc/std/putchar.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/putchar.c.o: ../libkc/std/putchar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/kc.dir/libkc/std/putchar.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/putchar.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/putchar.c

CMakeFiles/kc.dir/libkc/std/putchar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/putchar.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/putchar.c > CMakeFiles/kc.dir/libkc/std/putchar.c.i

CMakeFiles/kc.dir/libkc/std/putchar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/putchar.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/putchar.c -o CMakeFiles/kc.dir/libkc/std/putchar.c.s

CMakeFiles/kc.dir/libkc/std/puts.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/puts.c.o: ../libkc/std/puts.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/kc.dir/libkc/std/puts.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/puts.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/puts.c

CMakeFiles/kc.dir/libkc/std/puts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/puts.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/puts.c > CMakeFiles/kc.dir/libkc/std/puts.c.i

CMakeFiles/kc.dir/libkc/std/puts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/puts.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/puts.c -o CMakeFiles/kc.dir/libkc/std/puts.c.s

CMakeFiles/kc.dir/libkc/std/snprintf.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/snprintf.c.o: ../libkc/std/snprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/kc.dir/libkc/std/snprintf.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/snprintf.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/snprintf.c

CMakeFiles/kc.dir/libkc/std/snprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/snprintf.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/snprintf.c > CMakeFiles/kc.dir/libkc/std/snprintf.c.i

CMakeFiles/kc.dir/libkc/std/snprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/snprintf.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/snprintf.c -o CMakeFiles/kc.dir/libkc/std/snprintf.c.s

CMakeFiles/kc.dir/libkc/std/strchr.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/strchr.c.o: ../libkc/std/strchr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/kc.dir/libkc/std/strchr.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/strchr.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/strchr.c

CMakeFiles/kc.dir/libkc/std/strchr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/strchr.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/strchr.c > CMakeFiles/kc.dir/libkc/std/strchr.c.i

CMakeFiles/kc.dir/libkc/std/strchr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/strchr.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/strchr.c -o CMakeFiles/kc.dir/libkc/std/strchr.c.s

CMakeFiles/kc.dir/libkc/std/strcmp.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/strcmp.c.o: ../libkc/std/strcmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/kc.dir/libkc/std/strcmp.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/strcmp.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/strcmp.c

CMakeFiles/kc.dir/libkc/std/strcmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/strcmp.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/strcmp.c > CMakeFiles/kc.dir/libkc/std/strcmp.c.i

CMakeFiles/kc.dir/libkc/std/strcmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/strcmp.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/strcmp.c -o CMakeFiles/kc.dir/libkc/std/strcmp.c.s

CMakeFiles/kc.dir/libkc/std/strlen.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/strlen.c.o: ../libkc/std/strlen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/kc.dir/libkc/std/strlen.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/strlen.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/strlen.c

CMakeFiles/kc.dir/libkc/std/strlen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/strlen.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/strlen.c > CMakeFiles/kc.dir/libkc/std/strlen.c.i

CMakeFiles/kc.dir/libkc/std/strlen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/strlen.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/strlen.c -o CMakeFiles/kc.dir/libkc/std/strlen.c.s

CMakeFiles/kc.dir/libkc/std/strncmp.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/strncmp.c.o: ../libkc/std/strncmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/kc.dir/libkc/std/strncmp.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/strncmp.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/strncmp.c

CMakeFiles/kc.dir/libkc/std/strncmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/strncmp.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/strncmp.c > CMakeFiles/kc.dir/libkc/std/strncmp.c.i

CMakeFiles/kc.dir/libkc/std/strncmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/strncmp.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/strncmp.c -o CMakeFiles/kc.dir/libkc/std/strncmp.c.s

CMakeFiles/kc.dir/libkc/std/strncpy.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/strncpy.c.o: ../libkc/std/strncpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/kc.dir/libkc/std/strncpy.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/strncpy.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/strncpy.c

CMakeFiles/kc.dir/libkc/std/strncpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/strncpy.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/strncpy.c > CMakeFiles/kc.dir/libkc/std/strncpy.c.i

CMakeFiles/kc.dir/libkc/std/strncpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/strncpy.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/strncpy.c -o CMakeFiles/kc.dir/libkc/std/strncpy.c.s

CMakeFiles/kc.dir/libkc/std/vprintf.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/vprintf.c.o: ../libkc/std/vprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/kc.dir/libkc/std/vprintf.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/vprintf.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/vprintf.c

CMakeFiles/kc.dir/libkc/std/vprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/vprintf.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/vprintf.c > CMakeFiles/kc.dir/libkc/std/vprintf.c.i

CMakeFiles/kc.dir/libkc/std/vprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/vprintf.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/vprintf.c -o CMakeFiles/kc.dir/libkc/std/vprintf.c.s

CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o: CMakeFiles/kc.dir/flags.make
CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o: ../libkc/std/vsnprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o   -c /Users/chao.yang/Work/ethos/libkc/std/vsnprintf.c

CMakeFiles/kc.dir/libkc/std/vsnprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kc.dir/libkc/std/vsnprintf.c.i"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chao.yang/Work/ethos/libkc/std/vsnprintf.c > CMakeFiles/kc.dir/libkc/std/vsnprintf.c.i

CMakeFiles/kc.dir/libkc/std/vsnprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kc.dir/libkc/std/vsnprintf.c.s"
	riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chao.yang/Work/ethos/libkc/std/vsnprintf.c -o CMakeFiles/kc.dir/libkc/std/vsnprintf.c.s

# Object files for target kc
kc_OBJECTS = \
"CMakeFiles/kc.dir/libkc/std/abort.c.o" \
"CMakeFiles/kc.dir/libkc/std/clz.c.o" \
"CMakeFiles/kc.dir/libkc/std/ctz.c.o" \
"CMakeFiles/kc.dir/libkc/std/getchar.c.o" \
"CMakeFiles/kc.dir/libkc/std/malloc.c.o" \
"CMakeFiles/kc.dir/libkc/std/memchr.c.o" \
"CMakeFiles/kc.dir/libkc/std/memcmp.c.o" \
"CMakeFiles/kc.dir/libkc/std/memcpy.c.o" \
"CMakeFiles/kc.dir/libkc/std/memset.c.o" \
"CMakeFiles/kc.dir/libkc/std/printf.c.o" \
"CMakeFiles/kc.dir/libkc/std/putchar.c.o" \
"CMakeFiles/kc.dir/libkc/std/puts.c.o" \
"CMakeFiles/kc.dir/libkc/std/snprintf.c.o" \
"CMakeFiles/kc.dir/libkc/std/strchr.c.o" \
"CMakeFiles/kc.dir/libkc/std/strcmp.c.o" \
"CMakeFiles/kc.dir/libkc/std/strlen.c.o" \
"CMakeFiles/kc.dir/libkc/std/strncmp.c.o" \
"CMakeFiles/kc.dir/libkc/std/strncpy.c.o" \
"CMakeFiles/kc.dir/libkc/std/vprintf.c.o" \
"CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o"

# External object files for target kc
kc_EXTERNAL_OBJECTS =

libkc.a: CMakeFiles/kc.dir/libkc/std/abort.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/clz.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/ctz.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/getchar.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/malloc.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/memchr.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/memcmp.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/memcpy.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/memset.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/printf.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/putchar.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/puts.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/snprintf.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/strchr.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/strcmp.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/strlen.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/strncmp.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/strncpy.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/vprintf.c.o
libkc.a: CMakeFiles/kc.dir/libkc/std/vsnprintf.c.o
libkc.a: CMakeFiles/kc.dir/build.make
libkc.a: CMakeFiles/kc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Linking C static library libkc.a"
	$(CMAKE_COMMAND) -P CMakeFiles/kc.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kc.dir/build: libkc.a

.PHONY : CMakeFiles/kc.dir/build

CMakeFiles/kc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kc.dir/clean

CMakeFiles/kc.dir/depend:
	cd /Users/chao.yang/Work/ethos/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chao.yang/Work/ethos /Users/chao.yang/Work/ethos /Users/chao.yang/Work/ethos/cmake-build-debug /Users/chao.yang/Work/ethos/cmake-build-debug /Users/chao.yang/Work/ethos/cmake-build-debug/CMakeFiles/kc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kc.dir/depend
