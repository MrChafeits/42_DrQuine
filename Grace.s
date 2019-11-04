;snjort
%define S fmt:    db "%3$c%5$s%1$c%%define S %4$s%1$c        extern _fprintf%1$c        extern _fclosef%1$c        section .data%1$cfmt:    db %2$c%4$s%2$c%1$ccmt:    %2$c%5$s%2$c%1$cofp:    %2$c%6$s%2$c%1$cmod:    %2$c%7$s%2$c%1$c        section .text%1$c        global _main%1$c%%define Q S _q: push rbp mov rbp, rsp sub rsb, 16 lea rdi, [ofp] lea rsi, [mod] call _fopen mov qword [rbp - 8], rax mov rdi, qword [rbp - 8] lea rax, [fmt] mov rsi, rax mov edx, 10 mov ecx, 34 mov r8, rax lea r9, [cmt] mov al, 0 call _fprintf mov rdi qword [rbp - 8] mov dword [rbp - 12], eax call _fclose mov dword [rbp - 16], eax add rsp, 16 pop rbp ret nop dword [rax]%1$c%%define H Q _main: push rbp mov rbp, rsp call _q xor eax, eax pop rbp ret%1$c"
%define Q _q: push rbp mov rbp, rsp sub rsb, 16 lea rdi, [ofp] lea rsi, [mod] call _fopen mov qword [rbp - 8], rax mov rdi, qword [rbp - 8] lea rax, [fmt] mov rsi, rax mov edx, 10 mov ecx, 34 mov r8, rax lea r9, [cmt] mov al, 0 call _fprintf mov rdi, qword [rbp - 8] mov dword [rbp - 12], eax call _fclose mov dword [rbp - 16], eax add rsp, 16 pop rbp ret nop dword [rax]
%define H _main: push rbp mov rbp, rsp call _q xor eax, eax pop rbp ret
S
Q
H
/*
;snjort
        extern _fprintf
        extern _fclose
        section .data
fmt:    db "TODO"
cmt:    db "snjort"
ofp:    db "Grace_kid.s"
mod:    db "w"
        section .text
        global _main
_q:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        lea     rdi, qword [ofp]
        lea     rsi, qword [mod]
        call    _fopen
        mov     qword  - 8], rax
        mov     rdi, qword [rbp - 8]
        lea     rax, qword [fmt]
        mov     rsi, rax
        mov     edx, 10
        mov     ecx, 34
        mov     r8, rax
        lea     r9, qword [cmt]
        mov     al, 0
        call    _fprintf
        mov     rdi, qword [rbp - 8]
        mov     dword [rbp - 12], eax
        call    _fclose
        mov     dword [rbp - 16], eax
        add     rsp, 16
        pop     rbp
        ret
        nop     dword [rax]
_main:
        push    rbp
        mov     rbp, rsp
        call    _q
        xor     eax, eax
        pop     rbp
        ret
*/
