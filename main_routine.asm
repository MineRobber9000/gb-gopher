SECTION "Main Routine", ROM0[$150]
Start::
.loop
    halt
    jr .loop
