#include "console.h"
#include "layout.h"

int console_putchar(const char ch) {
    volatile unsigned char* base_addr = (unsigned char*)UART0;
    *base_addr = (unsigned char)ch;
    return ch;
}

int console_getchar() {
    return 'a'; // TODO
}
