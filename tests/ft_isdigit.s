section .test
	global ft_isdigit

ft_islower:
	xor 	rbx, rbx
	mov 	bl, BYTE [rdi]
	cmp 	bl, 48
	jl 		_end
	cmp 	bl, 57
	jg 		_end
	mov 	rax, 1
	ret
_end:
	xor 	rax, rax
	ret
