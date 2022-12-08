section .text
	global ft_strlen ; out entry point

ft_strlen:
	mov 	rax, rdi ; we move the input to rax (using GCC Calling conventions x64) the first argument will be in rdi
	xor 	rcx, rcx ; we initialize rcx to 0

_loop:
	cmp 	BYTE [rax + rcx], 0 ; here we take the address memory of rax and we add the counter to it stored in rcx and check if the value of it is equal to null terminator
	je 		_end ; if it's equal to 0
	inc 	rcx ; if it's not increment the counter 
	jmp 	_loop ; call the loop again (i didn't use the jump )

_end:
	mov 	rax, rcx ; move the value from rcx to rax because we need to output in rax
	ret ; return to where we left in the main funciton

; size_t 	ft_strlen(char *str) {
; 	int 	i = 0;
; 	while (str[i] != '\0') {
; 		i++;
; 	}
; 	return (i);
; }
