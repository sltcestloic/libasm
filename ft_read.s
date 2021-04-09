section .text

global _ft_read

_ft_read:
	mov rax, 0x02000003 ; mov sys_read to rax
	syscall
	ret