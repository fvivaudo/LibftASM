
section		.text
	global	_ft_bzero

loop:
	dec		rsi					; n--
	mov		byte [rdi+rsi], 0	; str[n] = 0
	cmp		rsi, 0				; n > 0 ?
	ja		loop				; if (n > 0), call loop

_ft_bzero:
	cmp		rsi, 0				;n > 0 ?
	ja		loop				; if (n > 0), call loop
	ret