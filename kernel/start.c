#include <stdio.h>
#include "riscv.h"
#include "console.h"

void main();

// Run in machine mode
void start() {
    console_init();
    // set M Previous Privilege mode to Supervisor, for mret.
//    mstatus_t mstatus = { .raw = r_mstatus()};
//    mstatus.mpp = 0x1;
//    w_mstatus(mstatus.raw);
    unsigned long x = r_mstatus();
    x &= ~MSTATUS_MPP_MASK;
    x |= MSTATUS_MPP_S;
    w_mstatus(x);
    printf("write %x to mstatus \n", x);

    // delegate all exceptions to supervisor mode.
    w_medeleg(0xffff);
    // delegate all interrupts to supervisor mode.
    w_mideleg(0xffff);

    // ask for clock interrupts.
//    timerinit();

    // keep each CPU's hartid in its tp register, for cpuid().
    int id = r_mhartid();
    w_tp(id);


    printf("current mstatus, sstatus: %x %x \n", r_mstatus(), r_sstatus());
    // switch to supervisor mode and jump to main().
    printf("ready to switch to supervisor mode\n");


    // --------- init supervisor registers in advance --------
    // enable supervisor mode exception/interruptions
    w_sie(r_sie() | SIE_SEIE | SIE_STIE | SIE_SSIE);
    // disable supervisor mode paging for now.
    w_satp(0);

    // set M Exception Program Counter to main, for mret.
    w_mepc((uint32_t)main);
    asm volatile("mret");
}

