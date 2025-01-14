printf			proto
srand			proto
rand			proto
_time64			proto
rand_s			proto
malloc			proto
free			proto
CoTaskMemAlloc	proto
CoTaskMemFree	proto
ExitProcess		proto

.data
	addi		dq 2334031326977483813, 44629827645							; equ "%d + %d = %d", 10, 0, 0, 0 in byte
	addis		dq 2334031326977483813, 139119108157						; equ "%d + %d = %d ", 0, 0, 0 in byte
	subi		dq 2334031327011038245, 44629827645							; equ "%d - %d = %d", 10, 0, 0, 0 in byte
	subis		dq 2334031327011038245, 139119108157						; equ "%d - %d = %d ", 0, 0, 0 in byte
	addf		dq 2675185596811914789, 3325099346791642926, 681527			; equ "%.7f + %.7f = %.7f", 10, 0, 0, 0, 0, 0 in byte
	subf		dq 2675187795835170341, 3325099346791642926, 681527			; equ "%.7f - %.7f = %.7f", 10, 0, 0, 0, 0, 0 in byte
	addds		dq 2317982056563420709, 2323048606144212517, 35623351168549	; equ "%.15f + %.15f = %.15f ", 0, 0 in byte
	subds		dq 2318545006516842021, 2323048606144212517, 35623351168549	; equ "%.15f - %.15f = %.15f ", 0, 0 in byte
	fprintfis	dd 2122789													; equ "%d ", 0 in byte
	line		dw 10														; equ 10, 0 in byte
	avx512f		db 0
	rdrandf		db 0
	avx2		db 0
	a			sbyte ?
	b			dw ?
	c			dd ?
	d			dd ?
	e			real4 ?
	f			real4 ?
	g			db ?
	h			dq ?
	l			dq ?
	m			dq ?
	n			real8 ?
	r			sbyte ?
	s			dd ?
	t			dd ?
	u			dd ?
	v			db ?
	w			dq ?

dat32	segment align(32) 'dat32'
	i	sbyte 32 dup (?)
	j	sbyte 32 dup (?)
	o	real8 4 dup (?)
	p	real8 4 dup (?)
	q	real8 4 dup (?)
	x	sword 16 dup (?)
	y	sword 16 dup (?)
	aa	real8 4 dup (?)
	ab	real8 4 dup (?)
	ac	real8 4 dup (?)
dat32	ends

dat64	segment align(64) 'dat64'
	k	sword 32 dup (?)
	z	sdword 16 dup (?)
dat64	ends

.code
mainCRTStartup	proc
	sub				rsp, 40

	mov				eax, 7
	xor				ecx, ecx
	cpuid

	test			ebx, 010000h
	jz				f1

	mov				avx512f, 1
	mov				rdrandf, 1
	mov				avx2, 1
f1:
	mov				eax, 1
	cpuid
	
	test			ecx, 040000000h
	jz				f2

	mov				rdrandf, 1
	mov				avx2, 1
f2:
	mov				eax, 7
	xor				ecx, ecx
	cpuid

	test			ebx, 020h
	jz				f3

	mov				avx2, 1
f3:
	xor				ecx, ecx
	call			_time64

	; rcx have already same value with rax
	call			srand

	call			randc
	mov				a, al

	call			randc

	movsx			cx, al
	movsx			ax, a
	add				ax, cx
	
	movsx			r8d, cx
	lea				rcx, addi
	movsx			edx, a
	movsx			r9d, ax
	call			printf

	call			randf
	mov				f, eax

	call			randf

	movd			xmm0, f
	cvtss2sd		xmm2, xmm0
	movd			xmm1, eax
	cvtss2sd		xmm3, xmm1
	addss			xmm0, xmm1
	cvtss2sd		xmm4, xmm0
	
	lea				rcx, addf
	movq			rdx, xmm2
	movq			r8, xmm3
	movq			r9, xmm4
	call			printf

	call			rand
	mov				g, al

	movzx			ax, g
	inc				al
	mov				cx, 2
	mul				cx
	mov				cx, ax
	call			malloc
	mov				h, rax

	test			rax, rax
	jz				error

	mov				rbp, h

	xor				ebx, ebx
