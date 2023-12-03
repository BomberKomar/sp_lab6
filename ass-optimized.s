	.file	"main.c"
	.text
	.globl	reconstruct
	.type	reconstruct, @function
reconstruct:
.LFB50:
	.cfi_startproc
	endbr64
	subl	$1, %esi
	leal	-1(%rdx), %r10d
	movl	$0, %r11d
	jmp	.L11
.L4:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	addl	%edx, %r9d
	movslq	%r9d, %r9
	addq	%rbp, %r9
	cmpl	-4(%rdi,%r9,4), %eax
	jg	.L21
	cmpl	(%rdi,%r9,4), %eax
	je	.L22
	movl	$2, (%rcx,%r11,4)
	subl	$1, %r10d
	movl	%ebx, %esi
.L5:
	addq	$1, %r11
	testl	%esi, %esi
	jle	.L3
	testl	%r10d, %r10d
	jle	.L3
.L14:
	leal	-1(%rsi), %ebx
	movl	%ebx, %r9d
	imull	%edx, %r9d
	movslq	%r10d, %rbp
	movslq	%r9d, %rax
	addq	%rbp, %rax
	movl	(%rdi,%rax,4), %r13d
	movl	-4(%rdi,%rax,4), %eax
	cmpl	%eax, %r13d
	jge	.L4
	leal	(%r9,%rdx), %r12d
	movslq	%r12d, %r12
	addq	%rbp, %r12
	cmpl	-4(%rdi,%r12,4), %r13d
	jge	.L4
	movl	$3, (%rcx,%r11,4)
	movl	%ebx, %esi
	jmp	.L5
.L21:
	movl	$1, (%rcx,%r11,4)
	subl	$1, %r10d
	jmp	.L5
.L22:
	movl	$0, (%rcx,%r11,4)
	addl	$1, %r8d
	subl	$1, %r10d
	movl	%ebx, %esi
	jmp	.L5
.L3:
	testl	%esi, %esi
	jg	.L23
	testl	%r10d, %r10d
	jg	.L24
	movl	%r8d, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	movl	$3, (%rcx,%r11,4)
	subl	$1, %esi
	jmp	.L5
.L24:
	movl	$1, (%rcx,%r11,4)
	subl	$1, %r10d
	jmp	.L5
.L12:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	testl	%esi, %esi
	jg	.L25
	testl	%r10d, %r10d
	jg	.L26
	movl	%r8d, %eax
	ret
.L25:
	movl	$3, (%rcx,%r11,4)
	subl	$1, %esi
.L17:
	addq	$1, %r11
.L11:
	testl	%esi, %esi
	jle	.L12
	testl	%r10d, %r10d
	jle	.L12
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	jmp	.L14
.L26:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	movl	$1, (%rcx,%r11,4)
	subl	$1, %r10d
	jmp	.L17
	.cfi_endproc
.LFE50:
	.size	reconstruct, .-reconstruct
	.globl	min_3
	.type	min_3, @function
min_3:
.LFB51:
	.cfi_startproc
	endbr64
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	cmpl	%edi, %esi
	movl	%edi, %eax
	cmovle	%esi, %eax
	ret
	.cfi_endproc
.LFE51:
	.size	min_3, .-min_3
	.globl	strip
	.type	strip, @function
strip:
.LFB52:
	.cfi_startproc
	endbr64
	movq	%rdi, %rdx
	movq	$-1, %rcx
	movl	$0, %eax
	repnz scasb
	notq	%rcx
	leaq	-2(%rdx,%rcx), %rax
	cmpb	$10, (%rax)
	je	.L30
.L28:
	ret
.L30:
	movb	$0, (%rax)
	jmp	.L28
	.cfi_endproc
.LFE52:
	.size	strip, .-strip
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"  "
.LC1:
	.string	"%d "
	.text
	.globl	print_dp
	.type	print_dp, @function
print_dp:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, %ebp
	movl	%esi, %ebx
	movl	%esi, 12(%rsp)
	movq	%rdx, %r14
	movq	%rcx, %r12
	movq	%r8, %r15
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	testl	%ebx, %ebx
	jle	.L32
	movl	%ebx, %eax
	movq	%r12, %rbx
	leal	-1(%rax), %eax
	leaq	4(%r12,%rax,4), %r13
	leaq	.LC1(%rip), %r12
