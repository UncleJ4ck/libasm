section .text
    global ft_strdup
    extern ft_strlen
    extern ft_strcpy
    extern malloc

; RDI == src
ft_strdup:
	push	rbx
	sub		rsp, 8 ; pushing rbx and aligning the stack and place for rbx
	push	rdi
	call	ft_strlen ; calculating the source length
	mov		rdi, rax ; moving the result to rdi to use it in malloc
	call	malloc WRT ..plt 
	pop		rdi
	cmp		rax, 0 ; check if the source is null
	jz		return
	mov		rsi, rdi ; moving the source and destination to ft_strcpy arguments 
	mov		rdi, rax
	call	ft_strcpy 

return:
	add		rsp, 8 ; returning the stack as if it was before pushing rbx
	pop		rbx
	ret
