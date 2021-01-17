#include <stdio.h>
#include "../kernel/console.h"

int putchar(int ch)
{
    return console_putchar(ch);
//    return console_dev->putchar(ch);
}
