global  _ft_read
extern  ___error
section .text
_ft_read:   ;rdi - fd, rsi - buf, rdx - cnt
        push rbx
        mov rax, 0x2000003
        syscall
        jc  err
        jmp exit
err:    mov rbx, rax
        call	___error
        mov [rax], rbx
        mov rax, -1
exit:   pop rbx
        ret