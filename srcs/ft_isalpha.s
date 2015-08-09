section		.text
	global	_ft_isalpha

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

max2:
	cmp		al, 'Z'
	jle		ok
	ret

max1:
	cmp		al, 'A'
	jge		max2
	ret

_ft_isalpha:
	mov		al, dil
	call	min1
	call	max1
	cmp		rax, 1
	jne		false
	ret

false:
	mov		rax, 0
	ret