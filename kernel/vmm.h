#ifndef ETHOS_VMM_H
#define ETHOS_VMM_H

#include <stdint.h>
#include "riscv.h"

void vmm_disable_paging() {
    w_satp(0x0)
}

#endif //ETHOS_VMM_H
