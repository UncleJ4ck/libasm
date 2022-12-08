section .text
	global ft_write

; RDI == FILE DESCRIPTOR
; RSI == BUFFER 
; RDX == SIZE


ft_write:
	; call the sys_write syscall
	mov rax, 1
	syscall
 
	; check the return value of the syscall
	cmp rax, 0
	jl _error

	ret


_error:
	mov rdi, rax			; save error code on slack
	call __errno_location wrt ..plt	; call errno localtion which returns errno adress in rax ; the wrt ..plt it's a reference to the entry table for the __errno_location 
	mov [rax], rdi			; put the error code on rax address
	mov rax, -1				; set return value to -1
	ret

section .data
	extern __errno_location
