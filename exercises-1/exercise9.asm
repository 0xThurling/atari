  processor 6502
  seg code
  org $f000
Start:
  lda #$01

Loop:
  clc
  adc #$01
  cmp #$0a
  bne Loop

  org $fffc 
  .word Start
  .word Start
