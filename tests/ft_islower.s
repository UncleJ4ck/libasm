section .test
	global ft_islower

ft_islower:
	xor 	rbx, rbx
	mov 	bl, BYTE [rdi]
	cmp 	bl, 97
	jl 		_end
	cmp 	bl, 122
	jg 		_end
	mov 	rax, 1
	ret
_end:
	xor 	rax, rax
	ret
