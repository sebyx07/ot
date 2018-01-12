	.file	"hello.c"
	.section	.rodata
.LC0:
	.string	"%s"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7453010373643565421, %rax
	movq	%rax, -17(%rbp)
	movb	$0, -9(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	cltq
	movzbl	-17(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	cltq
	movb	%dl, -17(%rbp,%rax)
	addl	$1, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cltq
	movzbl	-17(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L3
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7-20170407-0ubuntu2) 7.0.1 20170407 (experimental) [trunk revision 246759]"
	.section	.note.GNU-stack,"",@progbits
