  processor 6502
  seg code
  org $f000
Start:
  lda #$0a
  ldx #%1010

  sta $80
  stx $81

  lda #10
  clc
  adc $80
  adc $81

  sta $82

  org $fffc
  .word Start
  .word Start
