printf		proto
ExitProcess	proto

.data
	a		dq 44651868756	; equ "True", 10, 0, 0, 0 in byte

.code
mainCRTStartup	proc
	sub		rsp, 40
inf:
	lea		rcx, a
	call	printf
	
	loop	inf

	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end