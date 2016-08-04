	.file	"sum1.c"
	.text
	.p2align 4,,15
	.globl	s
	.type	s, @function
s:
.LFB0:
	.cfi_startproc
	movl	$55, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	s, .-s
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
