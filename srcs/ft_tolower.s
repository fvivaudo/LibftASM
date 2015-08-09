section		.text
	global	_ft_tolower

ok:	
	mov		rax, 1
	ret

maj2:
	cmp		al, 'Z'
	jle		ok
	ret

maj1:
	cmp		al, 'A'
	jge		maj2
	ret

_ft_tolower:
	mov		al, dil
	call	maj1
	cmp		rax, 1
	jne		false
	add		rdi, 32
	mov		rax, rdi
	ret

false:
	mov		rax, rdi
	ret