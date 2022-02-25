segment .text
global _ft_strcpy

_ft_strcpy:
            mov rax, 0
cycle:
			cmp rsi, 0
			je exit
			cmp BYTE[rsi + rax], 0
			je exit
			mov r8b, BYTE[rsi + rax]
			mov BYTE[rdi + rax], r8b
			inc rax
			jmp cycle
exit:
			mov BYTE[rdi + rax], 0
			mov rax,rdi
			ret