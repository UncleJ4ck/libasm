section .text
    global ft_strdup
    extern ft_strlen
    extern ft_strcpy
    extern malloc

; RDI == src
ft_strdup:
    push    rdi    ; save the source into the stack
    call    ft_strlen     ; we call strlen and then store its value in rax auto
    mov     rdi, rax  ; size for malloc
    inc     rdi   ; the null byte incrementation at the end
    call    malloc WRT ..plt  ; call malloc
    cmp     rax, 0     ; if malloc failed we return null
    pop     rsi    ; restore the source to rsi instead of rdi
    cmp     rax, 0     ; check if malloc returned NULL
    jz      _return
    mov     rsi, rdi    ; copy the source to rsi
    mov     rdi, rax    ; dst is the newly allocated memory
    call    ft_strcpy
    mov     rax, rdi ; i return rax as a pointer to my destination (it's doesn't work it's tempo)
    ret     ; return the pointer to the newly allocated memory

_return:
    xor     rax, rax    ; set rax to 0
    ret