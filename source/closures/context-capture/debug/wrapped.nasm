section	.text		; declaring our .text segment
    global	wrapped
    extern caller__closure
str:
    db	"nasm", 0

wrapped: 		; this is where code starts getting exec'ed
    push ebp
    mov ebp, esp

    push dword str
    
    mov eax, caller__closure     ; move the function's address into eax
    call eax                      ; call eax
    
    ;call caller__closure         ; call the function directly
    
    leave
    ret
