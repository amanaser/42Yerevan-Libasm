segment .text
	global _ft_write
	extern ___error

_ft_write:
	mov		rax, 0x2000004
	syscall	
	jc		fail
	ret
fail:
	push            rax
	call ___error
	pop		QWORD [rax]
	mov		rax, -1
	ret