.L33:
	movl	(%rbx), %edx
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%r13, %rbx
	jne	.L33
.L32:
	movl	$10, %edi
	call	putchar@PLT
	testl	%ebp, %ebp
	jle	.L31
	movq	%r14, %r13
	movl	12(%rsp), %ecx
	movl	%ecx, 24(%rsp)
	leal	-1(%rbp), %eax
	leaq	4(%r14,%rax,4), %rax
	movq	%rax, 16(%rsp)
	movl	$0, %r14d
	leal	-1(%rcx), %eax
	movl	%eax, 28(%rsp)
	jmp	.L37
.L35:
	movl	$10, %edi
	call	putchar@PLT
	addq	$4, %r13
	addl	24(%rsp), %r14d
	cmpq	16(%rsp), %r13
	je	.L31
.L37:
	movl	0(%r13), %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	cmpl	$0, 12(%rsp)
	jle	.L35
	movslq	%r14d, %rdx
	leaq	(%r15,%rdx,4), %rbx
	movl	28(%rsp), %eax
	addq	%rdx, %rax
	leaq	4(%r15,%rax,4), %r12
	leaq	.LC1(%rip), %rbp
.L36:
	movl	(%rbx), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%r12, %rbx
	jne	.L36
	jmp	.L35
.L31:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	print_dp, .-print_dp
	.section	.rodata.str1.1
.LC2:
	.string	"r"
	.text
	.globl	line_count
	.type	line_count, @function
line_count:
.LFB54:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	.LC2(%rip), %rsi
	call	fopen@PLT
	testq	%rax, %rax
	je	.L48
	movq	%rax, %rbp
	movl	$0, %ebx
	movl	$1, %r12d
.L44:
	movq	%rbp, %rdi
	call	fgetc@PLT
	cmpl	$-1, %eax
	je	.L50
	testl	%ebx, %ebx
	cmove	%r12d, %ebx
	cmpb	$10, %al
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %ebx
	jmp	.L44
.L50:
	movq	%rbp, %rdi
	call	fclose@PLT
.L42:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L48:
	.cfi_restore_state
	movl	$-1, %ebx
	jmp	.L42
	.cfi_endproc
.LFE54:
	.size	line_count, .-line_count
	.globl	line_index
	.type	line_index, @function
line_index:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jle	.L54
	movq	%rdi, %r12
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movl	$0, %ebp
.L53:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L51
	addl	$1, %ebp
	subq	$-128, %rbx
	cmpl	%ebp, %r13d
	jne	.L53
	movl	$-1, %ebp
.L51:
	movl	%ebp, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L54:
	.cfi_restore_state
	movl	$-1, %ebp
	jmp	.L51
	.cfi_endproc
.LFE55:
	.size	line_index, .-line_index
	.globl	make_map
	.type	make_map, @function
make_map:
.LFB56:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, %r15
	movq	%rsi, %r14
	movq	%rcx, 8(%rsp)
	movq	%r8, %r13
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	movq	%rdx, %r12
	movl	$0, %ebx
	leaq	16(%rsp), %rbp
	jmp	.L58
.L69:
	movl	%eax, (%r12)
.L60:
	addq	$4, %r12
.L58:
	movq	%r15, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L68
	movq	%rbp, %rdi
	call	strip
	movl	%ebx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	line_index
	testl	%eax, %eax
	jns	.L69
	movl	%ebx, (%r12)
	movslq	%ebx, %rdi
	salq	$7, %rdi
	addq	%r13, %rdi
	movq	%rbp, %rsi
	call	strcpy@PLT
	addl	$1, %ebx
	jmp	.L60
.L68:
	movq	8(%rsp), %r12
	leaq	16(%rsp), %rbp
	jmp	.L62
.L71:
	movl	%eax, (%r12)
.L64:
	addq	$4, %r12
.L62:
	movq	%r14, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L70
	movq	%rbp, %rdi
	call	strip
	movl	%ebx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	line_index
	testl	%eax, %eax
	jns	.L71
	movl	%ebx, (%r12)
	movslq	%ebx, %rdi
	salq	$7, %rdi
	addq	%r13, %rdi
	movq	%rbp, %rsi
	call	strcpy@PLT
	addl	$1, %ebx
	jmp	.L64
