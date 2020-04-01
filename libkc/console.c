#include "console.h"
#include "../kernel/memlayout.h"

int console_putchar(const char ch) {
    volatile unsigned char* base_addr = UART0;
    *base_addr = (unsigned char)ch;
    return ch;
}

int console_getchar() {
    return '\0'; // TODO
}