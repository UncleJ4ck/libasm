section .text
	global ft_strcmp


; S1 == RDI
; S2 == RSI

ft_strcmp:
    xor 	rcx, rcx ; we initiliaze the counter to 0
	xor 	rax, rax ; we initialize the holder of return value 

loop:
	mov 	al, BYTE [rdi + rcx] ; we move one byte per byte 
	mov 	bl, BYTE [rsi + rcx] ; to compare it
	cmp 	al, 0 ; we check if we reached the null byte
	je 		exit ; if it's equal we jump to the label exit
	cmp 	bl, 0 ; the same for s2
	je 		exit
	cmp 	al, bl ; we compare the two bytes 
	jne 	exit ; if they aren't equal it's the same 
	inc 	rcx ; it it's not the case we increment the counter
	jmp 	loop ; and we began from where we left in the strings


exit:
; i used movzx because the source is smaller than destination so that the other places left will be set to zero
	movzx 	rdx, bl ; we move to where we left in bl and al 
	movzx 	rax, al
	sub 	rax, rdx ; and substrct the value and we automatically put the value in rax
	ret


; int 	ft_strcmp(char *s1, shar *s2) {
; 	int 	i = 0;
; 	while (s1[i] != '\0' && s2[i] != '\0' && s1[i] == s2[i]) {
; 		i++;
; 	}
; 	return (s1[i] - s2[i]);
; }
