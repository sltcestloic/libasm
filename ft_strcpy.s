section .text

global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	jmp loop

loop:
	cmp byte [rsi + rax], 0
	je	return
	mov cl, [rsi + rax]
	mov [rdi + rax], cl
	inc rax
	jmp loop

return:
	mov byte [rdi + rax], 0
	mov rax, rdi
	ret