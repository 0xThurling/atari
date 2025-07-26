  processor 6502
  seg code
  org $f000
Start:
  lda #15
  tax
  tay
  txa
  tya

  ldx #6
  txa
  tay

  org $fffc
  .word Start
  .word Start
