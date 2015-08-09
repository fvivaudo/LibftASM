
section		.text
	global	_ft_strdup
	extern	_malloc

fail_exit:
	mov		rax, 00							
	ret

strlen:										;while (dst[i++] != 0);
	add		r8, 1
	cmp		byte [rdi + r8], 0
	jne		strlen
	ret

write:										;while (src[y] != 0)
	mov		al,	 byte [rdi + r9]
	mov		byte [rsi + r8], al				;dst[i] = src[y]
	add		r9, 1							;y++
	add		r8, 1							;i++
	cmp		byte [rdi + r9], 0
	jne		write
	mov		byte [rsi + r8], 0
	ret

_ft_strdup:
	;test		rdi, rdi					;rdi == 0?
	;jz			fail_exit					;jump if zero
	mov			r8, 0						;size rdi
	call		strlen
	push		rdi							;rdi stocke sur le stack

	mov			rdi, r8						;malloc
	call		_malloc
	test		rax, rax					;rax == 0?
	jz			fail_exit					;jump if zero

	pop			rdi							;recup de rdi
	mov			r8, 0						;reinitialisation des curseurs
	mov			r9, 0
	lea			rsi, [rel rax]				;recup de l adresse malloc
	call		write						;copie de la string
	mov		rax, rsi
	ret
