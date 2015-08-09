
section		.text
	global	_ft_strcat

loopi:										;while (dst[i++] != 0);
	add		r8, 1
	cmp		byte [rdi + r8], 0
	jne		loopi

loop:											;while (src[y] != 0)
	mov		al,	 byte [rsi + r9]
	mov		byte [rdi + r8], al					;dst[i] = src[y]
	add		r9, 1								;y++
	add		r8, 1								;i++
	cmp		byte [rsi + r9], 0					;
	jne		loop								;
	mov		byte [rdi + r8], 0					;dst[i] = 0
	ret

_ft_strcat:
	mov		r8, -1								;cursor dest
	sub		r9, r9								;cursor src
	cmp		byte [rsi], 0
	jne		loopi
	ret
