section .text

global _ft_write

_ft_write:
	mov rax, 0
	jmp loop

loop:
	cmp rdx, 0
	je	return
	mov al, [rsi + rax]
	

return:
	ret