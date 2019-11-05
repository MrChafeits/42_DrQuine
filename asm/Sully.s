        section .data
fmt:    db "        section .data%1$cfmt:    db %2$c%3$s%2$c,0%1$cnew:    db %2$cSully_0.s%2$c,0%1$cmod:    db %2$cw%2$c,0%1$cnum:    dd 5%1$c        section .text%1$c        global _main%1$c        extern _fopen, _fclose, _fprintf%1$c_main:%1$c        mov     ecx, dword [rel num]%1$c        lea     eax, [rcx - 0x1]%1$c        mov     dword [rel num], eax%1$c        test    ecx, ecx%1$c        jle     .end%1$c        push    rbp%1$c        mov     rbp, rsp%1$c        push    rbx%1$c        push    rax%1$c        lea     rdi, [rel new]%1$c        movzx   ecx, byte [rel new + 0x6]%1$c        add     eax, ecx%1$c        mov     byte [rel new + 0x6], al%1$c        lea     rsi, [rel mod]%1$c        call    _fopen%1$c        mov     rbx, rax%1$c        mov     rsi, [rel fmt]%1$c        mov     r9d, dword [rel num]%1$c        mov     edx, 0xa%1$c        mov     ecx, 0x22%1$c        xor     eax, eax%1$c        mov     rdi, rbx%1$c        mov     r8,  rsi%1$c        call    _fprintf%1$c        mov     rdi, rbx%1$c        call    _fclose%1$c        add     rsp, 0x8%1$c        pop     rbx%1$c        pop     rbp%1$c.end:%1$c        xor     eax, eax%1$c        ret%1$c",0
new:    db "Sully_0.s",0
mod:    db "w",0
num:    dd 5
        section .text
        global _main
        extern _fopen, _fclose, _fprintf
_main:
        mov     ecx, dword [rel num]
        lea     eax, [rcx - 0x1]
        mov     dword [rel num], eax
        test    ecx, ecx
        jle     .end
        push    rbp
        mov     rbp, rsp
        push    rbx
        push    rax
        lea     rdi, [rel new]
        movzx   ecx, byte [rdi + 0x6]
        add     eax, ecx
        mov     byte [rdi + 0x6], al
        lea     rsi, [rel mod]
        call    _fopen
        mov     rbx, rax
        mov     rsi, [rel fmt]
        mov     r9d, dword [rel num]
        mov     edx, 0xa
        mov     ecx, 0x22
        xor     eax, eax
        mov     rdi, rbx
        mov     r8,  rsi
        call    _fprintf ; EXC_BAD_ACCESS __vfprintf + 15923: mov bl, byte ptr [r11] ???
        mov     rdi, rbx
        call    _fclose
        add     rsp, 0x8
        pop     rbx
        pop     rbp
.end:
        xor     eax, eax
        ret

;         extern _snprintf
; _main:
;         mov     eax, dword [rel num]
;         lea     r9d, [rax - 1]
;         mov     dword [rel num], r9d
;         test    eax, eax
;         jle     .end
;         push    rbp
;         mov     rbp, rsp
;         push    rbx
;         sub     rsp, 24
;         lea     r8,  [rel new]
;         lea     rbx, [rbp - 0x12]
;         mov     esi, 0xa
;         mov     edx, 0x0
;         mov     ecx, 0xa
;         xor     eax, eax
;         call    _snprintf
;         lea     rsi, [rel mod]
;         mov     rdi, rbx
;         call    _fopen
;         mov     rbx, rax
;         mov     rsi, [rel fmt]
;         mov     r9d, dword [rel num]
;         mov     edx, 0xa
;         mov     ecx, 0x22
;         xor     eax, eax
;         mov     rdi, rbx
;         mov     r8,  rsi
;         call    _fprintf
;         mov     rdi, rbx
;         call    _fclose
;         add     rsp, 0x18
;         pop     rbx
;         pop     rbp
; .end:
;         xor     eax, eax
;         ret

;         push    rbp
;         mov     rbp, rsp
;         push    rbx
;         sub     rsp, 0x18
;         mov     rax, 0x2e305f796c6c7553
;         mov     qword [rbp - 0x18], rax
;         mov     byte [rbp - 0xe], 0x0
;         mov     word [rbp - 0x10], 0x63
;         mov     eax, dword [rel num]
;         lea     ecx, [rax - 0x1]
;         mov     dword [rel num], ecx
;         test    eax, eax
;         jle     .end
;         add     eax, 0x2f
;         mov     byte [rbp - 0x12], al
;         lea     rsi, [rel mod]
;         lea     rdi, [rbp - 0x18]
;         call    _fopen
;         mov     rbx, rax
;         mov     rsi, [rel fmt]
;         mov     r9d, dword [rel num]
;         mov     edx, 0xa
;         mov     ecx, 0x22
;         xor     eax, eax
;         mov     rdi, rbx
;         mov     r8,  rsi
;         call    _fprintf
;         mov     rdi, rbx
;         call    _fclose
; .end:
;         xor     eax, eax
;         add     rsp, 0x18
;         pop     rbx
;         pop     rbp
;         ret
