#include <stdint.h>
#include <assert.h>

#define XLEN 32
typedef int32_t xlen_t;
typedef uint32_t u_xlen_t;

// which hart (core) is this?
static inline u_xlen_t
r_mhartid()
{
    u_xlen_t x;
    asm volatile("csrr %0, mhartid" : "=r" (x) );
    return x;
}

// Machine Status Register, mstatus

#define MSTATUS_MPP_MASK (3L << 11) // previous mode.
#define MSTATUS_MPP_M (3L << 11)
#define MSTATUS_MPP_S (1L << 11)
#define MSTATUS_MPP_U (0L << 11)
#define MSTATUS_MIE (1L << 3)    // machine-mode interrupt enable.

static inline u_xlen_t
r_mstatus()
{
    u_xlen_t x;
    asm volatile("csrr %0, mstatus" : "=r" (x) );
    return x;
}

static inline void
w_mstatus(u_xlen_t x)
{
    asm volatile("csrw mstatus, %0" : : "r" (x));
}

// machine exception program counter, holds the
// instruction address to which a return from
// exception will go.
static inline void
w_mepc(u_xlen_t x)
{
    asm volatile("csrw mepc, %0" : : "r" (x));
}

// Supervisor Status Register, sstatus

#define SSTATUS_SPP (1L << 8)  // Previous mode, 1=Supervisor, 0=User
#define SSTATUS_SPIE (1L << 5) // Supervisor Previous Interrupt Enable
#define SSTATUS_UPIE (1L << 4) // User Previous Interrupt Enable
#define SSTATUS_SIE (1L << 1)  // Supervisor Interrupt Enable
#define SSTATUS_UIE (1L << 0)  // User Interrupt Enable

static inline u_xlen_t
r_sstatus()
{
    u_xlen_t x;
    asm volatile("csrr %0, sstatus" : "=r" (x) );
    return x;
}

static inline void
w_sstatus(u_xlen_t x)
{
    asm volatile("csrw sstatus, %0" : : "r" (x));
}

// Supervisor Interrupt Pending
static inline u_xlen_t
r_sip()
{
    u_xlen_t x;
    asm volatile("csrr %0, sip" : "=r" (x) );
    return x;
}

static inline void
w_sip(u_xlen_t x)
{
    asm volatile("csrw sip, %0" : : "r" (x));
}

// Supervisor Interrupt Enable
#define SIE_SEIE (1L << 9) // external
#define SIE_STIE (1L << 5) // timer
#define SIE_SSIE (1L << 1) // software
static inline u_xlen_t
r_sie()
{
    u_xlen_t x;
    asm volatile("csrr %0, sie" : "=r" (x) );
    return x;
}

static inline void
w_sie(u_xlen_t x)
{
    asm volatile("csrw sie, %0" : : "r" (x));
}

// Machine-mode Interrupt Enable
#define MIE_MEIE (1L << 11) // external
#define MIE_MTIE (1L << 7)  // timer
#define MIE_MSIE (1L << 3)  // software
static inline u_xlen_t
r_mie()
{
    u_xlen_t x;
    asm volatile("csrr %0, mie" : "=r" (x) );
    return x;
}

static inline void
w_mie(u_xlen_t x)
{
    asm volatile("csrw mie, %0" : : "r" (x));
}

// machine exception program counter, holds the
// instruction address to which a return from
// exception will go.
static inline void
w_sepc(u_xlen_t x)
{
    asm volatile("csrw sepc, %0" : : "r" (x));
}

static inline u_xlen_t
r_sepc()
{
    u_xlen_t x;
    asm volatile("csrr %0, sepc" : "=r" (x) );
    return x;
}

// Machine Exception Delegation
static inline u_xlen_t
r_medeleg()
{
    u_xlen_t x;
    asm volatile("csrr %0, medeleg" : "=r" (x) );
    return x;
}

static inline void
w_medeleg(u_xlen_t x)
{
    asm volatile("csrw medeleg, %0" : : "r" (x));
}

// Machine Interrupt Delegation
static inline u_xlen_t
r_mideleg()
{
    u_xlen_t x;
    asm volatile("csrr %0, mideleg" : "=r" (x) );
    return x;
}

static inline void
w_mideleg(u_xlen_t x)
{
    asm volatile("csrw mideleg, %0" : : "r" (x));
}

// Supervisor Trap-Vector Base Address
// low two bits are mode.
static inline void
w_stvec(u_xlen_t x)
{
    asm volatile("csrw stvec, %0" : : "r" (x));
}

static inline u_xlen_t
r_stvec()
{
    u_xlen_t x;
    asm volatile("csrr %0, stvec" : "=r" (x) );
    return x;
}

// Machine-mode interrupt vector
static inline void
w_mtvec(u_xlen_t x)
{
    asm volatile("csrw mtvec, %0" : : "r" (x));
}

// use riscv's sv39 page table scheme.
#define SATP_SV39 (8L << 60)

#define MAKE_SATP(pagetable) (SATP_SV39 | (((u_xlen_t)pagetable) >> 12))

// supervisor address translation and protection;
// holds the address of the page table.
static inline void
w_satp(u_xlen_t x)
{
    asm volatile("csrw satp, %0" : : "r" (x));
}

static inline u_xlen_t
r_satp()
{
    u_xlen_t x;
    asm volatile("csrr %0, satp" : "=r" (x) );
    return x;
}

// Supervisor Scratch register, for early trap handler in trampoline.S.
static inline void
w_sscratch(u_xlen_t x)
{
    asm volatile("csrw sscratch, %0" : : "r" (x));
}

