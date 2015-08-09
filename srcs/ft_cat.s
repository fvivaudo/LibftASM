section .bss
	buf: resq 1

section		.text
	global	_ft_cat

end:
	ret

read:							;boucle de lecture
	mov		rax, 0x2000003		;read
	mov		rdi, r8				;int fd
	mov		rdx, 1				;nb char
	syscall

	cmp		rax, 0
	jle		end
 
	mov		rax, 0x2000004		;write
	mov		rdi, 1				;int fd
	mov		rdx, 1				;int size
	syscall

	jmp read

_ft_cat:
	lea		rsi, [rel buf]		;char *buffer (read+write)
	mov		r8, rdi				;stockage du fd
	jmp		read
	ret