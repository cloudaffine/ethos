#include <stdio.h>
#include "../kernel/console.h"

int getchar()
{
    return console_getchar();
}
