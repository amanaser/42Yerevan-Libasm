segment .text
global _ft_strlen

_ft_strlen:
			mov rax,0
		
count:
			cmp BYTE[rdi + rax],0
			je exit
			inc rax
			jmp count
exit:
			ret