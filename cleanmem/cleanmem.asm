  processor 6502  ; specify the processor

  seg code        ; DASM specific
  org $F000       ; Define the code origin at $F000 - initial ROM memory address

Start:            ; Alias to $F000 address
  sei             ; Disable interupts
  cld             ; Disable the BCD decimal math mode
  ldx #$FF        ; Load the X register with #$FF
  txs             ; Transfer the register to the stack pointer register

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clear the page zero region ($00 to $FF)
; Meaning the entire RAM space and also the entire TIA register
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  lda #0          ; A = 0
  ldx #$FF        ; X = #$FF

MemLoop:
  sta $0,X        ; Store the value of A inside memory address $0 + X
  dex             ; X--
  bne MemLoop     ; if X != 0
