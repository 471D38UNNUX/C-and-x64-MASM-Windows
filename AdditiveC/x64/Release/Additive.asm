; Listing generated by Microsoft (R) Optimizing Compiler Version 19.42.34435.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	K
PUBLIC	j
PUBLIC	t
PUBLIC	J
PUBLIC	avx512f
PUBLIC	R
PUBLIC	fprintfis
PUBLIC	s
PUBLIC	M
PUBLIC	q
PUBLIC	X
PUBLIC	i
PUBLIC	line
PUBLIC	h
PUBLIC	subi
PUBLIC	v
PUBLIC	L
PUBLIC	V
PUBLIC	W
PUBLIC	U
PUBLIC	avx2
PUBLIC	sublls
PUBLIC	subds
PUBLIC	addis
PUBLIC	addf
PUBLIC	subf
PUBLIC	r
PUBLIC	H
PUBLIC	addi
PUBLIC	G
PUBLIC	u
PUBLIC	S
PUBLIC	addds
PUBLIC	g
PUBLIC	rdrandf
EXTRN	__imp_malloc:PROC
EXTRN	__imp_ExitProcess:PROC
EXTRN	__imp_free:PROC
EXTRN	__imp__time64:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp_rand:PROC
EXTRN	__imp_CoTaskMemFree:PROC
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp_srand:PROC
EXTRN	__imp_CoTaskMemAlloc:PROC
EXTRN	__security_check_cookie:PROC
K	DQ	04H DUP (?)
COMM	n:BYTE
j	DQ	04H DUP (?)
t	DB	01H DUP (?)
	ALIGN	4

J	DB	01H DUP (?)
	ALIGN	4

avx512f	DB	01H DUP (?)
COMM	b:DWORD
	ALIGN	4

R	DB	01H DUP (?)
	ALIGN	8

s	DQ	08H DUP (?)
M	DB	01H DUP (?)
	ALIGN	4

q	DB	01H DUP (?)
COMM	e:QWORD
COMM	O:DWORD
	ALIGN	4

X	DB	01H DUP (?)
COMM	B:WORD
	ALIGN	4

i	DB	01H DUP (?)
COMM	cpuInfo:DWORD:04H
COMM	p:BYTE
	ALIGN	4

h	DB	01H DUP (?)
	ALIGN	8

v	DQ	04H DUP (?)
L	DQ	04H DUP (?)
V	DQ	04H DUP (?)
COMM	P:DWORD
W	DQ	04H DUP (?)
COMM	a:BYTE
U	DB	01H DUP (?)
	ALIGN	4

avx2	DB	01H DUP (?)
COMM	l:BYTE
COMM	o:DWORD
COMM	I:BYTE
COMM	c:DWORD
COMM	f:BYTE
COMM	C:DWORD
COMM	E:BYTE
COMM	Q:QWORD
COMM	F:BYTE
COMM	w:BYTE
	ALIGN	4

r	DD	08H DUP (?)
COMM	T:BYTE
H	DD	010H DUP (?)
COMM	m:BYTE
G	DW	010H DUP (?)
u	DB	01H DUP (?)
	ALIGN	4

S	DD	08H DUP (?)
g	DW	010H DUP (?)
COMM	A:BYTE
COMM	N:BYTE
rdrandf	DB	01H DUP (?)
_BSS	ENDS
fprintfis DD	0206425H
line	DW	0aH
	ORG $+2
subi	DQ	206425202d206425H
	DQ	0000000a6425203dH
sublls	DQ	206425202d206425H
	DQ	0020646c6c25203dH
	ORG $+8
subds	DQ	202d206635312e25H
	DQ	203d206635312e25H
	DQ	0000206635312e25H
addis	DQ	206425202b206425H
	DQ	000000206425203dH
addf	DQ	25202b2066372e25H
	DQ	2e25203d2066372eH
	DQ	00000000000a6637H
subf	DQ	25202d2066372e25H
	DQ	2e25203d2066372eH
	DQ	00000000000a6637H
addi	DQ	206425202b206425H
	DQ	0000000a6425203dH
addds	DQ	202b206635312e25H
	DQ	203d206635312e25H
	DQ	0000206635312e25H
