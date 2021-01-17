#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#include "riscv.h"
#include "layout.h"
#include "vmm.h"

pagetable_t kernel_pagetable __attribute__((aligned(PAGE_SIZE)));


static uint32_t ppn(pt_t *pt) {
    return ((uint32_t)pt) / PAGE_SIZE;
}

// init kernel pagetable
void vmm_init_kernel_pagetable(pagetable_t *pagetable) {
    // init secondary page tables with invalid and not mapped
    for(uint32_t i = 0; i < PT_LEN; ++i) {
        for(uint32_t j = 0; j < PT_LEN; ++j) {
            pte_t pte = { .raw = 0x0 };
            pagetable->secondary[i][j] = pte;
        }
    }
    // point each entry in root page table to secondary page tables accordingly
    // so root page table is valid and initialized
    for(uint32_t i = 0; i < PT_LEN; ++i) {
        pte_t pte;
        pte.v = 0x1; // valid
        pte.r = 0x1; // read
        pte.w = 0x1; // write
        pte.x = 0x0; // disable execute
        pte.u = 0x0; // kernel page
        pte.a = 0x0; // not access
        pte.d = 0x0; // not dirty
        pte.ppn = ppn(&(pagetable->secondary[i]));
        pagetable->root[i] = pte;

        assert(pagetable->root[i].ppn * PAGE_SIZE == &(pagetable->secondary[i]));
    }
}

void vmm_map_page(pagetable_t *pagetable, uint32_t pt_index, uint32_t pte_index, uint32_t ppn) {
    pte_t pte;
    pte.v = 0x1; // valid
    pte.r = 0x1; // read
    pte.w = 0x1; // write
    pte.x = 0x1; // execute
    pte.u = 0x0; // kernel page
    pte.a = 0x0; // not accessed
    pte.d = 0x0; // not dirty
    pte.ppn = ppn;
    (pagetable->secondary)[pt_index][pte_index] = pte;
}

void vmm_map_identity_pages(pagetable_t *pagetable, uint32_t pa_start, uint32_t pa_end) {
    va_t va_start = { .raw = pa_start };
    va_t va_end = { .raw = pa_end };
    for(uint32_t i = va_start.vpn1; i < va_end.vpn1; ++i) {
        for(uint32_t j = 0; j < PT_LEN; ++j) {
            vmm_map_page(pagetable, i, j, PT_LEN * i + j);
        }
    }
}

void vmm_disable_paging() {
    w_satp(0x0);
}

void vmm_enable_paging() {
    assert_structures();
    vmm_init_kernel_pagetable(&kernel_pagetable);
    // identity mapping
    //- MMIO
    vmm_map_identity_pages(&kernel_pagetable, 0, KERN_START);

    //- KERNEL
    vmm_map_identity_pages(&kernel_pagetable, KERN_START, KERN_STOP);

    // set satp
    satp_t satp;
    satp.ppn = ppn(&kernel_pagetable.root);
    satp.asid = 0x000000000;
    satp.mode = 0x1;
    printf("satp: 0x%x (ppn: 0x%x asid: %x mode: %x) -> 0x%x\n", satp.raw, satp.ppn, satp.asid, satp.mode, satp.ppn << 12);
    vmm_info();
    w_satp(satp.raw);
    printf("##### \n");
//    sfence_vma();
    printf("####!!!!# %x\n", r_satp());
}

static void vmm_print_page_table(pt_t * pt, char* description) {
    printf("0x%x: %s \n", (uint32_t)pt, description);
    for(uint32_t i = 0; i < 5; ++i) {
        pte_t pte = (*pt)[i];
        printf(" 0x%x (ppn 0x%x)\n", pte, pte.ppn);
    }
    printf("... \n");
}

void vmm_info() {
    vmm_print_page_table(&kernel_pagetable.root, "root page table");
    vmm_print_page_table(&kernel_pagetable.secondary[0], "secondary page table #0 -> mmio");
    vmm_print_page_table(&kernel_pagetable.secondary[512], "secondary page table #512 -> kernel start"); // kernel start
    vmm_print_page_table(&kernel_pagetable.secondary[543], "secondary page table #543 -> kernel end"); // kernel stop 128M
    vmm_print_page_table(&kernel_pagetable.secondary[544], "secondary page table #544");
}




