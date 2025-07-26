  processor 6502
  seg code        ;Define a new segment named "Code"
  org $f000       ;Define the origin of the ROM code at memory address $F000
Start: 
  lda #$82
  ldx #82
  ldy $82
  
  jmp Start

  org $fffc
  .word Start
  .word Start