_DATA	ENDS
PUBLIC	main
PUBLIC	printf
PUBLIC	_vfprintf_l
PUBLIC	__local_stdio_printf_options
EXTRN	__GSHandlerCheck:PROC
EXTRN	__ImageBase:BYTE
EXTRN	__security_cookie:QWORD
EXTRN	_fltused:DWORD
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN313
	DD	imagerel $LN313+420
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$main DD imagerel $LN313+420
	DD	imagerel $LN313+601
	DD	imagerel $chain$1$main
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$main DD imagerel $LN313+601
	DD	imagerel $LN313+859
	DD	imagerel $chain$2$main
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$3$main DD imagerel $LN313+859
	DD	imagerel $LN313+2424
	DD	imagerel $chain$3$main
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$randd DD	imagerel randd
	DD	imagerel randd+74
	DD	imagerel $unwind$randd
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$randd DD imagerel randd+74
	DD	imagerel randd+260
	DD	imagerel $chain$2$randd
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$3$randd DD imagerel randd+260
	DD	imagerel randd+301
	DD	imagerel $chain$3$randd
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$randf DD	imagerel randf
	DD	imagerel randf+48
	DD	imagerel $unwind$randf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$0$randf DD imagerel randf+48
	DD	imagerel randf+106
	DD	imagerel $chain$0$randf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$randf DD imagerel randf+106
	DD	imagerel randf+195
	DD	imagerel $chain$1$randf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$randi DD	imagerel randi
	DD	imagerel randi+115
	DD	imagerel $unwind$randi
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$rands DD	imagerel rands
	DD	imagerel rands+43
	DD	imagerel $unwind$rands
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$0$rands DD imagerel rands+43
	DD	imagerel rands+132
	DD	imagerel $chain$0$rands
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$rands DD imagerel rands+132
	DD	imagerel rands+156
	DD	imagerel $chain$1$rands
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$randc DD	imagerel randc
	DD	imagerel randc+34
	DD	imagerel $unwind$randc
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN6
	DD	imagerel $LN6+85
	DD	imagerel $unwind$printf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN4
	DD	imagerel $LN4+68
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 060f01H
	DD	09640fH
	DD	08340fH
	DD	0700b520fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 041b01H
	DD	07017521bH
	DD	030156016H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$randc DD 010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$rands DD 021H
	DD	imagerel rands
	DD	imagerel rands+43
	DD	imagerel $unwind$rands
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$0$rands DD 020521H
	DD	087405H
	DD	imagerel rands
	DD	imagerel rands+43
	DD	imagerel $unwind$rands
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$rands DD 041919H
	DD	09340aH
	DD	06006520aH
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$randi DD 043b19H
	DD	08343bH
	DD	070025206H
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$randf DD 021H
	DD	imagerel randf
	DD	imagerel randf+48
	DD	imagerel $unwind$randf
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$0$randf DD 020521H
	DD	085405H
	DD	imagerel randf
	DD	imagerel randf+48
	DD	imagerel $unwind$randf
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$randf DD 061e19H
	DD	0a640fH
	DD	09340fH
	DD	0700b520fH
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$3$randd DD 021H
	DD	imagerel randd
	DD	imagerel randd+74
	DD	imagerel $unwind$randd
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$randd DD 060f21H
	DD	0c740fH
	DD	0b640aH
	DD	0a3405H
	DD	imagerel randd
	DD	imagerel randd+74
	DD	imagerel $unwind$randd
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$randd DD 061e19H
	DD	0d540fH
	DD	0f00b520fH
	DD	0c007e009H
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$3$main DD 021H
	DD	imagerel $LN313+420
	DD	imagerel $LN313+601
	DD	imagerel $chain$1$main
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$main DD 020521H
	DD	097405H
	DD	imagerel $LN313+420
	DD	imagerel $LN313+601
	DD	imagerel $chain$1$main
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$main DD 040a21H
	DD	0ae40aH
	DD	086405H
	DD	imagerel $LN313
	DD	imagerel $LN313+420
	DD	imagerel $unwind$main
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	021519H
	DD	030025206H
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
; Function compile flags: /Ogtpy
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\corecrt_stdio_config.h
; Line 92
	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 93
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$dead$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\stdio.h
; Line 644
$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, rdx
	mov	rsi, rcx
; Line 645
	call	__local_stdio_printf_options
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rbx
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfprintf
; Line 646
	mov	rbx, QWORD PTR [rsp+64]
	mov	rsi, QWORD PTR [rsp+72]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT printf
_TEXT	SEGMENT
_Format$ = 80
printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\stdio.h
; Line 956
$LN6:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	push	rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rcx
; Line 959
	lea	rsi, QWORD PTR _Format$[rsp+8]
; Line 960
	mov	ecx, 1
	call	QWORD PTR __imp___acrt_iob_func
	mov	rbx, rax
; Line 645
	call	__local_stdio_printf_options
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rsi
	mov	r8, rdi
	mov	rdx, rbx
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfprintf
; Line 963
	add	rsp, 48					; 00000030H
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT time
_TEXT	SEGMENT
_Time$dead$ = 8
time	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\time.h
; Line 552
	xor	ecx, ecx
	rex_jmp	QWORD PTR __imp__time64
time	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT randc
_TEXT	SEGMENT
randc	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 23
	sub	rsp, 40					; 00000028H
	call	QWORD PTR __imp_rand
	movsx	eax, al
	and	eax, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN4@randc
	dec	eax
	or	eax, -256				; ffffffffffffff00H
	inc	eax
