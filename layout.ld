OUTPUT_ARCH( "riscv" )
ENTRY( entry )
SECTIONS
{
  /* text: test code section */
  . = 0x80000000;
  .text : { *(.text) }
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
  . += 0x8000;
  stack_top = .;

  /* End of uninitalised data segement */
  _end = .;
}