l1:
	call			randc
	movsx			ax, al
	mov				word ptr [rbp + rbx * 2], ax

	lea				rcx, fprintfis
	movsx			edx, word ptr [rbp + rbx * 2]
	call			printf

	inc				bl
	mov				al, g
	cmp				bl, al
	jbe				l1

	lea				rcx, line
	call			printf

	lea				rdi, i
	lea				rsi, j

	xor				ebp, ebp
	mov				ecx, 32
l2:
	mov				bl, cl

	call			randc
	mov				byte ptr [rdi + rbp], al

	call			randc
	mov				byte ptr [rsi + rbp], al

	inc				bpl
	mov				ecx, ebx

	loop			l2

	lea				rbp, k

	cmp				avx512f, 0
	jz				f4

	vmovdqa			ymm0, ymmword ptr i
	vmovdqa			ymm1, ymmword ptr j
	vpmovsxbw		zmm0, ymm0
	vpmovsxbw		zmm1, ymm1
	vpaddw			zmm0, zmm0, zmm1
	vmovdqa32		zmmword ptr k, zmm0

	jmp				c1
f4:
	cmp				avx2, 0
	jz				f5

	xor				bl, bl
l3:
	mov				al, bl
	imul			ax, 2

	movdqa			xmm0, xmmword ptr [rdi + rax * 8]
	movdqa			xmm1, xmmword ptr [rsi + rax * 8]
	vpmovsxbw		ymm0, xmm0
	vpmovsxbw		ymm1, xmm1
	vpaddw			ymm0, ymm0, ymm1

	imul			ax, 2

	vmovdqa			ymmword ptr [rbp + rax * 8], ymm0

	inc				bl

	cmp				bl, 1
	jle				l3
	jg				c1
f5:
	mov				ecx, 4
l4:
	mov				ebx, ecx

	movq			xmm0, qword ptr [rdi + r12 * 8]
	movq			xmm1, qword ptr [rsi + r12 * 8]
	pmovsxbw		xmm0, xmm0
	pmovsxbw		xmm1, xmm1
	paddw			xmm0, xmm1

	mov				al, r12b
	imul			ax, 2

	movdqa			xmmword ptr [rbp + rax * 8], xmm0

	inc				r12b
	mov				ecx, ebx

	loop			l4
c1:
	xor				bl, bl
l5:
	lea				rcx, addis
	movsx			edx, byte ptr [rdi + rbx]
	movsx			r8d, byte ptr [rsi + rbx]
	movsx			r9d, word ptr [rbp + rbx * 2]
	call			printf

	inc				bl

	cmp				bl, 31
	jle				l5

	lea				rcx, line
	call			printf

	lea				r14, o
	lea				r15, p

	xor				r13d, r13d
	mov				ecx, 4
l6:
	mov				r12b, cl

	call			randd
	mov				[r14 + r13 * 8], rax

	call			randd
	mov				[r15 + r13 * 8], rax

	inc				r13b
	mov				ecx, r12d

	loop			l6

	lea				rbp, q

	cmp				avx2, 0
	jz				f6

	vmovdqa			ymm0, ymmword ptr o
	vmovdqa			ymm1, ymmword ptr p
	vaddpd			ymm0, ymm0, ymm1
	vmovdqa			ymmword ptr q, ymm0

	jmp				c2
f6:
	xor				bl, bl
l7:
	mov				eax, ebx
	imul			ax, 2

	movdqa			xmm0, xmmword ptr [r14 + rax * 8]
	movdqa			xmm1, xmmword ptr [r15 + rax * 8]
	addpd			xmm0, xmm1
	movdqa			xmmword ptr [rbp + rax * 8], xmm0

	inc				bl

	cmp				bl, 1
	jle				l7
c2:
	xor				edi, edi
	mov				ecx, 4
