#include <stdio.h>

int puts(const char *s)
{
    while (*s) putchar(*s++);
    putchar('\n');
}
