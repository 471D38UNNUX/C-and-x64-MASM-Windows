printf proto
scanf_s proto

.data
	msg db 14 dup (0)
	fscanfs db "%[^", 10, "]s", 0
	fprintfs db "%s", 0

.code
mainCRTStartup proc
	sub		rsp, 40
	
	call	scan

	lea		rcx, fprintfs
	lea		rdx, msg
	call	printf

	xor		eax, eax

	add		rsp, 40

	ret
mainCRTStartup endp
scan proc
	sub		rsp, 40

	lea		rcx, fscanfs
	lea		rdx, msg
	mov		r8d, 14
	call	scanf_s

	add		rsp, 40

	ret
scan endp
end