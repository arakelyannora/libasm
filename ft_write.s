global _ft_write
extern	___error
section .text

_ft_write: ; rdi - fd, rsi - buf, count - rdx
            push rbx
            mov rax, 0x2000004   ;sys_call number` sys_write
            syscall
            jc  err
			jmp exit
err:        mov rbx, rax
			call	___error
			mov [rax], rbx
			mov rax, -1 
exit:		pop rbx
			ret