l8:
	mov				ebx, ecx

	lea				rcx, addds
	mov				rdx, [r14 + rdi * 8]
	mov				r8, [r15 + rdi * 8]
	mov				r9, [rbp + rdi * 8]
	call			printf

	inc				dil
	mov				ecx, ebx

	loop			l8

	lea				rcx, line
	call			printf

	call			randc
	mov				r, al

	call			randc

	movsx			cx, al
	movsx			ax, r
	sub				ax, cx

	movsx			r8d, cx
	lea				rcx, subi
	movsx			edx, r
	movsx			r9d, ax
	call			printf

	call			randf
	mov				s, eax

	call			randf
	mov				t, eax

	fld				s
	fld				t
	fsub
	fstp			u

	lea				rcx, subf
	cvtss2sd		xmm0, s
	movq			rdx, xmm0
	cvtss2sd		xmm1, t
	movq			r8, xmm1
	cvtss2sd		xmm2, u
	movq			r9, xmm2
	call			printf

	call			rand
	mov				v, al

	xor				ah, ah
	movzx			ax, v
	inc				al
	mov				cx, 2
	mul				cx
	mov				cx, ax
	call			CoTaskMemAlloc
	mov				w, rax

	test			rax, rax
	jz				error

	mov				rdi, w
	xor				ebp, ebp
	mov				bl, v
l9:
	call			randc
	movsx			ax, al
	mov				word ptr [rdi + rbp * 2], ax

	lea				rcx, fprintfis
	movsx			edx, word ptr [rdi + rbp * 2]
	call			printf

	inc				bpl

	cmp				bpl, bl
	jle				l9

	lea				rcx, line
	call			printf

	lea				rsi, x
	lea				r12, y

	xor				edi, edi
	mov				ecx, 16
l10:
	mov				bl, cl

	call			rands
	mov				word ptr [rsi + rdi * 2], ax

	call			rands
	mov				word ptr [r12 + rdi * 2], ax

	inc				dil
	mov				ecx, ebx

	loop			l10

	lea				rbp, z

	cmp				avx512f, 0
	jz				f7

	vmovdqa			ymm0, ymmword ptr x
	vmovdqa			ymm1, ymmword ptr y
	vpmovsxwd		zmm0, ymm0
	vpmovsxwd		zmm1, ymm1
	vpsubd			zmm0, zmm0, zmm1
	vmovdqa32		zmmword ptr z, zmm0

	jmp				c3
f7:
	cmp				avx2, 0
	jz				f8

	xor				bl, bl
l11:
	mov				ax, bx
	imul			ax, 2

	movdqa			xmm0, xmmword ptr [rsi + rax * 8]
	movdqa			xmm1, xmmword ptr [r12 + rax * 8]
	vpmovsxwd		ymm0, xmm0
	vpmovsxwd		ymm1, xmm1
	vpsubd			ymm0, ymm0, ymm1

	imul			ax, 2

	vmovdqa			ymmword ptr [rbp + rax * 8], ymm0

	inc				bl

	cmp				bl, 1
	jle				l11
	jg				c3
f8:
	xor				edi, edi
	mov				ecx, 4
l12:
	mov				bl, cl

	movq			xmm0, qword ptr [rsi + rdi * 8]
	movq			xmm1, qword ptr [r12 + rdi * 8]
	pmovsxwd		xmm0, xmm0
	pmovsxwd		xmm1, xmm1
	psubd			xmm0, xmm1

	mov				eax, edi
	imul			ax, 2

	movdqa			xmmword ptr [rbp + rax * 8], xmm0

	inc				dil
	mov				ecx, ebx

	loop			l12
c3:
	xor				bl, bl
l13:
	lea				rcx, subis
	movsx			edx, word ptr [rsi + rbx * 2]
	movsx			r8d, word ptr [r12 + rbx * 2]
	mov				r9d, dword ptr [rbp + rbx * 4]
	call			printf

	inc				bl

	cmp				bl, 15
	jle				l13

	lea				rcx, line
	call			printf

	lea				r14, aa
	lea				r15, ab

	xor				r12d, r12d
	xor				r13d, r13d
	mov				ecx, 4
