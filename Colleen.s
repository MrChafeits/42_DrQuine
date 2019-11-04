;honk
        extern _printf
        section .data
fmt:    db "%3$c%5$s%1$c        extern _printf%1$c        section .data%1$cfmt:    db %2$c%4$s%2$c,0%1$ccmt:    db %2$c%5$4s%2$c,0%1$c        section .text%1$c        global _main%1$c_q:%1$c        push    rbp%1$c        mov     rbp, rsp%1$c        mov     rdi, fmt%1$c        mov     rsi, 10%1$c        mov     rdx, 34%1$c        mov     rcx, 0x3b%1$c        mov     r8,  fmt%1$c        mov     r9,  cmt%1$c        xor     rax, rax%1$c        call    _printf%1$c        pop     rbp%1$c        ret%1$c_main:%1$c        push    rbp%1$c        mov     rbp, rsp%1$c        call    _q%1$c        xor     eax, eax%1$c        pop     rbp%1$c        ret%1$c",0
cmt:    db "honk",0
        section .text
        global _main
_q:
        push    rbp
        mov     rbp, rsp
        mov     rdi, fmt
        mov     rsi, 10
        mov     rdx, 34
        mov     rcx, 0x3b
        mov     r8,  fmt
        mov     r9,  cmt
        xor     rax, rax
        call    _printf
        pop     rbp
        ret
_main:
        push    rbp
        mov     rbp, rsp
        call    _q
        xor     eax, eax
        pop     rbp
        ret