$LN4@randc:
	add	rsp, 40					; 00000028H
	ret	0
randc	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT rands
_TEXT	SEGMENT
__$ArrayPad$ = 40
rands	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 25
	mov	QWORD PTR [rsp+16], rbx
	push	rsi
	sub	rsp, 48					; 00000030H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 26
	xor	esi, esi
; Line 27
	xor	bl, bl
; Line 29
	cmp	BYTE PTR rdrandf, bl
	je	SHORT $LN16@rands
; Line 31
	rdrand	ax
; Line 33
	jmp	SHORT $LN5@rands
$LN16@rands:
	mov	QWORD PTR [rsp+64], rdi
	movzx	edx, si
	movzx	edi, si
	npad	10
$l1$27:
; Line 38
	cmp	bl, 1
	mov	ecx, esi
	setle	cl
	cmp	ecx, 1
	jne	SHORT $LN22@rands
; Line 23
	call	QWORD PTR __imp_rand
	movsx	eax, al
	and	eax, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN21@rands
	dec	eax
	or	eax, -256				; ffffffffffffff00H
	inc	eax
$LN21@rands:
; Line 41
	movsx	ecx, bl
	shl	ecx, 3
	movzx	edx, al
	shl	dx, cl
	or	dx, di
	movzx	edi, dx
	inc	bl
; Line 43
	jmp	SHORT $l1$27
$LN22@rands:
; Line 44
	mov	rdi, QWORD PTR [rsp+64]
	movzx	eax, dx
$LN5@rands:
; Line 47
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	mov	rbx, QWORD PTR [rsp+72]
	add	rsp, 48					; 00000030H
	pop	rsi
	ret	0
rands	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT randi
_TEXT	SEGMENT
__$ArrayPad$ = 40
randi	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 49
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 50
	xor	edi, edi
; Line 53
	cmp	BYTE PTR rdrandf, dil
	je	SHORT $LN5@randi
; Line 55
	rdrand	eax
; Line 65
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
$LN5@randi:
	mov	QWORD PTR [rsp+64], rbx
; Line 61
	xor	bl, bl
	npad	3
$LL4@randi:
	call	rands
	movzx	ecx, bl
	inc	bl
	shl	ecx, 4
	movzx	eax, ax
	shl	eax, cl
	or	eax, edi
	mov	edi, eax
	cmp	bl, 1
	jle	SHORT $LL4@randi
	mov	rbx, QWORD PTR [rsp+64]
; Line 65
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
randi	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT randf
_TEXT	SEGMENT
__$ArrayPad$ = 40
randf	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 67
	mov	QWORD PTR [rsp+16], rbx
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 53
	movzx	eax, BYTE PTR rdrandf
	xor	esi, esi
	test	al, al
	je	SHORT $LN7@randf
; Line 55
	rdrand	ebx
; Line 57
	jmp	SHORT $LN8@randf
$LN7@randf:
	mov	QWORD PTR [rsp+64], rbp
; Line 61
	xor	dil, dil
	mov	ebp, esi
	npad	6
$LL6@randf:
	call	rands
	movzx	ecx, dil
	inc	dil
	shl	ecx, 4
	movzx	ebx, ax
	shl	ebx, cl
	or	ebx, ebp
	mov	ebp, ebx
	cmp	dil, 1
	jle	SHORT $LL6@randf
	mov	rbp, QWORD PTR [rsp+64]
; Line 63
	movzx	eax, BYTE PTR rdrandf
$LN8@randf:
; Line 53
	test	al, al
	je	SHORT $LN14@randf
; Line 55
	rdrand	eax
; Line 57
	jmp	SHORT $LN15@randf
$LN14@randf:
; Line 61
	xor	dil, dil
$LL13@randf:
	call	rands
	movzx	ecx, dil
	inc	dil
	shl	ecx, 4
	movzx	eax, ax
	shl	eax, cl
	or	eax, esi
	mov	esi, eax
	cmp	dil, 1
	jle	SHORT $LL13@randf
$LN15@randf:
	movd	xmm0, ebx
	movd	xmm1, eax
; Line 70
	cvtdq2ps xmm0, xmm0
	cvtdq2ps xmm1, xmm1
	divss	xmm0, xmm1
; Line 71
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	mov	rbx, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
randf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT randd
_TEXT	SEGMENT
__$ArrayPad$ = 40
randd	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 76
	mov	QWORD PTR [rsp+32], rbp
	push	r12
	push	r14
	push	r15
	sub	rsp, 48					; 00000030H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 80
	movzx	edx, BYTE PTR rdrandf
	xor	r12d, r12d
	xor	bpl, bpl
	mov	r14d, r12d
	mov	r15d, r12d
	test	dl, dl
	je	SHORT $LN66@randd
