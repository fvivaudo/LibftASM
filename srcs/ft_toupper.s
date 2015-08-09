section		.text
	global	_ft_toupper

ok:	
	mov		rax, 1
	ret

min2:
	cmp		al, 'z'
	jle		ok
	ret

min1:
	cmp		al, 'a'
	jge		min2
	ret

_ft_toupper:
	mov		al, dil
	call	min1
	cmp		rax, 1
	jne		false
	sub		rdi, 32
	mov		rax, rdi
	ret

false:
	mov		rax, rdi
	ret