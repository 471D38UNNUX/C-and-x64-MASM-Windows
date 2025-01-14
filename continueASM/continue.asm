printf		proto
ExitProcess	proto

.data
	fprintfi	dd 25637	; equ "%d", 0, 0 in byte
	line		dw 10		; equ 10, 0 in byte

.code
mainCRTStartup	proc
	sub		rsp, 40
a:
	lea		rcx, fprintfi
	mov		edx, ebx
	call	printf

	inc		bl

	cmp		bl, 6
	je		b

	cmp		bl, 10
	jle		a
	
	lea		rcx, line
	call	printf

	xor		ebp, ebp
	mov		ecx, 11
	jmp		c
b:
	inc		bl

	jmp		a
c:
	mov		ebp, ecx

	lea		rcx, fprintfi
	mov		dl, bl
	call	printf

	inc		bl
	mov		ecx, ebp

	cmp		cl, 6
	je		d
	jne		e
d:
	inc		bl
	dec		cl

	loop	c
e:
	loop	c

	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end