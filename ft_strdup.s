segment .text
global  _ft_strdup
extern  _ft_strlen
extern  _ft_strcpy
extern  _malloc
extern ___error

_ft_strdup:
        push    rdi
        call    _ft_strlen
        inc     rax
		mov		rdi, rax
        call    _malloc
        cmp		rax, 0	
	    je		fail		
		mov		rdi, rax
	    pop		rsi
	    call	_ft_strcpy		
	    ret						
fail:
		push	rax
		call	___error
		pop		rcx	
		mov		qword [rax], 12	; set errno to ENOMEM
		xor		rax, rax
	    ret