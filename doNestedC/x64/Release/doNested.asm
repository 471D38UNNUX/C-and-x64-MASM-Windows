; Listing generated by Microsoft (R) Optimizing Compiler Version 19.42.34435.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	B
PUBLIC	line
PUBLIC	fprintfi
PUBLIC	a
PUBLIC	A
EXTRN	__imp_ExitProcess:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__security_check_cookie:PROC
B	DB	01H DUP (?)
a	DB	01H DUP (?)
A	DB	01H DUP (?)
_BSS	ENDS
line	DW	0aH
	ORG $+2
fprintfi DD	0643325H
_DATA	ENDS
PUBLIC	main
PUBLIC	printf
PUBLIC	_vfprintf_l
PUBLIC	__local_stdio_printf_options
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN16@main
	DD	imagerel $LN16@main+113
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
$unwind$main DQ	00000420400010401r		; 3.58617e-310
xdata	ENDS
END
