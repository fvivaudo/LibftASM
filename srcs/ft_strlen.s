	
section		.text
	global	_ft_strlen

_ft_strlen:
	sub	rcx, rcx		;rcx = 0
	not	rcx				;rcx = -1 (en inversant tous les bits)
	sub	al, al			;al = 0
	cld					;direction = avant
	repne	scasb		;while (rcx > 0 && rdi[x] != al)

	not	rcx				;inversion des bits
	lea	rax, [rcx - 1]	;transfert du contenu de rcx (- 1) dans rax
	ret