; Line 82
	rdrand	rcx
	xorps	xmm0, xmm0
; Line 83
	rdrand	rax
; Line 85
	cvtsi2sd xmm0, rcx
	jmp	$LN69@randd
$LN66@randd:
	mov	QWORD PTR [rsp+80], rbx
	mov	QWORD PTR [rsp+88], rsi
	mov	QWORD PTR [rsp+96], rdi
	npad	7
$LL4@randd:
; Line 53
	test	dl, dl
	je	SHORT $LN12@randd
; Line 55
	rdrand	eax
; Line 57
	jmp	SHORT $LN13@randd
$LN12@randd:
; Line 61
	xor	bl, bl
	mov	edi, r12d
	npad	2
$LL11@randd:
	call	rands
	movzx	ecx, bl
	inc	bl
	shl	ecx, 4
	movzx	eax, ax
	shl	eax, cl
	or	eax, edi
	mov	edi, eax
	cmp	bl, 1
	jle	SHORT $LL11@randd
; Line 63
	movzx	edx, BYTE PTR rdrandf
$LN13@randd:
; Line 91
	movzx	esi, bpl
	shl	esi, 5
	mov	ecx, esi
	mov	eax, eax
	shl	rax, cl
	or	r14, rax
; Line 53
	test	dl, dl
	je	SHORT $LN19@randd
; Line 55
	rdrand	eax
; Line 57
	jmp	SHORT $LN20@randd
$LN19@randd:
; Line 61
	xor	bl, bl
	mov	edi, r12d
$LL18@randd:
	call	rands
	movzx	ecx, bl
	inc	bl
	shl	ecx, 4
	movzx	eax, ax
	shl	eax, cl
	or	eax, edi
	mov	edi, eax
	cmp	bl, 1
	jle	SHORT $LL18@randd
; Line 63
	movzx	edx, BYTE PTR rdrandf
$LN20@randd:
; Line 91
	mov	eax, eax
	mov	ecx, esi
	shl	rax, cl
	inc	bpl
	or	rax, r15
	mov	r15, rax
; Line 93
	cmp	bpl, 1
	jle	$LL4@randd
	mov	rdi, QWORD PTR [rsp+96]
	xorps	xmm0, xmm0
	mov	rsi, QWORD PTR [rsp+88]
	mov	rbx, QWORD PTR [rsp+80]
; Line 95
	cvtsi2sd xmm0, r14
$LN69@randd:
; Line 97
	xorps	xmm1, xmm1
	cvtsi2sd xmm1, rax
	divsd	xmm0, xmm1
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	mov	rbp, QWORD PTR [rsp+104]
	add	rsp, 48					; 00000030H
	pop	r15
	pop	r14
	pop	r12
	ret	0
randd	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT main
_TEXT	SEGMENT
__$ArrayPad$ = 40
main	PROC						; COMDAT
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 104
$LN313:
	push	rbx
	sub	rsp, 48					; 00000030H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 105
	xor	ecx, ecx
	mov	eax, 7
	cpuid
	mov	DWORD PTR cpuInfo, eax
	mov	DWORD PTR cpuInfo+4, ebx
	mov	DWORD PTR cpuInfo+8, ecx
	mov	DWORD PTR cpuInfo+12, edx
; Line 107
	bt	ebx, 16
	jae	SHORT $LN50@main
; Line 129
	mov	BYTE PTR avx512f, 1
	mov	BYTE PTR rdrandf, 1
	jmp	SHORT $LN312@main
$LN50@main:
; Line 110
	xor	ecx, ecx
	mov	eax, 1
	cpuid
	mov	DWORD PTR cpuInfo, eax
	mov	DWORD PTR cpuInfo+4, ebx
	mov	DWORD PTR cpuInfo+8, ecx
	mov	DWORD PTR cpuInfo+12, edx
; Line 112
	bt	ecx, 30
	jae	SHORT $LN51@main
	mov	BYTE PTR rdrandf, 1
	jmp	SHORT $LN312@main
$LN51@main:
; Line 115
	xor	ecx, ecx
	mov	eax, 7
	cpuid
	mov	DWORD PTR cpuInfo, eax
	mov	DWORD PTR cpuInfo+4, ebx
	mov	DWORD PTR cpuInfo+8, ecx
	mov	DWORD PTR cpuInfo+12, edx
; Line 117
	test	bl, 32					; 00000020H
	je	SHORT $LN53@main
$LN312@main:
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\time.h
; Line 552
	mov	BYTE PTR avx2, 1
$LN53@main:
	xor	ecx, ecx
	call	QWORD PTR __imp__time64
; File D:\Assembly Project\C\AdditiveC\Additive.c
; Line 133
	mov	ecx, eax
	call	QWORD PTR __imp_srand
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ecx, al
	and	ecx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN244@main
	dec	ecx
	or	ecx, -256				; ffffffffffffff00H
	inc	ecx
