  processor 6502
  seg code
  org $f000
Start:
  lda #1
  ldx #2
  ldy #3

  inx
  iny
  clc
  adc #1

  dex
  dey
  sbc #1

  org $fffc
  .word Start
  .word Start
