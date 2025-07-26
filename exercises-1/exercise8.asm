  processor 6502
  seg code
  org $f000
Start:
  ldy #$0a
  tya
Loop:
  sta $80,Y
  dey
  bne Loop

  ; Fix the off by one
  sta $80

  org $fffc
  .word Start
  .word Start
