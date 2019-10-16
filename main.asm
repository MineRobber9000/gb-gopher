INCLUDE "rst_vectors.asm"

INCLUDE "interrupts.asm"

SECTION "romheader",ROM0[$100]
    nop
    jp Start

INCLUDE "main_routine.asm"

INCLUDE "interrupt_handlers.asm"
