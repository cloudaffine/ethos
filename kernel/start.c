#include <stdio.h>
#include "memlayout.h"
#include "vmm.h"

void start() {
    const char* banner = " ______ _______ _    _  ____   _____ \n|  ____|__   __| |  | |/ __ \\ / ____|\n| |__     | |  | |__| | |  | | (___  \n|  __|    | |  |  __  | |  | |\\___ \\ \n| |____   | |  | |  | | |__| |____) |\n|______|  |_|  |_|  |_|\\____/|_____/ \n";
    const char* msg = "Hello world, Ethos!\n";
    printf("%s \n version: %s \n", banner, "1.0");
    printf("kernel: 0x%x ~ 0x%x .. 0x%x \n", KERN_START, KERN_STOP, KERN_END);
    vmm_enable_paging();
//    asm volatile("mret");
    vmm_info();
}