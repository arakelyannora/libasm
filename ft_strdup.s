global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc
section .text

_ft_strdup:	; rdi - str
			call _ft_strlen	;length - rax
			mov rcx, rax
			inc rcx
			push rdi
			mov rdi, rcx ; mallocs arg - rdi, return value in rax
			call _malloc
			pop rsi
			mov rdi, rax
			call _ft_strcpy
			ret