  processor 6502
  seg code
  org $f000
Start:
  lda #$0a
  sta $80

  lda $80
  clc
  adc #1
  sbc #1

  org $fffc
  .word Start
  .word Start
