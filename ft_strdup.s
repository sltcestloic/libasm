section .text

global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy

_ft_strdup:
	call	_ft_strlen	; rax = ft_strlen(rdi)
	inc		rax			; rax++ (pour le \0)
	push	rdi			; save rdi (param 1 de strdup) sur la stack
	mov		rdi, rax	; rdi = rax
	call	_malloc		; malloc(rdi)
	pop		r8			; recupere le param 1 de strdup
	mov		rdi, rax	; rdi = rax
	mov		rsi, r8		; dest de strcpy = r8
	call	_ft_strcpy
	ret
	