segment .text
global _ft_strcmp

_ft_strcmp:
            xor rax, rax
            xor rcx, rcx
cycle:      
            mov al, BYTE[rdi]
            mov cl, BYTE[rsi]
            cmp al, 0
            je exit
            cmp cl, 0
            je exit
            inc rdi
            inc rsi
            cmp al, cl
            je cycle
exit:
            movzx	rax, al	
            movzx	rcx, cl			
            sub		rax, rcx
            ret