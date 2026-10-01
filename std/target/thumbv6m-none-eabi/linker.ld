MEMORY
{
  BOOT2 (rx) : ORIGIN = 0x10000000, LENGTH = 256
  FLASH (rx) : ORIGIN = 0x10000100, LENGTH = 2048K - 256
  RAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 264K
}

/* Top of the main 256K SRAM bank (the bootrom's own stack lives above this). */
_estack = 0x20040000;

SECTIONS
{
  /* Place the Boot Stage 2 loader at the very beginning of Flash */
  .boot2 :
  {
    KEEP(*(.boot2))
  } > BOOT2

  /* Place the vector table and main code next in Flash */
  .text :
  {
    KEEP(*(.isr_vector))
    *(.text*)
    *(.rodata*)
  } > FLASH

  /* Cortex-M0+ has no unwinder: drop the .ARM.exidx unwind tables clang emits
   * (they reference __aeabi_unwind_cpp_pr0, which bare-metal links must stub). */
  /DISCARD/ :
  {
    *(.ARM.exidx)
    *(.ARM.exidx.*)
    *(.gnu.linkonce.armexidx.*)
  }

  /* Keep all data in RAM */
  .data :
  {
    _sdata = .;
    *(.data*)
    _edata = .;
  } > RAM AT > FLASH
  _sidata = LOADADDR(.data);

  .bss :
  {
    _sbss = .;
    *(.bss*)
    *(COMMON)
    _ebss = .;
  } > RAM
}