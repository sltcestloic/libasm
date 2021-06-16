section .text

global _ft_read
extern ___error

_ft_read:
	mov rax, 0x02000003 ; mov sys_read to rax
	syscall
	jc	error_exit
	ret

error_exit:
	push rax
	call ___error
	pop rdi
	mov [rax], rdi
	mov	rax, -1
	ret