; Flat binary entry point (Byte 0)
; Hello World!
mov ah, 0x0e ; Select BIOS subinterrupt handler
mov al, 'H'  ; Store Data for interrupt handler
int 0x10     ; Call Interrupt 0x10 (Video interrupt)

jmp $        ; Endless Loop (Catch execution to prevent data execution leading to crashes/errors/corruption etc)

; Pad out the remaining bytes of the bootsector with 0
times 510-($-$$) db 0

; "Magic Number (0x55AA)" at the end of the bootsector to signal bootable code to BIOS.
; Has to be stored in reverse order due to little endian architecture of x86 processors.
  dw 0xAA55
