;snjort
%macro P 0
        section .data
fmt:    db "%3$csnjort%1$c%%macro P 0%1$c        section .data%1$cfmt:    db %2$c%4$s%2$c,0%1$cofp:    db %2$cGrace_kid.s%2$c,0%1$cmod:    db %2$cw%2$c,0%1$c        section .text%1$c        global _main%1$c        extern _fprintf, _fclose, _fopen%1$c%%endmacro%1$c%%macro Q 0%1$cP%1$c_q:%1$c        push    rbp%1$c        mov     rbp, rsp%1$c        push    rbx%1$c        push    rax%1$c        lea     rdi, [rel ofp]%1$c        lea     rsi, [rel mod]%1$c        call    _fopen%1$c        mov     rbx, rax%1$c        lea     rsi, [rel fmt]%1$c        mov     rdx, 0xa%1$c        mov     rcx, 0x22%1$c        mov     r8d, 0x3b%1$c        xor     eax, eax%1$c        mov     rdi, rbx%1$c        mov     r9,  rsi%1$c        call    _fprintf%1$c        mov     rdi, rbx%1$c        call    _fclose%1$c        xor     eax, eax%1$c        add     rsp, 0x8%1$c        pop     rbx%1$c        pop     rbp%1$c        ret%1$c%%endmacro%1$c%%macro M 0%1$cQ%1$c_main:%1$c        push    rbp%1$c        mov     rbp, rsp%1$c        call    _q%1$c        xor     eax, eax%1$c        pop     rbp%1$c        ret%1$c%%endmacro%1$cM%1$c",0
ofp:    db "Grace_kid.s",0
mod:    db "w",0
        section .text
        global _main
        extern _fprintf, _fclose, _fopen
%endmacro
%macro Q 0
P
_q:
        push    rbp
        mov     rbp, rsp
        push    rbx
        push    rax
        lea     rdi, [rel ofp]
        lea     rsi, [rel mod]
        call    _fopen
        mov     rbx, rax
        lea     rsi, [rel fmt]
        mov     rdx, 0xa
        mov     rcx, 0x22
        mov     r8d, 0x3b
        xor     eax, eax
        mov     rdi, rbx
        mov     r9,  rsi
        call    _fprintf
        mov     rdi, rbx
        call    _fclose
        xor     eax, eax
        add     rsp, 0x8
        pop     rbx
        pop     rbp
        ret
%endmacro
%macro M 0
Q
_main:
        push    rbp
        mov     rbp, rsp
        call    _q
        xor     eax, eax
        pop     rbp
        ret
%endmacro
M
