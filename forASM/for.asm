printf		proto
ExitProcess	proto

.data
	fprintfc	dd 25381								; equ "%c", 0, 0 in byte
	a			dq 6278066737626506568, 11138535027311	; equ "Hello, World!", 10, 0, 0 in byte

.code
mainCRTStartup	proc
	sub		rsp, 40

	lea		rbp, a
	mov		ecx, 14
forloop:
	mov		bl, cl
	
	lea		rcx, fprintfc
	mov		dl, [rbp]
	call	printf

	inc		bpl
	mov		ecx, ebx

	loop	forloop

	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end