#include "riscv.h"
#include "memlayout.h"

page_table_t root_page_table __attribute__((aligned(4096))); // each PTE maps 4M
page_table_t mmio_page_table __attribute__((aligned(4096))); // secondary page table for MMIO in low 4M
page_table_t kernel_page_table __attribute__((aligned(4096))); // secondary page table for kernel in upper 2G

static uint32_t ppn(page_table_t *page_table) {
    return ((uint32_t)page_table) / 4096;
}

void vmm_disable_paging() {
    w_satp(0x0);
}

void vmm_enable_paging() {
    satp_t satp;
    satp.fields.ppn = ppn(&root_page_table);
    satp.fields.mode = 0x1;
    w_satp(satp.packed);
}

void vmm_init_identity_map() {
    vmm_map_page_for_page_table(&mmio_page_table);
    for(uint32_t i = 0; i < 1024; ++i) {
        vmm_map_page_for_physical_page(&mmio_page_table, i);
    }
    vmm_map_page_for_page_table(&kernel_page_table);
    for(uint32_t i = 0; i < 1024; ++i) {
        vmm_map_page_for_physical_page(&kernel_page_table, KERNBASE / 4096 + i);
    }
}

void vmm_map_page(page_table_t *page_table, uint32_t ppn) {
    pte_t page_table_pte;
    page_table_pte.fields.a = 0x1;
    page_table_pte.fields.ppn = ppn;
    (*page_table)[0] = page_table_pte;
}

// map a page for secondary page table
void vmm_map_page_for_page_table(uint32_t ppn) {
    vmm_map_page(&root_page_table, ppn);
}

// map a page for a physical page
void vmm_map_page_for_physical_page(page_table_t *secondary_page_table, uint32_t ppn) {
    vmm_map_page(secondary_page_table, ppn);
}
