printf		proto
srand		proto
rand		proto
_time64		proto
ExitProcess proto

.data
	muli		dq 2334031328269329445, 44629827645									; equ "%d x %d = %d", 10, 0, 0, 0 in byte
	mulis		dq 2334031328269329445, 139119108157								; equ "%d x %d = %d ", 0, 0, 0 in byte
	divi		dq 2334031327044592677, 44629827645									; equ "%d / %d = %d", 10, 0, 0, 0 in byte
	divis		dq 2334031327044592677, 139119108157								; equ "%d / %d = %d ", 0, 0, 0 in byte
	modfi		dq 2675250488380777509, 2924860384551012, 0							; equ "%d %%f %d = %d", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0 in byte
	modti		dq 2675265881543566373, 2924860384551012, 0							; equ "%d %%t %d = %d", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0 in byte
	mulf		dq 2675270259207253541, 3325099346791642926, 681527					; equ "%.7f x %.7f = %.7f", 10, 0, 0, 0, 0, 0 in byte
	divf		dq 2675189994858425893, 3325099346791642926, 681527					; equ "%.7f / %.7f = %.7f", 10, 0, 0, 0, 0, 0 in byte
	modff		dq 7360329987091017253, 2323048606177568032, 44664565285			; equ "%.7f %%f %.7f = %.7f", 10, 0, 0, 0 in byte
	modtf		dq 8369136303622008357, 2323048606177568032, 44664565285			; equ "%.7f %%t %.7f = %.7f", 10, 0, 0, 0 in byte
	mulds		dq 2339655629770141221, 2323048606144212517, 35623351168549			; equ "%.15f x %.15f = %.15f ", 0, 0 in byte
	divds		dq 2319107956470263333, 2323048606144212517, 35623351168549			; equ "%.15f / %.15f = %.15f ", 0, 0 in byte
	modflls		dq 7360329987060952101, 2323048598480889120, 139123780645			; equ "%lld %%f %lld = %lld ", 0, 0, 0 in byte
	modtlls		dq 8369136303591943205, 2323048598480889120, 139123780645			; equ "%lld %%t %lld = %lld ", 0, 0, 0 in byte
	modfds		dq 2676581176892796453, 2334611942182035558, 2334611942182035517, 0	; equ "%.15f %%f %.15f = %.15f ", 0, 0, 0, 0, 0, 0, 0, 0 in byte
	modtds		dq 2676581176892796453, 2334611942182035572, 2334611942182035517, 0	; equ "%.15f %%t %.15f = %.15f ", 0, 0, 0, 0, 0, 0, 0, 0 in byte
	line		dw 10																; equ 10, 0 in byte
	align		16
	dwordmaxsse	dq 4294967295, 4294967295
	align		16
	carrysse	dq 4294967296, 4294967296
	align		16
	onesse		dq 1, 1
	rdrandf		db 0
	avx2		db 0
	a			sbyte ?
	b			dd ?
	c			dd ?
	d			dd ?
	e			real4 ?
	f			real4 ?
	align		16
	g			sbyte 16 dup (?)
	align		16
	h			sbyte 16 dup (?)
	j			dq ?
	k			dq ?
	l			dq ?
	m			real8 ?
	align		16
	n			real8 2 dup (?)
	align		16
	o			real8 2 dup (?)
	align		16
	p			real8 2 dup (?)
	q			sbyte ?
	r			real4 ?
	align		16
	s			sdword 4 dup (?)
	align		16
	t			sdword 4 dup (?)
	align		16
	u			sdword 4 dup (?)
	align		16
	v			real8 2 dup (?)
	align		16
	w			real8 2 dup (?)
	align		16
	x			real8 2 dup (?)
	y			sbyte ?
	z			sbyte ?
	aa			real4 ?
	ab			real4 ?
	ac			real4 ?
	align		16
	ad			sqword 2 dup (?)
	align		16
	ae			sqword 2 dup (?)
	align		16
	af			sqword 2 dup (?)
	align		16
	ag			real8 2 dup (?)
	align		16
	ai			real8 2 dup (?)
	align		16
	aj			real8 2 dup (?)
	align		16
	hex			dq 0ffffffffffffffffh, 0ffffffffffffffffh
	align		16
	hex1		dq 0fffffffffffffffh, 0ffffffffffffffffh
	align		16
	res			dq 2 dup (?)

dat32	segment align(32) 'dat32'
	i			sword 16 dup (?)
dat32	ends

