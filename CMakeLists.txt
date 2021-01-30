cmake_minimum_required (VERSION 3.13)
set(CMAKE_C_COMPILER_WORKS "STATIC_LIBRARY")
project(arvos C ASM)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)
set(CMAKE_CROSSCOMPILING 1)
set(CMAKE_VERBOSE_MAKEFILE ON)

# tool chain definition
set(ASM_FLAGS "-march=rv32imac -mabi=ilp32")
set(C_FLAGS "-march=rv32imafdc -mabi=ilp32 -mcmodel=medany -std=gnu99 -ffreestanding -nostdlib -nostdinc -nostartfiles -fno-aggressive-loop-optimizations -fno-zero-initialized-in-bss -O0 -Wall -Wextra")
set(CMAKE_C_FLAGS_DEBUG "-ggdb")
set(CMAKE_C_FLAGS_RELEASE "-O0")
set(LINKER_FLAGS "")

##################### CROSS COMPILING TOOL CHAIN ############################
set(_CMAKE_TOOLCHAIN_PREFIX "/Users/chao.yang/Library/xPacks/@xpack-dev-tools/riscv-none-embed-gcc/10.1.0-1.1.1/.content/bin")

#set(RISCV "/usr/local/opt/riscv32/bin/riscv32-unknown-elf")
set(RISCV "${_CMAKE_TOOLCHAIN_PREFIX}/riscv-none-embed")

# BINUTILS
set(CMAKE_AR "${RISCV}-ar")
set(CMAKE_RANLIB  "${RISCV}-ranlib")

# ASM
enable_language(ASM)
set(CMAKE_ASM_COMPILER "${RISCV}-as")
set(CMAKE_ASM_OBJECT_FORMAT "elf")
set(CMAKE_ASM_COMPILE_OBJECT "${CMAKE_ASM_COMPILER} ${CMAKE_ASM_FLAGS} ${ASM_FLAGS} -o <OBJECT> <SOURCE>")

# C COMPILER
enable_language(C)
set(CMAKE_C_COMPILER "${RISCV}-gcc")
set(CMAKE_C_SYSROOT_FLAG "")
set(CMAKE_C_FLAGS "${C_FLAGS}")
set(CMAKE_C_LINK_FLAGS "")
set(CMAKE_CXX_COMPILER "${RISCV}-g++")

# LINKER
set(CMAKE_LINKER ${RISCV}-ld)
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-T${CMAKE_SOURCE_DIR}/kernel/layout.ld")

file(GLOB_RECURSE LIBC_SRCS "libc/*.c" "libc/*.h")
file(GLOB_RECURSE KERNEL_SRCS "kernel/*.c" "kernel/*.asm" "kernel/*.c")

# headers path
include_directories(libc/include)

# libc for kernel only
add_library(c STATIC ${LIBC_SRCS})
target_link_libraries(c)

# kernel
add_executable(${CMAKE_PROJECT_NAME} ${KERNEL_SRCS})
target_link_libraries(${CMAKE_PROJECT_NAME} c)

add_custom_command (TARGET ${CMAKE_PROJECT_NAME}
        POST_BUILD
        COMMAND ${RISCV}-objdump -d -D arvos > arvos.objdump && hexdump arvos > arvos.hexdump
        COMMENT "COPY kernel to another file")


# run kernel in QEMU
#if(CMAKE_BUILD_TYPE MATCHES Debug)
#    set(QEMU_FLAGS "-gdb tcp::1234 -S")
#endif()
#add_custom_command (TARGET ${CMAKE_PROJECT_NAME}
#        POST_BUILD
#        COMMAND qemu-system-riscv32
#            -machine virt
#            -m 2G
#            -no-reboot
#            -no-shutdown ${QEMU_FLAGS}
#            -bios none
#            -kernel ${CMAKE_BINARY_DIR}/arvos
#            -nographic
#            -monitor telnet:127.0.0.1:4321,server,nowait
#            #-serial mon:stdio
#
#        COMMENT "Running arvos kernel...")



