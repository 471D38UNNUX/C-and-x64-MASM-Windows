; Listing generated by Microsoft (R) Optimizing Compiler Version 19.42.34433.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	b
PUBLIC	B
PUBLIC	a
EXTRN	__imp__time64:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp_rand:PROC
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp_srand:PROC
EXTRN	__security_check_cookie:PROC
a	DB	01H DUP (?)
COMM	C:BYTE:010H
COMM	E:BYTE:010H
COMM	A:BYTE:010H
_DATA	ENDS
b	DB	03H
B	DB	03H
_DATA	ENDS
PUBLIC	main
PUBLIC	printf
PUBLIC	_vfprintf_l
PUBLIC	__local_stdio_printf_options
EXTRN	__ImageBase:BYTE
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN46
	DD	imagerel $LN46+374
	DD	imagerel $unwind$main
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
	ORG $+2
$SG4294967284 DB '%d', 00H
	ORG $+1
$SG4294967285 DB '%p', 0aH, 00H
$SG4294967286 DB 0aH, 00H
	ORG $+2
$SG4294967287 DB '%3d', 00H
$SG4294967288 DB 0aH, 00H
	ORG $+2
$SG4294967289 DB '%3d', 00H
_DATA	ENDS
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
$unwind$main DD	020601H
	DD	030023206H
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
;	COMDAT main
_TEXT	SEGMENT
tv230 = 48
tv232 = 48
main	PROC						; COMDAT
; File D:\Assembly Project\C\PostfixC\Postfix.c
; Line 17
$LN46:
	push	rbx
	sub	rsp, 32					; 00000020H
	lea	rbx, OFFSET FLAT:__ImageBase
	npad	3
$LL4@main:
	movzx	eax, BYTE PTR a
	npad	9
$LL7@main:
; Line 22
	movsx	rcx, al
; Line 24
	movsx	edx, al
	mov	BYTE PTR A[rcx+rbx], al
	lea	rcx, OFFSET FLAT:$SG4294967289
	call	printf
; Line 26
	movzx	eax, BYTE PTR a
	inc	al
; Line 27
	sub	BYTE PTR B, 1
	mov	BYTE PTR a, al
; Line 28
	jns	SHORT $LL7@main
; Line 29
	lea	rcx, OFFSET FLAT:$SG4294967288
	call	printf
; Line 33
	sub	BYTE PTR b, 1
	mov	BYTE PTR B, 3
; Line 34
	jns	SHORT $LL4@main
; Line 36
	xor	r8b, r8b
; Line 38
	xor	al, al
	mov	BYTE PTR a, r8b
	mov	BYTE PTR b, al
$LL10@main:
; Line 40
	mov	BYTE PTR B, 0
	xor	dl, dl
	npad	7
$LL13@main:
; Line 42
	movsx	rcx, al
	movsx	rax, dl
	lea	rdx, QWORD PTR [rax+rcx*4]
	mov	BYTE PTR C[rdx+rbx], r8b
; Line 44
	lea	rcx, OFFSET FLAT:$SG4294967287
	movsx	edx, r8b
	call	printf
; Line 46
	movzx	r8d, BYTE PTR a
	movzx	edx, BYTE PTR B
	inc	r8b
	inc	dl
	mov	BYTE PTR a, r8b
	mov	BYTE PTR B, dl
	cmp	dl, 3
	jg	SHORT $LN38@main
; Line 40
	movzx	eax, BYTE PTR b
	jmp	SHORT $LL13@main
$LN38@main:
; Line 48
	lea	rcx, OFFSET FLAT:$SG4294967286
	call	printf
	movzx	eax, BYTE PTR b
	inc	al
; Line 50
	mov	BYTE PTR B, 0
	mov	BYTE PTR b, al
	cmp	al, 3
	jg	SHORT $LN39@main
; Line 38
	movzx	r8d, BYTE PTR a
	jmp	$LL10@main
$LN39@main:
; Line 53
	lea	rdx, OFFSET FLAT:E
; Line 54
	lea	rcx, OFFSET FLAT:$SG4294967285
	mov	QWORD PTR E+8, rdx
	call	printf
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt\time.h
; Line 552
	xor	ecx, ecx
	call	QWORD PTR __imp__time64
; File D:\Assembly Project\C\PostfixC\Postfix.c
; Line 56
	mov	ecx, eax
	call	QWORD PTR __imp_srand
; Line 58
	call	QWORD PTR __imp_rand
	and	eax, -2147483393			; ffffffff800000ffH
	jge	SHORT $LN31@main
	dec	eax
	or	eax, -256				; ffffffffffffff00H
	inc	eax
$LN31@main:
	mov	rcx, QWORD PTR E+8
; Line 59
	movsx	edx, al
	mov	BYTE PTR [rcx], al
	lea	rcx, OFFSET FLAT:$SG4294967284
	call	printf
; Line 61
	xor	eax, eax
; Line 62
	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
main	ENDP
_TEXT	ENDS
END
