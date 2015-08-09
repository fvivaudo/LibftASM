
section		.data
	newline:	db  10, 0					;10 = '\n'; char *newline = "\n"

section		.text
	global	_ft_puts

strlen:
	add		r8, 1
	cmp		byte [rdi + r8], 0
	jne		strlen
	ret

_ft_puts:
	mov		r8, -1							; i
	call		strlen
	mov			rax, 0x2000004
	mov			rdx, r8
	lea			rsi, [rel rdi]
	mov			rdi, 1
	syscall

	mov			rax, 0x2000004
	mov			rdx, 1
	lea			rsi, [rel newline]
	mov			rdi, 1
	syscall

	mov			rax, 10
	ret