.code
mainCRTStartup	proc
	sub			rsp, 40

	movdqa		xmm0, xmmword ptr hex
	movdqa		xmm1, xmmword ptr dwordmaxsse
	movdqa		xmm2, xmmword ptr carrysse
	movdqa		xmm3, xmm0
	movdqa		xmm4, xmm0
	movdqa		xmm5, xmm3
	movdqa		xmm6, xmm0
	movdqa		xmm7, xmm3
	psrlq		xmm4, 32
	psrlq		xmm5, 32
	pand		xmm6, xmm1
	pand		xmm7, xmm1
	movdqa		xmm8, xmm4
	pmulld		xmm4, xmm5
	pmulld		xmm8, xmm7
	pmulld		xmm6, xmm5
	movdqa		xmm0, xmm4
	movdqa		xmm3, xmm8
	pand		xmm3, xmm1
	psrlq		xmm4, 32
	psrlq		xmm6, 32
	paddq		xmm3, xmm4
	paddq		xmm3, xmm6
	pand		xmm0, xmm1
	psllq		xmm3, 32
	psubq		xmm3, xmm2
	por			xmm0, xmm3

	pxor		xmm5, xmm5
l0:
	movdqa		xmm2, xmmword ptr onesse
	movdqa		xmm3, xmm2
	movdqa		xmm6, xmm2
	psrldq		xmm2, 8
	pslldq		xmm3, 8

	mov			rax, qword ptr hex
	
	test		rax, rax
	jz			zero1

	mov			rax, qword ptr 8 [hex]

	test		rax, rax
	jz			zero2
	jmp			c0
zero1:
	mov			qword ptr hex1, 0
	movdqa		xmm6, xmm3

	mov			rax, qword ptr 8 [hex]

	test		rax, rax
	jz			zero2
	jmp			c0
zero2:
	mov			qword ptr 8 [hex1], 0
	movdqa		xmm6, xmm2
c0:
	mov			rax, qword ptr hex
	mov			rcx, qword ptr hex1

	cmp			rax, rcx
	jl			zero3

	mov			rax, qword ptr 8 [hex]
	mov			rcx, qword ptr 8 [hex1]

	cmp			rax, rcx
	jl			zero4
	jmp			c01
zero3:
	mov			qword ptr hex1, 0
	movdqa		xmm6, xmm3

	mov			rax, qword ptr 8 [hex]
	mov			rcx, qword ptr 8 [hex1]

	cmp			rax, rcx
	jl			zero4
	jmp			c01
zero4:
	mov			qword ptr 8 [hex1], 0
	movdqa		xmm6, xmm2
c01:
	movdqa		xmm0, xmmword ptr hex
	movdqa		xmm1, xmmword ptr hex1
	movdqa		xmm4, xmm1
	psrlq		xmm1, 32
	psllq		xmm4, 32
	psubq		xmm0, xmm1
	paddq		xmm5, xmm6
	movdqa		xmmword ptr res, xmm5
	movdqa		xmmword ptr hex, xmm0

	mov			rax, qword ptr hex
	mov			rcx, qword ptr hex1

	cmp			rax, rcx
	jge			l0

	mov			rax, qword ptr 8 [hex]
	mov			rcx, qword ptr 8 [hex1]

	cmp			rax, rcx
	jge			l0

	mov			rax, 1
	cpuid
	
	test		ecx, 040000000h
	jz			f1

	mov			rdrandf, 1
	mov			avx2, 1
f1:
	mov			eax, 7
	xor			ecx, ecx
	cpuid

	test		ebx, 020h
	jz			f2

	mov			avx2, 1
f2:
	xor			ecx, ecx
	call		_time64

	; rcx have already same value with rax
	call		srand

	call		randc
	mov			a, al

	call		randc

	mov			cl, al
	mov			al, a
	imul		cl

	movsx		r8d, cl
	lea			rcx, muli
	movsx		edx, a
	movsx		r9d, ax
	call		printf

	call		randf
	mov			f, eax

	call		randf

	movd		xmm0, f
	cvtss2sd	xmm2, xmm0
	movd		xmm1, eax
	cvtss2sd	xmm3, xmm1
	mulss		xmm0, xmm1
	cvtss2sd	xmm4, xmm0
	
	lea			rcx, mulf
	movq		rdx, xmm2
	movq		r8, xmm3
	movq		r9, xmm4
	call		printf

	lea			rdi, g
	lea			rsi, h

	mov			ecx, 16
