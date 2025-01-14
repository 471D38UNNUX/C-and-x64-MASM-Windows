printf		proto
ExitProcess	proto

.data
	fprintfi	dd 6566693	; equ "%3d", 0 in byte
	line		dw 10		; equ 10, 0 in byte

.code
mainCRTStartup	proc
	sub		rsp, 40
row:
	xor		dil, dil
col:
	lea		rcx, fprintfi
	mov		edx, ebx
	call	printf

	inc		bl
	inc		dil

	cmp		dil, 3
	jle		col

	lea		rcx, line
	call	printf

	inc		sil

	cmp		sil, 3
	jle		row

	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end