$LN244@main:
; Line 135
	mov	BYTE PTR A, cl
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ebx, al
	and	ebx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN243@main
	dec	ebx
	or	ebx, -256				; ffffffffffffff00H
	inc	ebx
$LN243@main:
; Line 135
	movsx	edx, BYTE PTR A
	movsx	ecx, bl
	add	cx, dx
; Line 137
	movsx	r8d, bl
	mov	WORD PTR B, cx
	movsx	r9d, cx
	lea	rcx, OFFSET FLAT:addi
	mov	BYTE PTR a, bl
	call	printf
; Line 139
	call	randf
	movss	DWORD PTR b, xmm0
	call	randf
	movss	xmm4, DWORD PTR b
; Line 141
	lea	rcx, OFFSET FLAT:addf
	movaps	xmm1, xmm0
	movss	DWORD PTR C, xmm0
	addss	xmm1, xmm4
	xorps	xmm3, xmm3
	xorps	xmm2, xmm2
	cvtss2sd xmm2, xmm0
	cvtss2sd xmm3, xmm1
	movss	DWORD PTR c, xmm1
	movq	r8, xmm2
	cvtps2pd xmm1, xmm4
	movq	r9, xmm3
	movq	rdx, xmm1
	call	printf
; Line 143
	call	QWORD PTR __imp_rand
	and	eax, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN242@main
	dec	eax
	or	eax, -256				; ffffffffffffff00H
	inc	eax
$LN242@main:
	movzx	eax, al
	mov	BYTE PTR E, al
	inc	eax
	imul	eax, eax, 2
	mov	QWORD PTR [rsp+64], rsi
	mov	QWORD PTR [rsp+80], r14
	movsxd	rcx, eax
	mov	rax, -1
	cmovo	rcx, rax
	call	QWORD PTR __imp_malloc
	mov	QWORD PTR e, rax
	test	rax, rax
; Line 145
	je	$error$314
; Line 147
	mov	BYTE PTR F, 0
	npad	7
$LL10@main:
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ecx, al
	and	ecx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN241@main
	dec	ecx
	or	ecx, -256				; ffffffffffffff00H
	inc	ecx
$LN241@main:
; Line 149
	mov	rax, QWORD PTR e
	movsx	edx, cl
	movzx	ecx, BYTE PTR F
	mov	WORD PTR [rax+rcx*2], dx
; Line 151
	lea	rcx, OFFSET FLAT:fprintfis
	call	printf
	movzx	eax, BYTE PTR F
	inc	al
	cmp	al, BYTE PTR E
	mov	BYTE PTR F, al
	jbe	SHORT $LL10@main
; Line 154
	lea	rcx, OFFSET FLAT:line
	call	printf
; Line 156
	movzx	ecx, BYTE PTR f
	lea	rsi, OFFSET FLAT:__ImageBase
	xor	r14d, r14d
	cmp	cl, 15
	jg	$LN235@main
	mov	QWORD PTR [rsp+72], rdi
	npad	2
$LL11@main:
; Line 27
	xor	bl, bl
; Line 29
	cmp	BYTE PTR rdrandf, bl
	je	SHORT $LN168@main
; Line 31
	rdrand	dx
; Line 33
	jmp	SHORT $LN78@main
$LN168@main:
	movzx	edi, r14w
	mov	edx, r14d
	npad	9
$l1$315:
; Line 38
	cmp	bl, 1
	mov	ecx, r14d
	setle	cl
	cmp	ecx, 1
	jne	SHORT $LN249@main
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ecx, al
	and	ecx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN240@main
	dec	ecx
	or	ecx, -256				; ffffffffffffff00H
	inc	ecx
$LN240@main:
; Line 41
	movzx	eax, cl
	movsx	ecx, bl
	shl	ecx, 3
	shl	ax, cl
	or	ax, di
	movzx	edi, ax
	inc	bl
	movzx	edx, ax
; Line 43
	jmp	SHORT $l1$315
$LN249@main:
; Line 44
	movzx	ecx, BYTE PTR f
$LN78@main:
; Line 156
	movsx	rax, cl
; Line 27
	xor	bl, bl
; Line 29
	cmp	BYTE PTR rdrandf, bl
; Line 156
	mov	WORD PTR G[rsi+rax*2], dx
; Line 29
	je	SHORT $LN169@main
; Line 31
	rdrand	dx
; Line 33
	jmp	SHORT $LN88@main
$LN169@main:
	movzx	edi, r14w
	mov	edx, r14d
	npad	4
$l1$316:
; Line 38
	cmp	bl, 1
	mov	ecx, r14d
	setle	cl
	cmp	ecx, 1
	jne	SHORT $LN250@main
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ecx, al
	and	ecx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN239@main
	dec	ecx
	or	ecx, -256				; ffffffffffffff00H
	inc	ecx