l1:
	mov			ebx, ecx
	call		randc

	mov			[rdi + rbp], al

	call		randc

	mov			[rsi + rbp], al
	
	inc			bpl
	mov			ecx, ebx

	loop		l1

	lea			rbp, i

	mov			al, avx2

	test		al, al
	jz			f3

	movdqa		xmm0, xmmword ptr g
	movdqa		xmm1, xmmword ptr h
	vpmovsxbw	ymm0, xmm0
	vpmovsxbw	ymm1, xmm1
	vpmullw		ymm0, ymm0, ymm1
	vmovdqa		ymmword ptr i, ymm0

	jmp			c1
f3:
	xor			bl, bl
l2:
	movq		xmm0, qword ptr [rdi + rbx * 8]
	movq		xmm1, qword ptr [rsi + rbx * 8]
	pmovsxbw	xmm0, xmm0
	pmovsxbw	xmm1, xmm1
	pmullw		xmm0, xmm1

	mov			al, bl
	imul		ax, 2

	movdqa		xmmword ptr [rbp + rax * 8], xmm0
	movdqa		xmmword ptr 16 [i], xmm1

	inc			bl

	cmp			bl, 1
	jle			l2
c1:
	mov			ecx, 16
l3:
	mov			bl, cl

	lea			rcx, mulis
	movsx		edx, byte ptr [rdi + r12]
	movsx		r8d, byte ptr [rsi + r12]
	movsx		r9d, word ptr [rbp + r12 * 2]
	call		printf

	inc			r12b
	mov			ecx, ebx

	loop		l3

	lea			rcx, line
	call		printf

	lea			r12, n
	lea			r13, o

	xor			esi, esi
l4:
	call		randd
	mov			[r12 + rsi * 8], rax

	call		randd
	mov			[r13 + rsi * 8], rax

	inc			sil

	cmp			sil, 1
	jle			l4

	movdqa		xmm0, xmmword ptr n
	movdqa		xmm1, xmmword ptr o
	mulpd		xmm0, xmm1
	movdqa		xmmword ptr p, xmm0

	lea			rbp, p

	xor			bl, bl
l5:
	lea			rcx, mulds
	mov			rdx, [r12 + rbx * 8]
	mov			r8, [r13 + rbx * 8]
	mov			r9, [rbp + rbx * 8]
	call		printf

	inc			bl
	
	cmp			bl, 1
	jle			l5

	lea			rcx, line
	call		printf

	call		randc
	mov			q, al

	call		randc
	
	test		al, al
	jz			r1
	jnz			c2
r1:
	call		randc

	test		al, al
	jz			r1
c2:
	mov			cl, al
	movsx		ax, q
	idiv		cl

	movsx		r8d, cl
	lea			rcx, divi
	movsx		edx, q
	movsx		r9d, al
	call		printf

	call		randf
	mov			r, eax

	call		randf

	movd		xmm0, r
	cvtss2sd	xmm2, xmm0
	movd		xmm1, eax
	cvtss2sd	xmm3, xmm1
	divss		xmm0, xmm1
	cvtss2sd	xmm4, xmm0
	
	lea			rcx, divf
	movq		rdx, xmm2
	movq		r8, xmm3
	movq		r9, xmm4
	call		printf

	lea			rsi, s
	lea			r12, t

	xor			edi, edi
	mov			ecx, 4
l6:
	mov			ebp, ecx

	call		randi
	mov			dword ptr [rsi + rdi * 4], eax
r2:
	call		randi
	test		eax, eax
	jz			r2

	mov			dword ptr [r12 + rdi * 4], eax

	inc			dil
	mov			ecx, ebp

	loop		l6

	lea			rbp, u

	xor			bl, bl
l7:
	mov			eax, ebx
	imul		eax, 4

	cvtsi2sd	xmm0, dword ptr [rsi + rax * 4]
	cvtsi2sd	xmm1, dword ptr [rsi + rax * 4 + 4]
	cvtsi2sd	xmm2, dword ptr [r12 + rax * 4]
	cvtsi2sd	xmm3, dword ptr [r12 + rax * 4 + 4]
	movlhps     xmm0, xmm1
	movlhps     xmm2, xmm3
	divpd		xmm0, xmm2
	movhlps		xmm1, xmm0
	cvttsd2si	rcx, xmm0
	mov			dword ptr [rbp + rax * 8], ecx
	cvttsd2si	rcx, xmm1
	mov			dword ptr [rbp + rax * 8 + 4], ecx

	add			bl, 2

	cmp			bl, 2
	jle			l7

	xor			bl,bl
