section		.text
	global	_ft_isdigit

ok:	
	mov		rax, 1
	ret

dig2:
	cmp		al, '9'
	jle		ok
	ret

dig1:
	cmp		al, '0'
	jge		dig2
	ret

_ft_isdigit:
	mov		al, dil
	call	dig1
	cmp		rax, 1
	jne		false
	ret

false:
	mov		rax, 0
	ret