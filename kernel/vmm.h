#ifndef ARVOS_VMM_H
#define ARVOS_VMM_H

#include <stdint.h>
#include <stdbool.h>
#include "riscv.h"

#define KB 1024
#define MB (1024 * KB)
#define PAGE_TABLE_SIZE 1024
#define PAGE_SIZE (4 * KB)
#define MEGA_PAGE_SIZE (PAGE_TABLE_SIZE * PAGE_SIZE)

void vmm_init_kernel_pagetable(pagetable_t *pagetable);
void vmm_disable_paging();
void vmm_enable_paging();
void vmm_info();

#endif //ARVOS_VMM_H
