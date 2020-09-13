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
set(LINKER_FLAGS "")

##################### CROSS COMPILING TOOL CHAIN ############################
set(_CMAKE_TOOLCHAIN_PREFIX "riscv32-unknown-elf")

# BINUTILS
set(CMAKE_AR "riscv32-unknown-elf-ar")
set(CMAKE_RANLIB  "riscv32-unknown-elf-ranlib")

# ASM
enable_language(ASM)
set(CMAKE_ASM_COMPILER "riscv32-unknown-elf-as")
set(CMAKE_ASM_OBJECT_FORMAT "elf")
set(CMAKE_ASM_COMPILE_OBJECT "${CMAKE_ASM_COMPILER} ${CMAKE_ASM_FLAGS} ${ASM_FLAGS} -o <OBJECT> <SOURCE>")

# C COMPILER
enable_language(C)
set(CMAKE_C_COMPILER "riscv32-unknown-elf-gcc")
set(CMAKE_C_SYSROOT_FLAG "")
set(CMAKE_C_FLAGS "${C_FLAGS}")
set(CMAKE_C_LINK_FLAGS "")
set(CMAKE_CXX_COMPILER "riscv32-unknown-elf-g++")

# LINKER
set(CMAKE_LINKER riscv32-unknown-elf-ld)
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-T${CMAKE_SOURCE_DIR}/kernel/layout.ld")

# headers path
include_directories(kernel/libk/include)
file(GLOB_RECURSE KERNEL_SRCS "kernel/*.c" "kernel/*.asm")

# kernel
add_executable(${CMAKE_PROJECT_NAME} ${KERNEL_SRCS})
#target_link_libraries(${CMAKE_PROJECT_NAME})

add_custom_command (TARGET ${CMAKE_PROJECT_NAME}
        POST_BUILD
        COMMAND riscv32-unknown-elf-objdump -d -D arvos > arvos.elfdump && hexdump arvos > arvos.hexdump
        COMMENT "COPY kernel to another file")


# run kernel in QEMU
if(CMAKE_BUILD_TYPE MATCHES Debug)
#    set(QEMU_FLAGS "-s;-S")
endif()
add_custom_command (TARGET ${CMAKE_PROJECT_NAME}
        POST_BUILD
        COMMAND qemu-system-riscv32
            -serial mon:stdio
            -machine virt
            -m 2G
            -nographic
            -no-reboot
            -no-shutdown ${QEMU_FLAGS}
            -kernel ${CMAKE_BINARY_DIR}/arvos
            -monitor telnet:127.0.0.1:1234,server,nowait
            -bios none
        COMMENT "Running arvos kernel...")



