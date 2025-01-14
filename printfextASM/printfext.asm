printf proto

.data
	msg db "Hello, World!", 0

.code
mainCRTStartup proc
	sub		rsp, 40

	call	Hello

	xor		eax, eax

	add		rsp, 40

	ret
mainCRTStartup endp
Hello proc
	sub		rsp, 40

	lea		rcx, msg
	call	printf

	add		rsp, 40

	ret
Hello endp
end