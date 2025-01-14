printf proto
srand proto
rand proto
time proto

.data
	fprintfs db "%s", 0
	a db "False", 0
	b db "True", 0
	c db "Undefined", 0

.code
mainCRTStartup proc
	sub		rsp, 40

	xor		cl, cl
	call	time

	mov		cl, al
	call	srand

	call	rand
	
	xor		ah, ah
	mov		bl, 3
	div		bl

	cmp		ah, 0
	jz		false
	cmp		ah, 1
	je		true

	lea		rcx, fprintfs
	lea		rdx, c
	call	printf

	jmp		done
false:
	lea		rcx, fprintfs
	lea		rdx, a
	call	printf

	jmp		done
true:
	lea		rcx, fprintfs
	lea		rdx, b
	call	printf

done:
	add		rsp, 40

	xor		eax, eax

	ret
mainCRTstartup endp
end