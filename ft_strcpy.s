    global _ft_strcpy
	extern _ft_strlen
section .text

_ft_strcpy: push rdi
			mov rdi, rsi
			call _ft_strlen
			pop rdi
			mov rcx, rax
			cld ;df_in 0 enq talis, achman kargov en ditarkelu bitery
			mov rax, rdi
			rep movsb
			mov byte [rdi], 0
	ret