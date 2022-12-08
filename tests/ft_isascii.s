section .text
	global ft_isascii

ft_isascii:
	xor 	rbx, rbx
	mov 	bl, BYTE [rdi]
	cmp 	bl, 0
	jl 		_end
	cmp 	bl, 127
	jg 		_end
	mov 	rax, 1
	ret
_end:
	xor 	rax, rax
	ret
