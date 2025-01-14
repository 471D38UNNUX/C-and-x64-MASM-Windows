printf proto

.data
	msg db "Hello, World!", 10, 0, 0

.code
mainCRTStartup proc
	sub		rsp, 40

	lea		rcx, msg
	call	printf

	xor		eax, eax

	add		rsp, 40

	ret
mainCRTStartup endp
end