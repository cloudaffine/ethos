#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#include "riscv.h"
#include "memlayout.h"

pagetable_t kernel_pagetable __attribute__((aligned(4096)));


static uint32_t ppn(pt_t *pt) {
    return ((uint32_t)pt) / 4096;
}

// init kernel pagetable
void vmm_init_pagetable(pagetable_t *pagetable, bool_t user) {
    for(uint32_t i = 0; i < 1024; ++i) {
        for(uint32_t j = 0; j < 1024; ++j) {
            pte_t pte = { .raw = 0x0 };
            pagetable->secondary[i][j] = pte;
        }
    }
    for(uint32_t i = 0; i < 1024; ++i) {
        pte_t pte;
        pte.v = 0x1; // valid
        pte.r = 0x1; // read
        pte.w = 0x1; // write
        pte.x = 0x0; // disable execute
        pte.u = user == false ? 0x0 : 0x1; // kernel page
        pte.a = 0x0; // not access
        pte.d = 0x0; // not dirty
        pte.ppn = ppn(&(pagetable->secondary[i]));
        pagetable->root[i] = pte;

        assert(pagetable->root[i].ppn * 4096 == &pagetable->secondary[i]);
    }
}

void vmm_map_page(pagetable_t *pagetable, uint32_t pt_index, uint32_t pte_index, uint32_t ppn, bool_t user) {
    pte_t page_table_pte;
    page_table_pte.v = 0x1;
    page_table_pte.u = user == false ? 0x0 : 0x1;
    page_table_pte.ppn = ppn;
    (pagetable->secondary)[pt_index][pte_index] = page_table_pte;
}

void vmm_disable_paging() {
    w_satp(0x0);
}

void vmm_enable_paging() {
    assert_structures();
    vmm_init_pagetable(&kernel_pagetable, false);
    // identity mapping
    //- MMIO
    uint32_t mmio_4m_start = 0;
    uint32_t mmio_4m_end = KERN_START / (4096 * 1024);
    for(uint32_t i = mmio_4m_start; i < mmio_4m_end; ++i) {
        for(uint32_t j = 0; j < 1024; ++j) {
            vmm_map_page(&kernel_pagetable, i, j, 1024 * i + j, false);
        }
    }

    //- KERNEL
    uint32_t kernel_4m_start = KERN_START / (4096 * 1024);
    uint32_t kernel_4m_end = KERN_STOP / (4096 * 1024);
    for(uint32_t i = kernel_4m_start; i < kernel_4m_end; ++i) {
        for(uint32_t j = 0; j < 1024; ++j) {
            vmm_map_page(&kernel_pagetable, i, j, 1024 * i + j, false);
        }
    }

    // set satp
    satp_t satp;
    satp.ppn = ppn(&kernel_pagetable.root);
    satp.asid = 0x000000000;
    satp.mode = 0x1;
    printf("satp: 0x%x (ppn: 0x%x asid: %x mode: %x)\n", satp, satp.ppn, satp.asid, satp.mode);
    w_satp(satp.raw);
}

static void vmm_print_page_table(pt_t * pt) {
    for(uint32_t i = 0; i < 5; ++i) {
        pte_t pte = (*pt)[i];
        printf("0x%x (ppn 0x%x)\n", pte, pte.ppn);
    }
    printf("... \n");
}

void vmm_info() {
    printf("root page table: \n");
    vmm_print_page_table(&kernel_pagetable.root);
    printf("secondary page tables: \n");
    vmm_print_page_table(&kernel_pagetable.secondary[0]);
    vmm_print_page_table(&kernel_pagetable.secondary[512]);
    vmm_print_page_table(&kernel_pagetable.secondary[543]);
    vmm_print_page_table(&kernel_pagetable.secondary[544]);
}




