section .text

global _ft_write

_ft_write:
	mov rax, 0x02000004	; mov sys_write to rax
	syscall
	ret