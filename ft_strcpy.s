section .text

global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	jmp loop

loop:
	cmp byte [rsi + rax], 0		; rsi[rax]
	je	return					; == 0 ? return
	mov cl, [rsi + rax]			; cl = rsi[rax]
	mov [rdi + rax], cl			; rdi[rax] = cl
	inc rax						; rax++
	jmp loop

return:
	mov byte [rdi + rax], 0		; rdi[rax] = '\0'
	mov rax, rdi				; rax = rdi
	ret