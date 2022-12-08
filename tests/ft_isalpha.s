section .test
	global ft_isalpha

ft_isalpha:
	xor 	rbx, rbx
	mov 	bl, BYTE [rdi]
	cmp 	bl, 65
	jl 		_not_alpha
	cmp 	bl, 90
	jle 	_is_alpha
	cmp 	bl, 97
	jl 		_not_alpha
	cmp 	bl, 122
	jle 	_is_alpha
	ret

_not_alpha:
	xor 	rax, rax
	ret

_is_alpha:
	mov 	rax, 1
	ret

