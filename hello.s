	.file	"hello.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$78, -16(%rbp)
	movl	$40, -12(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7-20170407-0ubuntu2) 7.0.1 20170407 (experimental) [trunk revision 246759]"
	.section	.note.GNU-stack,"",@progbits