l8:
	lea			rcx, divis
	mov			edx, dword ptr [rsi + rbx * 4]
	mov			r8d, dword ptr [r12 + rbx * 4]
	mov			r9d, dword ptr [rbp + rbx * 4]
	call		printf

	inc			bl

	cmp			bl, 3
	jle			l8

	lea			rcx, line
	call		printf

	lea			r13, v
	lea			r14, w

	xor			r12d, r12d
	mov			ecx, 2
l9:
	mov			esi, ecx

	call		randd
	mov			[r13 + r12 * 8], rax

	call		randd
	mov			[r14 + r12 * 8], rax

	inc			r12b
	mov			ecx, esi

	loop		l9

	movdqa		xmm0, xmmword ptr v
	movdqa		xmm1, xmmword ptr w
	divpd		xmm0, xmm1
	movdqa		xmmword ptr x, xmm0

	lea			rbp, x

	xor			bl, bl
l10:
	lea			rcx, divds
	mov			rdx, [r13 + rbx * 8]
	mov			r8, [r14 + rbx * 8]
	mov			r9, [rbp + rbx * 8]
	call		printf

	inc			bl

	cmp			bl, 1
	jle			l10

	lea			rcx, line
	call		printf

	call		randc
	mov			y, al
r3:
	call		randc

	test		al, al
	jz			r3

	mov			z, al
	mov			cl, al
	movsx		ax, y
	idiv		cl

	test		ah, ah
	jl			neg1
	jg			pos1
	jz			c3
neg1:
	test		cl, cl
	jg			add1
	jmp			c3
pos1:
	test		cl, cl
	jl			add1
	jmp			c3
add1:
	add			ah, cl
c3:
	movsx		r8d, cl
	lea			rcx, modfi
	movsx		edx, y
	movsx		eax, ah
	mov			r9d, eax
	call		printf

	movsx		ax, y
	mov			cl, z
	idiv		cl

	movsx		r8d, cl
	lea			rcx, modti
	movsx		edx, y
	movsx		eax, ah
	mov			r9d, eax
	call		printf
	
	call		randf
	mov			aa, eax

	call		randf
	mov			ab, eax

	fld			aa
	fld			ab
	fdiv
	fstcw		word ptr [ac]
	mov			ax, word ptr [ac]
	or			ax, 0400h
	mov			word ptr [ac], ax
	fldcw		word ptr [ac]
	frndint
	fld			ab
	fmul
	fld			aa
	fxch
	fsub
	fstp		ac

	lea			rcx, modff
	cvtss2sd	xmm0, aa
	movq		rdx, xmm0
	cvtss2sd	xmm0, ab
	movq		r8, xmm0
	cvtss2sd	xmm0, ac
	movq		r9, xmm0
	call		printf
	
	movd		xmm0, aa
	movd		xmm1, ab
	movq		xmm2, xmm0
	divss		xmm0, xmm1
	roundss		xmm0, xmm0, 3
	mulss		xmm0, xmm1
	subss		xmm2, xmm0
	
	lea			rcx, modtf
	cvtss2sd	xmm0, aa
	movq		rdx, xmm0
	cvtss2sd	xmm1, ab
	movq		r8, xmm1
	cvtss2sd	xmm2, xmm2
	movq		r9, xmm2
	call		printf

	lea			r13, ad
	lea			r14, ae

	xor			r12d, r12d
	mov			ecx, 2
l11:
	mov			esi, ecx

	call		randll
	mov			[r13 + r12 * 8], rax
r4:
	call		randll
	test		rax, rax
	jz			r4

	mov			[r14 + r12 * 8], rax

	inc			r12b
	mov			ecx, esi

	loop		l11

	cvtsi2sd	xmm2, qword ptr ad
	cvtsi2sd	xmm3, qword ptr 8 [ad]
	cvtsi2sd	xmm4, qword ptr ae
	cvtsi2sd	xmm5, qword ptr 8 [ae]
	movlhps     xmm2, xmm3
	movdqa		xmm0, xmm2
	movdqa		xmm6, xmm2
	movlhps     xmm4, xmm5
	movdqa		xmm7, xmm4
	divpd		xmm2, xmm4
	movdqa		xmm8, xmm2
	roundpd		xmm2, xmm2, 1
	mulpd		xmm2, xmm4
	subpd		xmm0, xmm2
	movhlps		xmm1, xmm0
	cvtsd2si	rax, xmm0
	mov			qword ptr af, rax
	cvtsd2si	rax, xmm1
	mov			qword ptr 8 [af], rax

	lea			rbp, af

	xor			bl, bl