static inline void
w_mscratch(u_xlen_t x)
{
    asm volatile("csrw mscratch, %0" : : "r" (x));
}

// Supervisor Trap Cause
static inline u_xlen_t
r_scause()
{
    u_xlen_t x;
    asm volatile("csrr %0, scause" : "=r" (x) );
    return x;
}

// Supervisor Trap Value
static inline u_xlen_t
r_stval()
{
    u_xlen_t x;
    asm volatile("csrr %0, stval" : "=r" (x) );
    return x;
}

// Machine-mode Counter-Enable
static inline void
w_mcounteren(u_xlen_t x)
{
    asm volatile("csrw mcounteren, %0" : : "r" (x));
}

static inline u_xlen_t
r_mcounteren()
{
    u_xlen_t x;
    asm volatile("csrr %0, mcounteren" : "=r" (x) );
    return x;
}

// machine-mode cycle counter
static inline u_xlen_t
r_time()
{
    u_xlen_t x;
    asm volatile("csrr %0, time" : "=r" (x) );
    return x;
}

// enable device interrupts
static inline void
intr_on()
{
    w_sie(r_sie() | SIE_SEIE | SIE_STIE | SIE_SSIE);
    w_sstatus(r_sstatus() | SSTATUS_SIE);
}

// disable device interrupts
static inline void
intr_off()
{
    w_sstatus(r_sstatus() & ~SSTATUS_SIE);
}

// are device interrupts enabled?
static inline int
intr_get()
{
    u_xlen_t x = r_sstatus();
    return (x & SSTATUS_SIE) != 0;
}

// ========= General registers =======
static inline u_xlen_t
r_sp()
{
    u_xlen_t x;
    asm volatile("mv %0, sp" : "=r" (x) );
    return x;
}

// read and write tp, the thread pointer, which holds
// this core's hartid (core number), the index into cpus[].
static inline u_xlen_t
r_tp()
{
    u_xlen_t x;
    asm volatile("mv %0, tp" : "=r" (x) );
    return x;
}

static inline void
w_tp(u_xlen_t x)
{
    asm volatile("mv tp, %0" : : "r" (x));
}

static inline u_xlen_t
r_ra()
{
    u_xlen_t x;
    asm volatile("mv %0, ra" : "=r" (x) );
    return x;
}

// flush the TLB.
static inline void
sfence_vma()
{
    // the zero, zero means flush all TLB entries.
    asm volatile("sfence.vma zero, zero");
}


#define PGSIZE 4096 // bytes per page
#define PGOFFSET 12  // bits of offset within a page

#define PGROUNDUP(sz)  (((sz)+PGSIZE-1) & ~(PGSIZE-1))
#define PGROUNDDOWN(a) (((a)) & ~(PGSIZE-1))

#define PTE_V (1L << 0) // valid
#define PTE_R (1L << 1)
#define PTE_W (1L << 2)
#define PTE_X (1L << 3)
#define PTE_U (1L << 4) // 1 -> user can access

// shift a physical address to the right place for a PTE.
#define PA2PTE(pa) ((((u_xlen_t)pa) >> 12) << 10)

#define PTE2PA(pte) (((pte) >> 10) << 12)

#define PTE_FLAGS(pte) ((pte) & 0x3FF)

// extract the three 9-bit page table indices from a virtual address.
#define PXMASK          0x1FF // 9 bits
#define PXSHIFT(level)  (PGOFFSET+(9*(level)))
#define PX(level, va) ((((u_xlen_t) (va)) >> PXSHIFT(level)) & PXMASK)

// one beyond the highest possible virtual address.
// MAXVA is actually one bit less than the max allowed by
// Sv39, to avoid having to sign-extend virtual addresses
// that have the high bit set.
#define MAXVA (1L << (9 + 9 + 9 + 12 - 1))


// Page table entry (PTE)
typedef union {
    uint32_t packed;
    struct {
        uint8_t v       :  1; // valid
        uint8_t r       :  1; // read perm
        uint8_t w       :  1; // write perm
        uint8_t x       :  1; // execute perm
        uint8_t u       :  1; // user page?
        uint8_t g       :  1; //
        uint8_t a       :  1; // accessed?
        uint8_t d       :  1; // dirty?
        uint8_t rsw     :  2; // reserved
        uint32_t ppn    : 22; // physical page number
//        uint16_t ppn0   : 10; // physical page number
//        uint16_t ppn1   : 12; // physical page number
    } fields __attribute__((packed));
} pte_t;

typedef pte_t pt_t[1024]; // must be aligned to 4K

// this is page table tree
typedef struct {
    pt_t root;
    pt_t secondary[1024];
} pagetable_t __attribute__((packed));


// Supervisor Address Translation and Protection CSR
typedef union {
    uint32_t packed;
    struct {
        uint32_t ppn    : 22; // physical address of root page table
        uint16_t asid   :  9; // Address Space Identifier
        uint8_t  mode   :  1; // 0 - bare (no translation or protection) 1 - page-based 32-bit virtual addressing.
    } fields __attribute__((packed));
} satp_t;

// virtual address
typedef union {
    uint32_t packed;
    struct {
        uint16_t offset : 12;
        uint16_t vpn0   : 10; // virtual page number
        uint16_t vpn1   : 10; // virtual page number
    } fields __attribute__((packed));
} va_t;

static inline assert_structures() {
    assert(sizeof(pte_t) == 4);
    assert(sizeof(pagetable_t) == 1025 * 1024 * 4);
    assert(sizeof(satp_t) == 4);
    printf("### %d \n", sizeof(va_t));
    assert(sizeof(va_t) == 4);
}