$LN239@main:
; Line 41
	movzx	eax, cl
	movsx	ecx, bl
	shl	ecx, 3
	shl	ax, cl
	or	ax, di
	movzx	edi, ax
	inc	bl
	movzx	edx, ax
; Line 43
	jmp	SHORT $l1$316
$LN250@main:
; Line 44
	movzx	ecx, BYTE PTR f
$LN88@main:
; Line 156
	movsx	rax, cl
	inc	cl
	mov	BYTE PTR f, cl
	mov	WORD PTR g[rsi+rax*2], dx
	cmp	cl, 15
	jle	$LL11@main
	mov	rdi, QWORD PTR [rsp+72]
$LN235@main:
; Line 157
	cmp	BYTE PTR avx512f, r14b
	je	SHORT $LN57@main
	vpmovsxwd zmm0, YMMWORD PTR G
	vpmovsxwd zmm1, YMMWORD PTR g
	vpaddd	zmm1, zmm0, zmm1
	vmovdqa32 ZMMWORD PTR H, zmm1
	vzeroupper
	jmp	$LN112@main
$LN57@main:
; Line 158
	cmp	BYTE PTR avx2, r14b
	je	SHORT $LN59@main
	movzx	edx, BYTE PTR h
$LL15@main:
; Line 162
	movsx	eax, dl
; Line 164
	inc	dl
	shl	eax, 3
	movsxd	rcx, eax
	vpmovsxwd ymm1, XMMWORD PTR G[rsi+rcx*2]
	vpmovsxwd ymm0, XMMWORD PTR g[rsi+rcx*2]
	vpaddd	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR H[rsi+rcx*4], ymm2
	cmp	dl, 1
; Line 166
	jle	SHORT $LL15@main
; Line 167
	mov	BYTE PTR h, dl
	vzeroupper
	jmp	SHORT $LN112@main
$LN59@main:
	xor	al, al
	xor	dl, dl
$LL18@main:
; Line 168
	movsx	eax, al
	shl	eax, 2
	movsxd	rcx, eax
	lea	eax, DWORD PTR [rdx+1]
	movzx	edx, al
	pmovsxwd xmm2, QWORD PTR g[rsi+rcx*2]
	pmovsxwd xmm1, QWORD PTR G[rsi+rcx*2]
	paddd	xmm2, xmm1
	movdqu	XMMWORD PTR H[rsi+rcx*4], xmm2
	cmp	al, 3
	jle	SHORT $LL18@main
	mov	BYTE PTR I, al
$LN112@main:
; Line 170
	movzx	eax, BYTE PTR i
	cmp	al, 15
	jg	SHORT $LN20@main
$LL19@main:
; Line 172
	movsx	r9, al
	lea	rcx, OFFSET FLAT:addis
	movsx	r8d, WORD PTR g[rsi+r9*2]
	movsx	edx, WORD PTR G[rsi+r9*2]
	mov	r9d, DWORD PTR H[rsi+r9*4]
	call	printf
; Line 174
	movzx	eax, BYTE PTR i
	inc	al
	mov	BYTE PTR i, al
	cmp	al, 15
	jle	SHORT $LL19@main
$LN20@main:
; Line 177
	lea	rcx, OFFSET FLAT:line
	call	printf
	movzx	edx, BYTE PTR J
	npad	11
$l1$317:
; Line 179
	cmp	dl, 3
	mov	ecx, r14d
	setle	cl
	cmp	ecx, 1
	jne	SHORT $LN251@main
; Line 182
	call	randd
	movsx	rax, BYTE PTR J
	movsd	QWORD PTR j[rsi+rax*8], xmm0
	call	randd
	movsx	rdx, BYTE PTR J
	movsd	QWORD PTR K[rsi+rdx*8], xmm0
	inc	dl
	mov	BYTE PTR J, dl
; Line 184
	jmp	SHORT $l1$317
$LN251@main:
; Line 187
	cmp	BYTE PTR avx2, 1
	je	SHORT $LN62@main
	xor	al, al
	xor	dl, dl
$LL27@main:
; Line 193
	movsx	eax, al
	add	eax, eax
	movsxd	rcx, eax
	lea	eax, DWORD PTR [rdx+1]
	movzx	edx, al
	movups	xmm0, XMMWORD PTR j[rsi+rcx*8]
	addpd	xmm0, XMMWORD PTR K[rsi+rcx*8]
	movups	XMMWORD PTR L[rsi+rcx*8], xmm0
	cmp	al, 1
	jle	SHORT $LL27@main
	mov	BYTE PTR l, al
	jmp	SHORT $LN115@main
$LN62@main:
; Line 190
	vmovupd	ymm0, YMMWORD PTR j
	vaddpd	ymm0, ymm0, YMMWORD PTR K
	vmovapd	YMMWORD PTR L, ymm0
	vzeroupper