l12:
	lea			rcx, modflls
	mov			rdx, [r13 + rbx * 8]
	mov			r8, [r14 + rbx * 8]
	mov			r9, [rbp + rbx * 8]
	call		printf

	inc			bl

	cmp			bl, 1
	jle			l12

	lea			rcx, line
	call		printf

	roundpd		xmm3, xmm8, 3
	mulpd		xmm3, xmm7
	subpd		xmm6, xmm3
	movhlps		xmm0, xmm6
	cvtsd2si	rax, xmm6
	mov			qword ptr af, rax
	cvtsd2si	rax, xmm0
	mov			qword ptr 8 [af], rax

	xor			edi, edi
	mov			ecx, 2
l13:
	mov			bl, cl

	lea			rcx, modtlls
	mov			rdx, [r13 + rdi * 8]
	mov			r8, [r14 + rdi * 8]
	mov			r9, [rbp + rdi * 8]
	call		printf

	inc			dil
	mov			ecx, ebx

	loop		l13

	lea			rcx, line
	call		printf

	lea			r12, ag
	lea			r13, ai

	xor			sil, sil
l14:
	call		randd
	mov			[r12 + rsi * 8], rax

	call		randd
	mov			[r13 + rsi * 8], rax

	inc			sil

	cmp			sil, 1
	jle			l14

	movdqa		xmm0, xmmword ptr ag
	movdqa		xmm1, xmmword ptr ai
	movdqa		xmm6, xmm0
	movdqa		xmm7, xmm1
	movdqa		xmm2, xmm0
	divpd		xmm0, xmm1
	movdqa		xmm8, xmm0
	roundpd		xmm0, xmm0, 1
	mulpd		xmm0, xmm1
	subpd		xmm2, xmm0
	movdqa		xmmword ptr aj, xmm2

	lea			rdi, aj

	xor			ebp, ebp
	mov			ecx, 2
l15:
	mov			bl, cl

	lea			rcx, modfds
	mov			rdx, [r12 + rbp * 8]
	mov			r8, [r13 + rbp * 8]
	mov			r9, [rdi + rbp * 8]
	call		printf

	inc			bpl
	mov			ecx, ebx

	loop		l15

	lea			rcx, line
	call		printf

	roundpd		xmm0, xmm8, 3
	mulpd		xmm0, xmm7
	subpd		xmm6, xmm0
	movdqu		xmmword ptr aj, xmm6

	xor			bl, bl
l16:
	lea			rcx, modtds
	mov			rdx, [r12 + rbx * 8]
	mov			r8, [r13 + rbx * 8]
	mov			r9, [rdi + rbx * 8]
	call		printf

	inc			bl

	cmp			bl, 1
	jle			l16

	lea			rcx, line
	call		printf

	xor			ecx, ecx
	call		ExitProcess
mainCRTStartup	endp
randc			proc
	sub		rsp, 40
	
	call	rand

	xor		ah, ah

	add		rsp, 40

	ret
randc			endp
randi			proc
	sub		rsp, 40

	mov		al, rdrandf

	test	al, al
	jnz		true
	
	xor		ebx, ebx
l1:
	call	randc

	mov		ecx, ebx
	imul	ecx, ecx, 8
	shl		eax, cl
	or		b, eax

	inc		bl

	cmp		bl, 3
	jle		l1

	mov		eax, b
	mov		b, 0

	jmp		cal
true:	
	rdrand	eax
	mov		b, eax
cal:
	add		rsp, 40

	ret
randi			endp
randf			proc
	sub		rsp, 40
	
	call	randi
	mov		c, eax

	call	randi
	mov		d, eax

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
randll			proc
	sub		rsp, 40

	mov		al, rdrandf

	test	al, al
	jnz		true
	
	xor		edi, edi
	mov		ecx, 2
l1:
	mov		ebp, ecx

	call	randi

	mov		ecx, edi
	imul	ecx, ecx, 32
	shl		rax, cl
	or		j, rax

	inc		dil
	mov		ecx, ebp

	loop	l1

	mov		rax, j
	mov		j, 0

	jmp		cal
true:	
	rdrand	rax
	mov		j, rax
cal:
	add		rsp, 40

	ret
randll			endp
randd			proc
	sub		rsp, 40

	call	randll
	mov		k, rax

	call	randll
	mov		l, rax

	fild	k
	fild	l
	fdiv
	fstp	m
	mov		rax, m
	mov		k, 0
	mov		l, 0

	add		rsp, 40

	ret
randd			endp
end