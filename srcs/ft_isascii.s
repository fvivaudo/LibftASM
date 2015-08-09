section		.text
	global	_ft_isascii

ok:	
	mov		rax, 1
	ret

min2:
	cmp		al, 127
	jle		ok
	ret

min1:
	cmp		al, 0
	jge		min2
	ret

_ft_isascii:
	mov		al, dil
	call	min1
	cmp		rax, 1
	jne		false
	ret

false:
	mov		rax, 0
	ret