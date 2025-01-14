printf proto
srand proto
rand proto
time proto

.data
	fprintfi db "%3d", 0
	fprintfis db "%d", 0
	fprintfp db "%p", 10, 0
	line db 10, 0
	a db 16 dup (0)
	b db 4 dup (4 dup(0))
	c struct
		d db ?
		e dq ?
	c ends
	f c <>

.code
mainCRTStartup proc
	sub		rsp, 40

	lea		rbx, a

	xor		edx, edx
	mov		sil, 3
row:
	mov		bpl, 3
col:
	mov		[rbx + rbp], dil

	lea		rcx, fprintfi
	mov		dl, [rbx + rbp]
	call	printf

	dec		bpl
	inc		dil

	test	bpl, bpl
	jge		col

	lea		rcx, line
	call	printf

	dec		sil

	test	sil, sil
	jge		row

	lea		rbx, b

	xor		dil, dil

	mov		ecx, 4
lout:
	mov		r12b, cl

	mov		cl, 4
lin:
	mov		sil, cl

	mov		al, sil
	mov		dl, 4
	mul		dl
	add		al, dil
	mov		bpl, al
	mov		[rbx + rbp], dil

	lea		rcx, fprintfi
	mov		dl, [rbx + rbp]
	call	printf

	inc		dil
	xor		ecx, ecx
	mov		cl, sil

	loop	lin

	lea		rcx, line
	call	printf

	xor		ecx, ecx
	mov		cl, r12b

	loop	lout

	lea		rax, f
	mov		f.e, rax
	
	lea		rcx, fprintfp
	lea		rdx, f.e
	call	printf

	xor		cl, cl
	call	time

	mov		cl, al
	call	srand

	call	rand

	xor		ah, ah
	mov		f.d, al
	mov		rax, f.e

	lea		rcx, fprintfis
	movsx	edx, byte ptr [rax]
	call	printf

	add		rsp, 40

	xor		eax, eax

	ret
mainCRTStartup endp
end