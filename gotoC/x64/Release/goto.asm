; Listing generated by Microsoft (R) Optimizing Compiler Version 19.42.34433.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	A
EXTRN	__imp_ExitProcess:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__security_check_cookie:PROC
A	DB	01H DUP (?)
_BSS	ENDS
PUBLIC	main
PUBLIC	printf
PUBLIC	_vfprintf_l
PUBLIC	__local_stdio_printf_options
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN13
	DD	imagerel $LN13+67
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
$SG4294967289 DB '%d', 00H
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
$unwind$main DD	010401H
	DD	04204H
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
;	COMDAT main
_TEXT	SEGMENT
main	PROC						; COMDAT
; File D:\Assembly Project\C\gotoC\goto.c
; Line 7
$LN13:
	sub	rsp, 40					; 00000028H
	movzx	eax, BYTE PTR A
	npad	5
$loop$14:
; Line 9
	movsx	edx, al
	lea	rcx, OFFSET FLAT:$SG4294967289
	call	printf
; Line 11
	movzx	eax, BYTE PTR A
; Line 13
	xor	edx, edx
	inc	al
	cmp	al, 9
	mov	BYTE PTR A, al
	setle	dl
	cmp	edx, 1
	je	SHORT $loop$14
; Line 21
	xor	ecx, ecx
	call	QWORD PTR __imp_ExitProcess
	int	3
$LN12@main:
main	ENDP
_TEXT	ENDS
END
