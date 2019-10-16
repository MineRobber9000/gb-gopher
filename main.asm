INCLUDE "rst_vectors.asm"

INCLUDE "interrupts.asm"

SECTION "bank0",ROM0[$61]

SECTION "romheader",ROM0[$100]
    nop
    jp Start

SECTION "start",ROM0[$150]

INCLUDE "main_routine.asm"

INCLUDE "interrupt_handlers.asm"
