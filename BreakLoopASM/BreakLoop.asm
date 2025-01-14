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
	movzx	edx, bl
	call	printf

	inc		bl

	cmp		bl, 6
	je	b

	cmp		bl, 9
	jle		a
b:
	lea		rcx, line
	call	printf

	dec		bl
	xor		ecx, ecx
	xor		ebp, ebp
	mov		cl, 10
c:
	mov		ebp, ecx

	lea		rcx, fprintfi
	mov		dl, bl
	call	printf

	inc		bl
	xor		ecx, ecx
	mov		cl, bpl

	cmp		cl, 5
	je		done

	loop	c
done:
	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end