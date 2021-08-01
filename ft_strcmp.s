global  _ft_strcmp
extern  _ft_strlen

section .text
_ft_strcmp: ;rdi - s1, rsi - s2
				push rbx
comp:			
				movzx rax, byte [rdi]
				movzx rbx, byte [rsi]
				cmp	rax, 0
				je exit
				cmp rbx, 0
				je exit
				cmp	rax, rbx     
				jne  exit
				inc rdi
				inc rsi
				jmp comp
exit:			sub rax, rbx
				pop rbx
				ret