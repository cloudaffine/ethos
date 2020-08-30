OUTPUT_ARCH( "riscv" )
ENTRY( entry )
SECTIONS
{
  /* start from here QEMU -kernel will jump */
  . = 0x80000000;
  kernel_start = .;

  .text : {
    *(.entry)
    *(.text)
  }
  /* data: Initialized data segment */
  .data : {
   . = ALIGN(4096);
   *(.data)
  }
  .rodata : {
   *(.rodata)
  }
  .bss : {
    *(.bss)
  }
  .sdata : {
    *(.sdata) }
    .debug : { *(.debug)
  }

  /* 32K for kernel stack */
  . += 0x8000;
  stack_top = .;

  . = ALIGN(4096);
  kernel_end = .;
}