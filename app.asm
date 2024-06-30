section .data

section .bss

section .text
    global  main
    extern  printf

main:
    ; 178 + 21
    mov     eax,178
    mov     ebx,21
    call    sum         ; output = 199

    ; 17 - 4
    mov     eax,17
    mov     ebx,4
    call    difference  ; output = 13

    ; 7 * 3
    mov     eax,7
    mov     ebx,3
    call    product     ; output = 21

    ; 198 / 2
    mov     eax,198
    mov     ebx,2
    call    quotient    ; output = 99

    ; exit the program
    xor     eax,eax
    mov     ebx,eax
    inc     eax
    int     0x80

sum:
    add     eax,ebx
    push    eax
    push    sumStr
    call    printf
    add     esp,8
    ret

difference:
    sub     eax,ebx
    push    eax
    push    differenceStr
    call    printf
    add     esp,8
    ret

product:
    mul     ebx
    push    eax
    push    productStr
    call    printf
    add     esp,8
    ret

quotient:
    div     ebx
    push    eax
    push    quotientStr
    call    printf
    add     esp,8
    ret

sumStr          db "sum = %d",10,0
differenceStr   db "difference = %d",10,0
productStr      db "product = %d",10,0
quotientStr     db "quotient = %d",10,0
