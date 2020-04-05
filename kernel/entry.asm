# Entrypoint for the hand-over from boot loader and run in machine mode.
# The linker help make .text section located in 0x80000000.

.section .entry
.balign 4
.global entry

entry:
    la sp, stack_top
    call start

idle:
    j idle
