HeapAlloc		proto
GetProcessHeap	proto
HeapFree		proto
printf			proto
ExitProcess		proto

.data
	fprintfd	dq 438911775781	; "%4.1f", 0, 0, 0, 0
	line		dw 10			; equ 10, 0 in byte
	a			dq ?
	b			dq 0.1

.code
mainCRTStartup	proc
	sub			rsp, 40

	call		GetProcessHeap

	mov			rcx, rax
	mov			dl, 8
	mov			r8d, 16 * 8
	call		HeapAlloc

	mov			a, rax

	test		rax, rax
	jz			error

	mov			rbp, a
	mov			ecx, 4
row:
	mov			sil, cl
	mov			cl, 4
col:	
	mov			bl, cl

	lea			rcx, fprintfd
	mov			rdx, [rbp + rdi]
	call		printf

	inc			dil
	mov			ecx, ebx
	
	cvtsi2sd	xmm0, rdi
	movq		xmm1, b
	mulsd		xmm0, xmm1
	movq		rax, xmm0
	mov			[rbp + rdi], rax

	loop		col

	lea			rcx, line
	call		printf

	mov			ecx, esi

	loop		row

	call		GetProcessHeap

	mov			rcx, rax
	xor			edx, edx
	mov			r8, a
	call		HeapFree

	xor			ecx, ecx
	call		ExitProcess
error:
	mov			ecx, 1
	call		ExitProcess
mainCRTStartup	endp
end
