	.file	"textFiller.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Enter a word : \0"
.LC1:
	.ascii "%s%*[^\12]\0"
	.align 8
.LC2:
	.ascii "Enter how many letters are gonno be printed : \0"
.LC3:
	.ascii "%d%*[^\12]\0"
.LC4:
	.ascii "Enter the padded letter : \0"
.LC5:
	.ascii " %c\0"
	.align 8
.LC6:
	.ascii "\12The word : %s\12N of letters entered : %d\12The padded letter : %c\12\0"
.LC7:
	.ascii "\12%s\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$160, %rsp
	.seh_stackalloc	160
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-116(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-117(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movzbl	-117(%rbp), %eax
	movsbl	%al, %ecx
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, -4(%rbp)
	jmp	.L6
.L11:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L7
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L8
.L9:
	movzbl	-117(%rbp), %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -8(%rbp)
.L8:
	movl	-116(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L9
	movl	-116(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	jmp	.L10
.L7:
	addl	$1, -4(%rbp)
.L6:
	movl	-116(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L11
.L10:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$160, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
