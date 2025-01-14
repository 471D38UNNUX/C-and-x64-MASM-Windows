printf proto

.data
	fprintfi db "%d", 0
	fprintfp db "%p", 10, 0
	fprintfil db "%d", 10, 0
	fprintfd db "%f", 10, 0
	fprintfx db "%#x", 10, 0
	line db 10, 0
	a db 0
	b dq ?
	c db ?
	d db 1
	e dq ?
	f dd 22
	g dd 7
	h dq ?

.code
mainCRTStartup proc
	sub rsp, 40

	xor edx, edx
l1:
	cmp a, 9
	jg e1

	lea rcx, fprintfi
	mov dl, a
	call printf

	inc a

	jmp l1
e1:
	lea rcx, line
	call printf

	mov cl, a
l2:
	mov a, cl
	dec a
	
	lea rcx, fprintfi
	mov dl, a
	call printf

	inc a
	movzx ecx, a

	loop l2

	dec a

	lea rcx, line
	call printf

	lea rax, a
	mov b, rax
	mov rax, b
	mov al, byte ptr [rax]
	mov c, al

	lea rcx, fprintfil
	mov dl, c
	call printf

	mov d, sizeof dword

	lea rcx, fprintfil
	mov dl, d
	call printf
	
	lea rcx, fprintfil
	mov dl, d
	neg edx
	mov d, dl
	call printf

	not d

	lea rcx, fprintfx
	mov dl, d
	call printf

	mov al, d
	test al, al
	setz al
	mov d, al

	lea rcx, fprintfil
	mov dl, d
	call printf

	movzx rax, d
	mov e, rax

	lea rcx, fprintfd
	mov rdx, e
	call printf
	
	lea rcx, fprintfd
	fld f
	fld g
	fdiv
	fst h
	mov rdx, h
	call printf
	
	lea rcx, fprintfil
	fld h
	fistp h
	mov rax, h
	mov d, al
	mov dl, d
	call printf

	add rsp, 40

	xor eax, eax

	ret
mainCRTStartup endp
end