.L70:
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L72
	movl	%ebx, %eax
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L72:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE56:
	.size	make_map, .-make_map
	.globl	LevenshteinDistance
	.type	LevenshteinDistance, @function
LevenshteinDistance:
.LFB57:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %r12d
	movl	%ecx, %ebp
	movq	%r8, %rbx
	cmpl	$1, %ecx
	jle	.L74
	leal	-2(%rcx), %edx
	addq	$2, %rdx
	movl	$1, %eax
.L75:
	movl	%eax, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L75
.L74:
	cmpl	$1, %r12d
	jle	.L76
	movslq	%ebp, %rcx
	salq	$2, %rcx
	leaq	(%rbx,%rcx), %rdx
	movl	$1, %eax
.L77:
	movl	%eax, (%rdx)
	movl	%eax, %r8d
	addl	$1, %eax
	addq	%rcx, %rdx
	cmpl	%eax, %r12d
	jne	.L77
	leaq	4(%rdi), %rdx
	movl	%ebp, %r13d
	leal	-1(%r8), %eax
	leaq	8(%rdi,%rax,4), %r14
	movl	$0, %r8d
	leal	-2(%rbp), %ecx
	addq	$2, %rcx
	jmp	.L78
.L81:
	addq	$4, %rdx
	addl	%r13d, %r8d
	cmpq	%r14, %rdx
	je	.L76
.L78:
	cmpl	$1, %ebp
	jle	.L81
	movslq	%r8d, %rax
	leaq	(%rbx,%rax,4), %r11
	leal	(%r8,%r13), %eax
	cltq
	leaq	(%rbx,%rax,4), %r10
	movl	$1, %eax
