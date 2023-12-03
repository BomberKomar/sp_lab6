	.file	"main.c"
	.text
	.globl	reconstruct
	.type	reconstruct, @function
reconstruct:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
.L10:
	cmpl	$0, -12(%rbp)
	jle	.L2
	cmpl	$0, -8(%rbp)
	jle	.L2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L3
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$3, (%rax)
	addl	$1, -4(%rbp)
	subl	$1, -12(%rbp)
	jmp	.L4
.L3:
	movl	-12(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L5
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -4(%rbp)
	subl	$1, -8(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L6
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -44(%rbp)
	addl	$1, -4(%rbp)
	subl	$1, -12(%rbp)
	subl	$1, -8(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, (%rax)
	addl	$1, -4(%rbp)
	subl	$1, -12(%rbp)
	subl	$1, -8(%rbp)
	jmp	.L4
.L2:
	cmpl	$0, -12(%rbp)
	jle	.L7
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$3, (%rax)
	addl	$1, -4(%rbp)
	subl	$1, -12(%rbp)
	jmp	.L4
.L7:
	cmpl	$0, -8(%rbp)
	jle	.L12
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -4(%rbp)
	subl	$1, -8(%rbp)
	nop
.L4:
	jmp	.L10
.L12:
	nop
	movl	-44(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	reconstruct, .-reconstruct
	.globl	min_3
	.type	min_3, @function
min_3:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L14
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L14
	movl	-4(%rbp), %eax
	jmp	.L15
.L14:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L16
	movl	-8(%rbp), %eax
	jmp	.L15
.L16:
	movl	-12(%rbp), %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	min_3, .-min_3
	.globl	strip
	.type	strip, @function
strip:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	strip, .-strip
	.section	.rodata
.LC0:
	.string	"  "
.LC1:
	.string	"%d "
	.text
	.globl	print_dp
	.type	print_dp, @function
print_dp:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -12(%rbp)
	jmp	.L21
.L22:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L21:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L22
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -8(%rbp)
	jmp	.L23
.L26:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L24
.L25:
	movl	-8(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L24:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L25
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L23:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L26
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_dp, .-print_dp
	.section	.rodata
.LC2:
	.string	"r"
	.text
	.globl	line_count
	.type	line_count, @function
line_count:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$-1, %eax
	jmp	.L29
.L28:
	movl	$0, -16(%rbp)
	jmp	.L30
.L32:
	cmpl	$0, -16(%rbp)
	jne	.L31
	movl	$1, -16(%rbp)
.L31:
	movl	-12(%rbp), %eax
	cmpb	$10, %al
	jne	.L30
	addl	$1, -16(%rbp)
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L32
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-16(%rbp), %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	line_count, .-line_count
	.globl	line_index
	.type	line_index, @function
line_index:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L34
.L37:
	movl	-4(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L35
	movl	-4(%rbp), %eax
	jmp	.L36
.L35:
	addl	$1, -4(%rbp)
.L34:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L37
	movl	$-1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	line_index, .-line_index
	.globl	make_map
	.type	make_map, @function
make_map:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	jmp	.L39
.L42:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	movl	-152(%rbp), %edx
	movq	-200(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	line_index
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	js	.L40
	movl	-156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L41
.L40:
	movl	-156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movl	-152(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-152(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	addl	$1, -152(%rbp)
.L41:
	addl	$1, -156(%rbp)
.L39:
	movq	-168(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L42
	movl	$0, -156(%rbp)
	jmp	.L43
.L46:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	movl	-152(%rbp), %edx
	movq	-200(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	line_index
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	js	.L44
	movl	-156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L45
.L44:
	movl	-156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movl	-152(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-152(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	addl	$1, -152(%rbp)
.L45:
	addl	$1, -156(%rbp)
.L43:
	movq	-176(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L46
	movl	-152(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	make_map, .-make_map
	.globl	LevenshteinDistance
	.type	LevenshteinDistance, @function
LevenshteinDistance:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L50
.L51:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -28(%rbp)
.L50:
	movl	-28(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L51
	movl	$1, -24(%rbp)
	jmp	.L52
.L53:
	movl	-24(%rbp), %eax
	imull	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
.L52:
	movl	-24(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L53
	movl	$1, -16(%rbp)
	jmp	.L54
.L59:
	movl	$1, -12(%rbp)
	jmp	.L55
.L58:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L56
	movl	$0, -20(%rbp)
	jmp	.L57
.L56:
	movl	$1, -20(%rbp)
.L57:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	cltq
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	-16(%rbp), %esi
	imull	-64(%rbp), %esi
	movslq	%esi, %rdi
	movl	-12(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-72(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	min_3
	movl	%eax, (%rbx)
	addl	$1, -12(%rbp)
.L55:
	movl	-12(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L58
	addl	$1, -16(%rbp)
.L54:
	movl	-16(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L59
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	LevenshteinDistance, .-LevenshteinDistance
	.section	.rodata
.LC3:
	.string	"Error in opening files."
.LC4:
	.string	"Files too big."
.LC5:
	.string	"%da%d\n"
.LC6:
	.string	"> %s\n"
.LC7:
	.string	"%dd%d\n"
.LC8:
	.string	"< %s\n"
.LC9:
	.string	"%dc%d\n"
.LC10:
	.string	"---"
	.text
	.globl	edit_path
	.type	edit_path, @function
edit_path:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-32768(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1136, %rsp
	movq	%rdi, -33896(%rbp)
	movq	%rsi, -33904(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-33896(%rbp), %rax
	movq	%rax, %rdi
	call	line_count
	movl	%eax, -33864(%rbp)
	movq	-33904(%rbp), %rax
	movq	%rax, %rdi
	call	line_count
	movl	%eax, -33860(%rbp)
	cmpl	$0, -33864(%rbp)
	js	.L62
	cmpl	$0, -33860(%rbp)
	jns	.L63
.L62:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L79
.L63:
	cmpl	$128, -33864(%rbp)
	jg	.L65
	cmpl	$128, -33860(%rbp)
	jle	.L66
.L65:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L79
.L66:
	movq	-33896(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -33848(%rbp)
	movq	-33904(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -33840(%rbp)
	leaq	-32784(%rbp), %rdi
	leaq	-33296(%rbp), %rcx
	leaq	-33808(%rbp), %rdx
	movq	-33840(%rbp), %rsi
	movq	-33848(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	make_map
	movl	%eax, -33856(%rbp)
	movl	-33864(%rbp), %eax
	imull	-33860(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -33832(%rbp)
	movl	$0, -33880(%rbp)
	jmp	.L67
.L70:
	movl	$0, -33876(%rbp)
	jmp	.L68
.L69:
	movl	-33880(%rbp), %eax
	imull	-33860(%rbp), %eax
	movslq	%eax, %rdx
	movl	-33876(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-33832(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -33876(%rbp)
.L68:
	movl	-33876(%rbp), %eax
	cmpl	-33860(%rbp), %eax
	jl	.L69
	addl	$1, -33880(%rbp)
.L67:
	movl	-33880(%rbp), %eax
	cmpl	-33864(%rbp), %eax
	jl	.L70
	movq	-33832(%rbp), %rdi
	movl	-33860(%rbp), %ecx
	movl	-33864(%rbp), %edx
	leaq	-33296(%rbp), %rsi
	leaq	-33808(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	LevenshteinDistance
	movl	%eax, -33852(%rbp)
	movl	-33852(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -33824(%rbp)
	movl	$0, -33872(%rbp)
	jmp	.L71
.L72:
	movl	-33872(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-33824(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, (%rax)
	addl	$1, -33872(%rbp)
.L71:
	movl	-33872(%rbp), %eax
	cmpl	-33852(%rbp), %eax
	jl	.L72
	movl	-33852(%rbp), %edi
	movq	-33824(%rbp), %rcx
	movl	-33860(%rbp), %edx
	movl	-33864(%rbp), %esi
	movq	-33832(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	reconstruct
	movl	%eax, -33852(%rbp)
	movl	$0, -33816(%rbp)
	movl	$0, -33812(%rbp)
	movl	-33852(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -33868(%rbp)
	jmp	.L73
.L78:
	movl	-33868(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-33824(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L74
	movl	-33812(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33812(%rbp)
	movl	-33812(%rbp), %eax
	leal	1(%rax), %edx
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-33812(%rbp), %eax
	cltq
	movl	-33296(%rbp,%rax,4), %edx
	leaq	-32784(%rbp), %rax
	movslq	%edx, %rdx
	salq	$7, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L75
.L74:
	movl	-33868(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-33824(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L76
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33816(%rbp)
	movl	-33812(%rbp), %eax
	leal	1(%rax), %edx
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-33816(%rbp), %eax
	cltq
	movl	-33808(%rbp,%rax,4), %edx
	leaq	-32784(%rbp), %rax
	movslq	%edx, %rdx
	salq	$7, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L75
.L76:
	movl	-33868(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-33824(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L77
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33816(%rbp)
	movl	-33812(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33812(%rbp)
	movl	-33812(%rbp), %eax
	leal	1(%rax), %edx
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-33816(%rbp), %eax
	cltq
	movl	-33808(%rbp,%rax,4), %edx
	leaq	-32784(%rbp), %rax
	movslq	%edx, %rdx
	salq	$7, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	-33812(%rbp), %eax
	cltq
	movl	-33296(%rbp,%rax,4), %edx
	leaq	-32784(%rbp), %rax
	movslq	%edx, %rdx
	salq	$7, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L75
.L77:
	movl	-33868(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-33824(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L75
	movl	-33816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33816(%rbp)
	movl	-33812(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -33812(%rbp)
.L75:
	subl	$1, -33868(%rbp)
.L73:
	cmpl	$0, -33868(%rbp)
	jns	.L78
	movl	$10, %edi
	call	putchar@PLT
	movq	-33824(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-33832(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-33848(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-33840(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L79:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	edit_path, .-edit_path
	.section	.rodata
	.align 8
.LC11:
	.string	"Insufficient/too many arguments."
.LC12:
	.string	"Usage: ./diff <file1> <file2>"
.LC15:
	.string	"Executed in %f ms\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	call	clock@PLT
	movq	%rax, -40(%rbp)
	cmpl	$3, -52(%rbp)
	je	.L82
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L83
.L82:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	edit_path
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L84
	movl	$1, %eax
	jmp	.L83
.L84:
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC14(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	1083129856
	.align 8
.LC14:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
