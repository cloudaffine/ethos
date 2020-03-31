# Entrypoint for the hand-over from muliti-boot and run in machine mode.
# The linker help make .boot section located in 0x100000.

# Multi-boot constants
.equ MULTIBOOT_MAGIC,                       0x1BADB002
.equ MULTIBOOT_PAGE_ALIGN,                  1<<0
.equ MULTIBOOT_MEMORY_INFO,                 1<<1
.equ MULTIBOOT_VIDEO_MODE,                  1<<2
.equ MULTIBOOT_INFO_FRAMEBUFFER_INFO,       0x00001000
.equ MULTIBOOT_INFO_MEM_MAP,                0x00000040
.equ MULTIBOOT_FLAGS,                       MULTIBOOT_PAGE_ALIGN | MULTIBOOT_MEMORY_INFO | MULTIBOOT_INFO_MEM_MAP | MULTIBOOT_VIDEO_MODE | MULTIBOOT_INFO_FRAMEBUFFER_INFO
.equ MULTIBOOT_CHECKSUM,                    -(MULTIBOOT_MAGIC + MULTIBOOT_FLAGS)

.equ RED, 0x04
.equ VGA_BASE, 0xb8000
.equ VGA_SIZE, 80 * 25

.section .boot
.balign 4
.global start

multiboot:
    .4byte MULTIBOOT_MAGIC                     # magic number (multiboot 2)
    .4byte MULTIBOOT_FLAGS
    .4byte MULTIBOOT_CHECKSUM

start:
    li a0, 0x2A6f2A77
    li a1, VGA_BASE
    sw a0, 0(a1)