$LN115@main:
; Line 196
	movzx	eax, BYTE PTR M
	cmp	al, 3
	jg	SHORT $LN29@main
	npad	6
$LL28@main:
; Line 198
	movsx	rax, al
	lea	rcx, OFFSET FLAT:addds
	movsd	xmm3, QWORD PTR L[rsi+rax*8]
	movsd	xmm2, QWORD PTR K[rsi+rax*8]
	movq	r9, xmm3
	movsd	xmm1, QWORD PTR j[rsi+rax*8]
	movq	r8, xmm2
	movq	rdx, xmm1
	call	printf
; Line 200
	movzx	eax, BYTE PTR M
	inc	al
	mov	BYTE PTR M, al
	cmp	al, 3
	jle	SHORT $LL28@main
$LN29@main:
; Line 203
	lea	rcx, OFFSET FLAT:line
	call	printf
; Line 23
	call	QWORD PTR __imp_rand
	movsx	ecx, al
	and	ecx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN238@main
	dec	ecx
	or	ecx, -256				; ffffffffffffff00H
	inc	ecx
$LN238@main:
; Line 205
	mov	BYTE PTR m, cl
; Line 23
	call	QWORD PTR __imp_rand
	movsx	edx, al
	and	edx, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN237@main
	dec	edx
	or	edx, -256				; ffffffffffffff00H
	inc	edx
$LN237@main:
; Line 205
	movsx	ecx, BYTE PTR m
	movzx	eax, cl
	mov	BYTE PTR N, dl
	sub	al, dl
; Line 207
	movsx	r8d, dl
	mov	edx, ecx
	movsx	r9d, al
	lea	rcx, OFFSET FLAT:subi
	mov	BYTE PTR n, al
	call	printf
; Line 209
	call	randf
	movss	DWORD PTR O, xmm0
	call	randf
	movss	xmm4, DWORD PTR O
; Line 211
	lea	rcx, OFFSET FLAT:subf
	movaps	xmm1, xmm4
	movss	DWORD PTR o, xmm0
	subss	xmm1, xmm0
	xorps	xmm2, xmm2
	cvtss2sd xmm2, xmm0
	cvtps2pd xmm3, xmm1
	movss	DWORD PTR P, xmm1
	movq	r8, xmm2
	cvtps2pd xmm1, xmm4
	movq	r9, xmm3
	movq	rdx, xmm1
	call	printf
; Line 213
	call	QWORD PTR __imp_rand
	and	eax, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN236@main
	dec	eax
	or	eax, -256				; ffffffffffffff00H
	inc	eax
$LN236@main:
	movzx	ecx, al
	mov	BYTE PTR p, cl
	lea	rcx, QWORD PTR [rcx*2+2]
	call	QWORD PTR __imp_CoTaskMemAlloc
	mov	QWORD PTR Q, rax
	test	rax, rax
; Line 215
	je	$error$314
	movzx	eax, BYTE PTR q
$l2$318:
; Line 217
	cmp	al, BYTE PTR p
	mov	ecx, r14d
	setbe	cl
	cmp	ecx, 1
	jne	SHORT $LN252@main
; Line 220
	call	randc
	movzx	ecx, BYTE PTR q
	movsx	edx, al
	mov	rax, QWORD PTR Q
	mov	WORD PTR [rax+rcx*2], dx
; Line 222
	lea	rcx, OFFSET FLAT:fprintfis
	call	printf
; Line 224
	movzx	eax, BYTE PTR q
	inc	al
	mov	BYTE PTR q, al
; Line 226
	jmp	SHORT $l2$318
$LN252@main:
; Line 229
	lea	rcx, OFFSET FLAT:line
	call	printf
$LL34@main:
; Line 231
	call	randi
	movsx	rcx, BYTE PTR R
	mov	DWORD PTR r[rsi+rcx*4], eax
	call	randi
	movsx	rdx, BYTE PTR R
	mov	DWORD PTR S[rsi+rdx*4], eax
	inc	dl
	mov	BYTE PTR R, dl
	cmp	dl, 7
; Line 232
	jle	SHORT $LL34@main
; Line 234
	cmp	BYTE PTR avx512f, r14b
	je	SHORT $LN66@main
	vpmovsxdq zmm0, YMMWORD PTR r
	vpmovsxdq zmm1, YMMWORD PTR S
	vpsubq	zmm1, zmm0, zmm1
	vmovdqa32 ZMMWORD PTR s, zmm1
	vzeroupper
	jmp	$LN254@main
$LN66@main:
; Line 235
	cmp	BYTE PTR avx2, r14b
	je	SHORT $LN119@main
	xor	al, al
	xor	dl, dl
	npad	5
