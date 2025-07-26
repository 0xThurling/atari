  processor 6502
  seg code          ;Degine the new code segment
  org $f000         ;Set the mem position

Start:
  lda #$a
  ldx #%11111111
  sta $80
  stx $81

  org $fffc
  .word Start
  .word Start
