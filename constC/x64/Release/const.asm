; Listing generated by Microsoft (R) Optimizing Compiler Version 19.42.34433.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	pi
PUBLIC	fprintfi
EXTRN	__imp_ExitProcess:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__security_check_cookie:PROC
COMM	A:QWORD
_DATA	ENDS
fprintfi DD	06425H
pi	DQ	04009249249249249r		; 3.14286
CONST	ENDS
PUBLIC	main
PUBLIC	printf
PUBLIC	_vfprintf_l
PUBLIC	__local_stdio_printf_options
PUBLIC	__real@4009249249249249
EXTRN	_fltused:DWORD
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN5
	DD	imagerel $LN5+46
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN6@printf
	DD	imagerel $LN6@printf+85
	DD	imagerel $unwind$printf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN4@vfprintf_l
	DD	imagerel $LN4@vfprintf_l+68
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT __real@4009249249249249
CONST	SEGMENT
__real@4009249249249249 DQ 04009249249249249r	; 3.14286
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DQ 00009640f00060f01r	; 1.30596e-308
	DQ	0700b520f0008340fr		; 5.30195e+231
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DQ 07017521b00041b01r		; 9.05146e+231
	DD	030156016H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
; Function compile flags: /Ogtpy
;	COMDAT main
_TEXT	SEGMENT
main	PROC						; COMDAT
; File D:\Assembly Project\C\constC\const.c
; Line 12
$LN5:
	sub	rsp, 40					; 00000028H
; Line 13
	movsd	xmm0, QWORD PTR __real@4009249249249249
; Line 17
	lea	rcx, OFFSET FLAT:fprintfi
	mov	edx, 1
	movsd	QWORD PTR A, xmm0
	call	printf
; Line 20
	xor	ecx, ecx
	call	QWORD PTR __imp_ExitProcess
	int	3
$LN4@main:
main	ENDP
_TEXT	ENDS
END
