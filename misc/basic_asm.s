        extern _printf
        section .data
fmt:    db "        extern _printf%1$2c        section .data%1$cfmt:    db%2$c%3$s%2$c, 0%1$c        section .text%1$c        global _main%1$c_main:%4$s%1$c        push    rbp%1$c        lea     rdi, [rel fmt]%1$c        mov     rsi, 10%1$c        mov     rdx, 34%1$c        mov     rcx, rdi%1$c        xor     rax, rax%1$c        call    _printf%1$c        xor     eax, eax%1$c        pop     rbp%1$c        ret%1$c", 0
        section .text
        global _main
_main:
        push    rbp
        lea     rdi, [rel fmt]
        mov     rsi, 10
        mov     rdx, 34
        mov     rcx, rdi
        xor     rax, rax
        call    _printf
        xor     eax, eax
        pop     rbp
        ret
