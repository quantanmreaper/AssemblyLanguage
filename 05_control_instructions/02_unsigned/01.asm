; JA / JNBE → Jump if Above
section .data
    str_above db "AX > BX (Above)",10,0
    str_not_above db "AX <= BX (Not Above)",10,0

section .text
    global _start
_start:
    mov ax, 7
    mov bx, 3
    cmp ax, bx
    ja above

    mov ecx, str_not_above
    jmp print

above:
    mov ecx, str_above

print:
    mov eax,4
    mov ebx,1
    mov edx,30
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
