
section		.text
	global	_ft_memcpy

loop:											;while (r8 != 0)
	mov		al,	 byte [rsi + r9]
	mov		byte [rdi + r9], al					;dst[r9] = src[r9]
	sub		r8, 1								;r8--
	add		r9, 1								;r9++
	cmp		r8, 0
	jne		loop
	mov		rax, rdi
	ret

_ft_memcpy:
	mov		r8, rdx								;number of char to copy
	sub		r9, r9								;cursor
	cmp		r8, 0
	jne		loop
	mov		rax, rdi
	ret
