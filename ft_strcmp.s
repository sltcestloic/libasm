section .text

global _ft_strcmp

_ft_strcmp:
	mov		al, [rsi]
	mov		cl, [rdi]
	cmp		al, 0
	je		return
	cmp		cl, al
	jne		return
	inc		rsi
	inc		rdi
	jmp		_ft_strcmp

return:
	movzx	rax, al
	movzx	rcx, cl
	sub		rax, rcx
	ret