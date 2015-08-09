
section		.text
	global	_ft_memset

loop:
	dec		rdx					; n--
	mov		byte [rdi+rdx], al	; str[n] = char c
	cmp		rdx, 0				; n > 0 ?
	ja		loop				; if (n > 0), call loop
	mov rax, rdi
	ret

_ft_memset:
	cmp		rdx, 0				;n > 0 ?
	mov		al, sil				; al = char c (en chargeant les 8 derniers bits de rsi)
	ja		loop				; if (n > 0), call loop
	mov		rax, rdi
	ret


