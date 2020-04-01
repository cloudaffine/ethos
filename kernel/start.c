#include "memlayout.h"
#include "../libkc/console.h"
#define PRINT_UART0(x) print_uart(UART0, x)

void print_uart(volatile unsigned char* base_addr, const char *s) {
    while(*s != '\0') {
        *base_addr = (unsigned char)(*s);
        s++;
    }
}


void start() {
    const char* banner = " ______ _______ _    _  ____   _____ \n|  ____|__   __| |  | |/ __ \\ / ____|\n| |__     | |  | |__| | |  | | (___  \n|  __|    | |  |  __  | |  | |\\___ \\ \n| |____   | |  | |  | | |__| |____) |\n|______|  |_|  |_|  |_|\\____/|_____/ \n";
    const char* msg = "Hello world, Ethos!\n";
    PRINT_UART0(banner);
}