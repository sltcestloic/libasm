section .text

global _ft_strlen

_ft_strlen:
	mov rax, 0		; init compteur
	jmp ft_loop

ft_loop:
	cmp byte [rdi + rax], 0	; rdi[rax]
	je	return				; == '\0' ? return
	inc rax					; rax++
	jmp ft_loop

return:
	ret