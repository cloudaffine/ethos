#ifndef ETHOS_VMM_H
#define ETHOS_VMM_H

#include <stdint.h>
#include <stdbool.h>
#include "riscv.h"

void vmm_init_pagetable(pagetable_t *pagetable, bool_t user);
void vmm_disable_paging();
void vmm_enable_paging();
void vmm_info();

#endif //ETHOS_VMM_H
