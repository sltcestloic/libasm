section .text
global _ft_strlen

_ft_strlen:
	mov rax, 0		; init compteur
	jmp ft_loop

ft_loop:
	cmp byte [rdi + rax], 0	;  str[rax] == '\0'
	je	return
	inc rax					; i++
	jmp ft_loop

return:
	ret