section .text

global _ft_list_size

_ft_list_size:
	mov			rax, 0
	cmp byte 	rdi, 0
	je			return
	inc			rax
	jmp			loop

loop:
	cmp byte 	[rdi + 8], 0
	je			return
	inc			rax
	mov			rdi, [rdi + 8]
	jmp 		loop

return:
	ret