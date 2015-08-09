section		.text
	global	_ft_isprint

ok:	
	mov		rax, 1
	ret
print2:
	cmp		al, '~'
	jle		ok
	ret

print1:
	cmp		al, ' '
	jge		print2
	ret

_ft_isprint:
	mov		al, dil
	call	print1
	cmp		rax, 1
	jne		false
	ret

false:
	mov		rax, 0
	ret