section .text
	global ft_strcpy
	extern ft_strlen
 ; RDI == destination
 ; RSI == source
 ;
ft_strcpy:
 	mov 	rax, rdi ; we move the destination to rax 
 	xor 	rcx, rcx ;  we initialize the counter to 0

 _loop:
 	mov 	bl, BYTE [rsi + rcx] ; we move one byte from the source using rcx as a counter to bl (rbx but the 4-bit version)
 	cmp 	bl, 0 ; we check if the source is empty
 	jz 		_end ; if it's go to the end 
 	mov 	BYTE [rax + rcx], bl ; if it's not copy to the destination
 	inc 	rcx ; increment the counter 
 	jmp _loop ; and keep going on and on 

 _end:
 	mov 	rax, rcx ; we put the return value in rax and we return to where we stopped in tha main function 
 	ret


	;  the function in C
	;  char * ft_strcpy(char *dest, char *src) {
	;  	int i = 0;
	; 
	;  	while (src[i] != '\0')
	;  	{
	;  		dest[i] = src[i];
	;  		i++;
	;  	}
	;  	return (dest);
	;  }