.L79:
	movl	(%rsi,%rax,4), %edi
	cmpl	%edi, (%rdx)
	setne	%r9b
	movzbl	%r9b, %r9d
	addl	-4(%r11,%rax,4), %r9d
	movl	-4(%r10,%rax,4), %edi
	addl	$1, %edi
	movl	(%r11,%rax,4), %r15d
	addl	$1, %r15d
	cmpl	%r15d, %edi
	cmovg	%r15d, %edi
	cmpl	%edi, %r9d
	cmovle	%r9d, %edi
	movl	%edi, (%r10,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L79
	jmp	.L81
.L76:
	imull	%r12d, %ebp
	movslq	%ebp, %rax
	movl	-4(%rbx,%rax,4), %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	LevenshteinDistance, .-LevenshteinDistance
	.section	.rodata.str1.1
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
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-32768(%rsp), %r11
	.cfi_def_cfa 11, 32824
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$1080, %rsp
	.cfi_def_cfa_offset 33904
	movq	%rdi, %r13
	movq	%rsi, %r12
	movq	%fs:40, %rax
	movq	%rax, 33832(%rsp)
	xorl	%eax, %eax
	call	line_count
	movl	%eax, %ebx
	movq	%r12, %rdi
	call	line_count
	testl	%ebx, %ebx
	js	.L106
	movl	%eax, %ebp
	testl	%eax, %eax
	js	.L106
	cmpl	$128, %ebx
	jg	.L107
	cmpl	$128, %eax
	jg	.L107
	leaq	.LC2(%rip), %rsi
	movq	%r13, %rdi
	call	fopen@PLT
	movq	%rax, %r15
	movq	%rax, 16(%rsp)
	leaq	.LC2(%rip), %rsi
	movq	%r12, %rdi
	call	fopen@PLT
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
	leaq	544(%rsp), %rcx
	leaq	32(%rsp), %rdx
	leaq	1056(%rsp), %r8
	movq	%r15, %rdi
	call	make_map
	movl	%ebx, %edi
	imull	%ebp, %edi
	movslq	%edi, %rdi
	salq	$2, %rdi
	call	malloc@PLT
	movq	%rax, %r14
	testl	%ebx, %ebx
	jle	.L92
	movl	%ebp, %edi
	movl	$0, %esi
	movl	$0, %ecx
	leal	-1(%rbp), %r9d
	leaq	4(%rax), %r8
	jmp	.L93
.L106:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L86
.L107:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L86
.L95:
	movslq	%esi, %rdx
	leaq	(%r14,%rdx,4), %rax
	addq	%r9, %rdx
	leaq	(%r8,%rdx,4), %rdx
.L94:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L94
.L96:
	addl	$1, %ecx
	addl	%edi, %esi
	cmpl	%ecx, %ebx
	je	.L92
.L93:
	testl	%ebp, %ebp
	jg	.L95
	jmp	.L96
.L92:
	leaq	544(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movq	%r14, %r8
	movl	%ebp, %ecx
	movl	%ebx, %edx
	call	LevenshteinDistance
	movl	%eax, %r12d
	movslq	%eax, %rdi
	salq	$2, %rdi
	call	malloc@PLT
	movq	%rax, %r13
	testl	%r12d, %r12d
	jle	.L97
	leal	-1(%r12), %edx
	leaq	4(%rax,%rdx,4), %rdx
.L98:
	movl	$4, (%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L98
.L97:
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movl	%ebp, %edx
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	reconstruct
	subl	$1, %eax
	js	.L99
	movslq	%eax, %rbx
	movl	$0, %ebp
	movl	$0, %r12d
	leaq	1056(%rsp), %r15
	jmp	.L104
.L112:
	leal	1(%rbp), %eax
	movl	%eax, 8(%rsp)
	leal	2(%rbp), %ecx
	leal	1(%r12), %edx
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	8(%rsp), %ebp
	movslq	%ebp, %rax
	movslq	544(%rsp,%rax,4), %rdx
	salq	$7, %rdx
	addq	%r15, %rdx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.L101:
	subq	$1, %rbx
	testl	%ebx, %ebx
	js	.L99
.L104:
	movl	0(%r13,%rbx,4), %eax
	cmpl	$1, %eax
	je	.L112
	cmpl	$3, %eax
	je	.L113
	cmpl	$2, %eax
	je	.L114
	testl	%eax, %eax
	jne	.L101
	addl	$1, %r12d
	addl	$1, %ebp
	jmp	.L101
.L113:
	leal	1(%r12), %eax
	movl	%eax, 8(%rsp)
	leal	1(%rbp), %ecx
	leal	2(%r12), %edx
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	8(%rsp), %r12d
	movslq	%r12d, %rax
	movslq	32(%rsp,%rax,4), %rdx
	salq	$7, %rdx
	addq	%r15, %rdx
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L101
.L114:
	leal	1(%r12), %eax
	movl	%eax, 8(%rsp)
	leal	1(%rbp), %ecx
	movl	%ecx, 12(%rsp)
	leal	2(%rbp), %ecx
	leal	2(%r12), %edx
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	8(%rsp), %r12d
	movslq	%r12d, %rax
	movslq	32(%rsp,%rax,4), %rdx
	salq	$7, %rdx
	addq	%r15, %rdx
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	12(%rsp), %ebp
	movslq	%ebp, %rax
	movslq	544(%rsp,%rax,4), %rdx
	salq	$7, %rdx
	addq	%r15, %rdx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L101
.L99:
	movl	$10, %edi
	call	putchar@PLT
	movq	%r13, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	movq	16(%rsp), %rdi
	call	fclose@PLT
	movq	24(%rsp), %rdi
	call	fclose@PLT
	movl	$0, %eax
.L86:
	movq	33832(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L115
	addq	$33848, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L115:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE58:
	.size	edit_path, .-edit_path
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"Insufficient/too many arguments."
	.section	.rodata.str1.1
.LC12:
	.string	"Usage: ./diff <file1> <file2>"
.LC15:
	.string	"Executed in %f ms\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB59:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebp
	movq	%rsi, %rbx
	call	clock@PLT
	cmpl	$3, %ebp
	je	.L117
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
.L116:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L117:
	.cfi_restore_state
	movq	%rax, %r12
	movq	16(%rbx), %rsi
	movq	8(%rbx), %rdi
	call	edit_path
	movl	%eax, %edx
	movl	$1, %eax
	testl	%edx, %edx
	js	.L116
	call	clock@PLT
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC13(%rip), %xmm0
	divsd	.LC14(%rip), %xmm0
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	jmp	.L116
	.cfi_endproc
.LFE59:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
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
