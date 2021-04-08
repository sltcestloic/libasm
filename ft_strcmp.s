section .text

global _ft_strcmp

_ft_strcmp:
	mov		al, [rsi]	; al = *rsi
	mov		cl, [rdi]	; cl = *rdi
	cmp		al, 0
	je		return		; al == 0 ? return
	cmp		cl, al
	jne		return		; cl != al ? return
	inc		rsi			; rsi++
	inc		rdi			; rdi++
	jmp		_ft_strcmp

return:
	movzx	rax, al		; rax = al
	movzx	rcx, cl		; rcx = cl
	sub		rax, rcx	; rax -= rcx
	neg		rax
	ret