SECTION "vblank",ROM0[$40]
    jp VBlank
SECTION "lcdc",ROM0[$48]
    reti
SECTION "timer",ROM0[$50]
    reti
SECTION "serial",ROM0[$58]
    reti
SECTION "joypad",ROM0[$60]
    reti
SECTION "Interrupt Handlers", ROM0[$200]
VBlank::
    reti