l14:
	mov				r12b, cl

	call			randd
	mov				[r14 + r13 * 8], rax

	call			randd
	mov				[r15 + r13 * 8], rax

	inc				r13b
	mov				ecx, r12d

	loop			l14

	lea				rbp, ac

	cmp				avx2, 0
	jz				f9

	vmovdqa			ymm0, ymmword ptr aa
	vmovdqa			ymm1, ymmword ptr ab
	vsubpd			ymm2, ymm0, ymm1
	vmovdqa			ymmword ptr ac, ymm2

	jmp				c4
f9:
	xor				bl, bl
l15:
	mov				eax, ebx
	imul			ax, 2

	movdqa			xmm0, xmmword ptr [r14 + rax * 8]
	movdqa			xmm1, xmmword ptr [r15 + rax * 8]
	subpd			xmm0, xmm1
	movdqa			xmmword ptr [rbp + rax * 8], xmm0

	inc				bl

	cmp				bl, 1
	jle				l15
c4:
	xor				dil, dil
	mov				ecx, 4
l16:
	mov				bl, cl

	lea				rcx, subds
	mov				rdx, [r14 + rdi * 8]
	mov				r8, [r15 + rdi * 8]
	mov				r9, [rbp + rdi * 8]
	call			printf

	inc				dil
	mov				ecx, ebx

	loop			l16

	lea				rcx, line
	call			printf

	mov				rcx, h
	call			free

	mov				rcx, w
	call			CoTaskMemFree

	xor				ecx, ecx
	call			ExitProcess
error:
	mov				ecx, 1
	call			ExitProcess
mainCRTStartup	endp
randc			proc
	sub		rsp, 40
	
	call	rand

	xor		ah, ah

	add		rsp, 40

	ret
randc			endp
rands			proc
	sub		rsp, 40

	cmp		rdrandf, 0
	jnz		true
	
	xor		ebp, ebp
l1:
	call	randc

	mov		ecx, ebp
	imul	ecx, ecx, 8
	shl		ax, cl
	or		b, ax

	inc		bpl

	cmp		bpl, 1
	jle		l1
	
	mov		ax, b
	mov		b, 0

	jmp		cal
true:	
	rdrand	ax
	mov		b, ax
cal:
	add		rsp, 40

	ret
rands			endp
randf			proc
	sub		rsp, 40

	cmp		rdrandf, 0
	jnz		true
	
	xor		ebx, ebx
l1:
	call	rands

	mov		ecx, ebx
	imul	ecx, ecx, 16
	shl		eax, cl
	or		c, eax

	inc		bl

	cmp		bl, 1
	jle		l1

	xor		ebp, ebp
	mov		ecx, 2
l2:
	mov		bl, cl
	call	randc

	mov		ecx, ebp
	imul	ecx, ecx, 16
	shl		eax, cl
	or		d, eax

	inc		bpl
	mov		ecx, ebx

	loop	l2

	jmp		cal
true:	
	rdrand	eax
	mov		c, eax

	rdrand	eax
	mov		d, eax
cal:
	fild	c
	fild	d
	fdiv
	fstp	e
	mov		eax, e
	mov		c, 0
	mov		d, 0

	add		rsp, 40

	ret
randf			endp
randd			proc
	sub		rsp, 40

	cmp		rdrandf, 0
	jnz		true
	
	xor		edi, edi
l1:
	call	rands

	mov		ecx, edi
	imul	ecx, ecx, 16
	shl		rax, cl
	or		l, rax

	inc		dil

	cmp		dil, 3
	jle		l1

	xor		esi, esi
	mov		ecx, 4
l2:
	mov		dil, cl
	call	rands

	mov		ecx, esi
	imul	ecx, ecx, 16
	shl		rax, cl
	or		m, rax

	inc		sil
	mov		ecx, edi

	loop	l2

	jmp		cal
true:	
	rdrand	rax
	mov		l, rax

	rdrand	rax
	mov		m, rax
cal:
	fild	l
	fild	m
	fdiv
	fstp	n
	mov		rax, n
	mov		l, 0
	mov		m, 0

	add		rsp, 40

	ret
randd			endp
end