  processor 6502
  seg code
  org $f000
Start:
  lda #100
  adc #5
  sbc #10

  org $fffc
  .word Start
  .word Start