$LL37@main:
; Line 237
	movsx	eax, al
	shl	eax, 2
	movsxd	rcx, eax
	lea	eax, DWORD PTR [rdx+1]
	movzx	edx, al
	vpmovsxdq ymm1, XMMWORD PTR S[rsi+rcx*4]
	vpmovsxdq ymm0, XMMWORD PTR r[rsi+rcx*4]
	vpsubq	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR s[rsi+rcx*8], ymm2
	cmp	al, 1
	jle	SHORT $LL37@main
	mov	BYTE PTR T, al
; Line 238
	vzeroupper
	jmp	SHORT $LN254@main
$LN119@main:
; Line 241
	movzx	edx, BYTE PTR t
	cmp	dl, 3
	jg	SHORT $LN254@main
	npad	5
$LL38@main:
; Line 243
	movsx	eax, dl
; Line 245
	inc	dl
	add	eax, eax
	movsxd	rcx, eax
	pmovsxdq xmm2, QWORD PTR r[rsi+rcx*4]
	pmovsxdq xmm1, QWORD PTR S[rsi+rcx*4]
	psubq	xmm2, xmm1
	movdqu	XMMWORD PTR s[rsi+rcx*8], xmm2
	cmp	dl, 3
	jle	SHORT $LL38@main
	mov	BYTE PTR t, dl
$LN254@main:
	movzx	edx, BYTE PTR U
	npad	3
$l3$319:
; Line 249
	cmp	dl, 7
	mov	ecx, r14d
	setle	cl
	cmp	ecx, 1
	jne	SHORT $LN253@main
; Line 252
	movsx	rdx, dl
	lea	rcx, OFFSET FLAT:sublls
	mov	r9, QWORD PTR s[rsi+rdx*8]
	mov	r8d, DWORD PTR S[rsi+rdx*4]
	mov	edx, DWORD PTR r[rsi+rdx*4]
	call	printf
; Line 254
	movzx	edx, BYTE PTR U
	inc	dl
	mov	BYTE PTR U, dl
; Line 256
	jmp	SHORT $l3$319
$LN253@main:
; Line 259
	lea	rcx, OFFSET FLAT:line
	call	printf
$LL44@main:
; Line 263
	call	randd
	movsx	rax, BYTE PTR u
	movsd	QWORD PTR V[rsi+rax*8], xmm0
	call	randd
	movsx	rcx, BYTE PTR u
	movsd	QWORD PTR v[rsi+rcx*8], xmm0
	inc	cl
	mov	BYTE PTR u, cl
	cmp	cl, 3
; Line 265
	jle	SHORT $LL44@main
; Line 267
	cmp	BYTE PTR avx2, r14b
	je	SHORT $LN71@main
	vmovupd	ymm0, YMMWORD PTR V
	vsubpd	ymm1, ymm0, YMMWORD PTR v
	vmovapd	YMMWORD PTR W, ymm1
	vzeroupper
	jmp	SHORT $LN123@main
$LN71@main:
	xor	al, al
	xor	dl, dl
	npad	11
$LL47@main:
; Line 268
	movsx	eax, al
	add	eax, eax
	movsxd	rcx, eax
	lea	eax, DWORD PTR [rdx+1]
	movzx	edx, al
	movups	xmm0, XMMWORD PTR v[rsi+rcx*8]
	addpd	xmm0, XMMWORD PTR V[rsi+rcx*8]
	movups	XMMWORD PTR W[rsi+rcx*8], xmm0
	cmp	al, 1
	jle	SHORT $LL47@main
	mov	BYTE PTR w, al
$LN123@main:
; Line 270
	movzx	eax, BYTE PTR X
	cmp	al, 3
	jg	SHORT $LN49@main
	npad	4
$LL48@main:
; Line 272
	movsx	rax, al
	lea	rcx, OFFSET FLAT:subds
	movsd	xmm3, QWORD PTR W[rsi+rax*8]
	movsd	xmm2, QWORD PTR v[rsi+rax*8]
	movq	r9, xmm3
	movsd	xmm1, QWORD PTR V[rsi+rax*8]
	movq	r8, xmm2
	movq	rdx, xmm1
	call	printf
; Line 274
	movzx	eax, BYTE PTR X
	inc	al
	mov	BYTE PTR X, al
	cmp	al, 3
	jle	SHORT $LL48@main
$LN49@main:
; Line 277
	lea	rcx, OFFSET FLAT:line
	call	printf
; Line 279
	mov	rcx, QWORD PTR e
	call	QWORD PTR __imp_free
; Line 281
	mov	rcx, QWORD PTR Q
	call	QWORD PTR __imp_CoTaskMemFree
; Line 283
	xor	ecx, ecx
	call	QWORD PTR __imp_ExitProcess
	int	3
$error$314:
; Line 285
	mov	ecx, 1
	call	QWORD PTR __imp_ExitProcess
	int	3
$LN311@main:
main	ENDP
_TEXT	ENDS
END
