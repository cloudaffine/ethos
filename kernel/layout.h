// qemu -machine virt is set up like this,
// based on qemu's hw/riscv/virt.c: https://github.com/qemu/qemu/blob/master/hw/riscv/virt.c
//
// 00001000 -- boot ROM, provided by qemu
// 02000000 -- CLINT
// 0C000000 -- PLIC
// 10000000 -- uart0
// 10001000 -- virtio disk
// 80000000 -- boot ROM jumps here in machine mode: -kernel loads the kernel here
// unused RAM after 80000000.
// Physical address space is 16G, RAM is starting from 2G, so a maximum 14G RAM can be addressable.

#ifndef ARVOS_LAYOUT_H
#define ARVOS_LAYOUT_H

#include <stdint.h>

#define UART0 0x10000000
#define UART0_IRQ 10

// virtio mmio interface
#define VIRTIO0 0x10001000
#define VIRTIO0_IRQ 1

// local interrupt controller, which contains the timer.
#define CLINT 0x2000000
#define CLINT_MTIMECMP(hartid) (CLINT + 0x4000 + 8*(hartid))
#define CLINT_MTIME (CLINT + 0xBFF8) // cycles since boot.

// qemu puts programmable interrupt controller here.
#define PLIC 0x0c000000
#define PLIC_PRIORITY (PLIC + 0x0)
#define PLIC_PENDING (PLIC + 0x1000)
#define PLIC_MENABLE(hart) (PLIC + 0x2000 + (hart)*0x100)
#define PLIC_SENABLE(hart) (PLIC + 0x2080 + (hart)*0x100)
#define PLIC_MPRIORITY(hart) (PLIC + 0x200000 + (hart)*0x2000)
#define PLIC_SPRIORITY(hart) (PLIC + 0x201000 + (hart)*0x2000)
#define PLIC_MCLAIM(hart) (PLIC + 0x200004 + (hart)*0x2000)
#define PLIC_SCLAIM(hart) (PLIC + 0x201004 + (hart)*0x2000)

#define DRAM 0x80000000

#define RAMSIZE  0x200000   // total RAM size 2G

extern char kernel_start;
extern char kernel_end;

#define KERN_START (uint32_t)&kernel_start // from upper 2G, in QEMU monitor: info mtree
#define KERN_END   (uint32_t)&kernel_end   // actually the kernel end
#define KERN_STOP (KERN_START + 128*1024*1024) // Reserved 128M for kernel use

#if DRAM != KERN_START
#error "ELF kernel should be loaded from DRAM base"
#endif

#endif //ARVOS_LAYOUT_H
