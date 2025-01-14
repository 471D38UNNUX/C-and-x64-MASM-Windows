printf		proto
ExitProcess	proto

.data
	a			sbyte -128					; equ 128
	b			db 127						; equ -129
	c			byte 255					; equ -1
	d			sword -32768				; equ 32768
	e			dw 32767					; equ -32769
	f			word 65535					; equ -1
	g			sdword -2147483648			; equ 2147483648
	h			dd 2147483647				; equ -2147483649
	i			dword 4294967295			; equ -1
	j			sqword -9223372036854775808	; equ 9223372036854775808
	k			dq 9223372036854775807		; equ -9223372036854775809
	l			qword 18446744073709551615	; equ -1
	m			real4 0.999999
	n			real8 0.999999999999999
	o			dq ?
	p			db 72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33, 10, 0, 0
	q			struct
					r	dq ?
					s	dd ?
					t	dw 2 dup (?)
					u	dq ?
	q			ends
	v			q <>
	w			union
					x	dq 2 dup (?)
					y	db 16 dup (?)
	w			ends
	z			w <>
	align		16
	fprintfi	db "%d", 10, 0
	fprintfu	db "%u", 10, 0
	fprintfli	db "%lld", 10, 0
	fprintflu	db "%llu", 10, 0
	fprintfd	db "%.15f", 10, 0
	fprintfp	db "%p", 10, 0

.code
mainCRTStartup	proc
	sub			rsp, 40

	lea			rcx, fprintfi
	movsx		edx, a
	call		printf

	lea			rcx, fprintfi
	mov			dl, b
	call		printf

	lea			rcx, fprintfu
	mov			dl, c
	call		printf

	lea			rcx, fprintfi
	movsx		edx, d
	call		printf

	lea			rcx, fprintfi
	mov			dx, e
	call		printf

	lea			rcx, fprintfu
	mov			dx, f
	call		printf

	lea			rcx, fprintfi
	mov			edx, g
	call		printf

	lea			rcx, fprintfi
	mov			edx, h
	call		printf

	lea			rcx, fprintfu
	mov			edx, i
	call		printf

	lea			rcx, fprintfli
	mov			rdx, j
	call		printf

	lea			rcx, fprintfli
	mov			rdx, k
	call		printf

	lea			rcx, fprintflu
	mov			rdx, l
	call		printf

	lea			rcx, fprintfd
	cvtss2sd	xmm0, m
	movq		rdx, xmm0
	call		printf

	lea			rcx, fprintfd
	mov			rdx, n
	call		printf

	lea			rcx, fprintfp
	lea			rdx, o
	call		printf

	lea			rcx, p
	call		printf

	mov			rax, 57202c6f6c6c6548h
	mov			v.r, rax
	mov			8 [v.s], 646c726fh
	mov			12 [v.t], 0a21h
	mov			14 [v.t], 0h
	lea			rax, v
	mov			16 [v.u], rax
	call		printf

	mov			z.y, "H"
	mov			1 [z.y], "e"
	mov			2 [z.y], "l"
	mov			3 [z.y], "l"
	mov			4 [z.y], "o"
	mov			5 [z.y], ","
	mov			6 [z.y], " "
	mov			7 [z.y], "W"
	mov			8 [z.y], "o"
	mov			9 [z.y], "r"
	mov			10 [z.y], "l"
	mov			11 [z.y], "d"
	mov			12 [z.y], "!"
	mov			13 [z.y], 10
	mov			14 [z.y], 0
	mov			15 [z.y], 0

	lea			rcx, [z.x]
	call		printf

	call		aa

	xor			ecx, ecx
	call		ExitProcess
mainCRTStartup	endp
aa				proc
	sub		rsp, 40

	lea		rcx, p
	call	printf
	
	add		rsp, 40

	ret
aa				endp
end