	.file	"sumf.c"
	.text
	.globl	s
	.type	s, @function
s:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$10, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	s, .-s
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
