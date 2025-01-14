printf		proto
ExitProcess	proto

.data
	fprintfi	dd 25637	; equ "%d", 0, 0 in byte
	true		equ 1
	false		equ 0
	result		dq ?
	pi			= result
	a			dq ?

.code
mainCRTStartup	proc
	sub		rsp, 40

	mov		eax, 22
	movq	xmm0, rax
	mov		eax, 7
	movq	xmm1, rax
	divsd	xmm0, xmm1
	movq	result, xmm0
	mov		rax, result
	mov		a, rax
	mov		rcx, pi

	cmp		rax, rcx
	je		equal
	jne		nequal
equal:
	lea		rcx, fprintfi
	mov		edx, true
	call	printf

	jmp		done
nequal:
	lea		rcx, fprintfi
	mov		edx, false
	call	printf

	jmp		done
done:
	xor		ecx, ecx
	call	ExitProcess
mainCRTStartup	endp
end