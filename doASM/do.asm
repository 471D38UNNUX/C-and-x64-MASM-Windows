printf		proto
ExitProcess	proto

.data
	fprintfi	dd 25637	; equ "%d", 0, 0 in byte

.code
mainCRTStartup	proc
	sub		rsp, 40
do:
	lea		rcx, fprintfi
	mov		edx, ebx
	call	printf

	inc		bl

	cmp		bl, 9
	jle		do

	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end