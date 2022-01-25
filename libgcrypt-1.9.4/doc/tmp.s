	.file	"yat2m.c"
	.text
	.local	verbose
	.comm	verbose,4,4
	.local	quiet
	.comm	quiet,4,4
	.local	debug
	.comm	debug,4,4
	.local	opt_source
	.comm	opt_source,8,8
	.local	opt_release
	.comm	opt_release,8,8
	.local	opt_date
	.comm	opt_date,8,8
	.local	opt_select
	.comm	opt_select,8,8
	.local	opt_include
	.comm	opt_include,8,8
	.local	opt_store
	.comm	opt_store,4,4
	.local	any_error
	.comm	any_error,4,4
	.local	macrolist
	.comm	macrolist,8,8
	.local	variablelist
	.comm	variablelist,8,8
	.local	predefinedmacrolist
	.comm	predefinedmacrolist,8,8
	.local	condition_stack
	.comm	condition_stack,80,32
	.local	condition_stack_idx
	.comm	condition_stack_idx,4,4
	.local	cond_is_active
	.comm	cond_is_active,4,4
	.local	cond_in_verbatim
	.comm	cond_in_verbatim,4,4
	.local	thepage
	.comm	thepage,24,16
	.section	.rodata
.LC0:
	.string	"NAME"
.LC1:
	.string	"SYNOPSIS"
.LC2:
	.string	"DESCRIPTION"
.LC3:
	.string	"RETURN VALUE"
.LC4:
	.string	"EXIT STATUS"
.LC5:
	.string	"ERROR HANDLING"
.LC6:
	.string	"ERRORS"
.LC7:
	.string	"COMMANDS"
.LC8:
	.string	"OPTIONS"
.LC9:
	.string	"USAGE"
.LC10:
	.string	"EXAMPLES"
.LC11:
	.string	"FILES"
.LC12:
	.string	"ENVIRONMENT"
.LC13:
	.string	"DIAGNOSTICS"
.LC14:
	.string	"SECURITY"
.LC15:
	.string	"CONFORMING TO"
.LC16:
	.string	"ASSUAN"
.LC17:
	.string	"NOTES"
.LC18:
	.string	"BUGS"
.LC19:
	.string	"AUTHOR"
.LC20:
	.string	"SEE ALSO"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	standard_sections, @object
	.size	standard_sections, 176
standard_sections:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	0
	.section	.rodata
.LC21:
	.string	"yat2m"
.LC22:
	.string	"%s: "
	.text
	.type	die, @function
die:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	stderr(%rip), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE5:
	.size	die, .-die
	.section	.rodata
.LC23:
	.string	"%s:%d:"
	.text
	.type	err, @function
err:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L5
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L5:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	-216(%rbp), %rax
	movl	$6, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	stderr(%rip), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L6:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
	movl	$1, any_error(%rip)
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	err, .-err
	.type	inf, @function
inf:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L9
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L9:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	stderr(%rip), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	inf, .-inf
	.section	.rodata
.LC24:
	.string	"out of core: %s"
	.text
	.type	xmalloc, @function
xmalloc:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	die
.L12:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	xmalloc, .-xmalloc
	.type	xcalloc, @function
xcalloc:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	die
.L15:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	xcalloc, .-xcalloc
	.type	xrealloc, @function
xrealloc:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	die
.L18:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	xrealloc, .-xrealloc
	.type	xstrdup, @function
xstrdup:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	die
.L21:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	xstrdup, .-xstrdup
	.type	ascii_strupr, @function
ascii_strupr:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L26:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L25
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	addq	$1, -8(%rbp)
.L24:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L26
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ascii_strupr, .-ascii_strupr
	.section	.rodata
.LC25:
	.string	"%04d-%02d-%02d"
	.text
	.globl	isodatestring
	.type	isodatestring, @function
isodatestring:
.LFB13:
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
	movq	opt_date(%rip), %rax
	testq	%rax, %rax
	je	.L29
	movq	opt_date(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L29
	movq	opt_date(%rip), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -24(%rbp)
	jmp	.L30
.L29:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -24(%rbp)
.L30:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L31
	movabsq	$3260394118806716223, %rax
	movq	%rax, buffer.3277(%rip)
	movw	$16191, 8+buffer.3277(%rip)
	movb	$0, 10+buffer.3277(%rip)
	jmp	.L32
.L31:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	gmtime@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1900, %eax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC25(%rip), %rsi
	leaq	buffer.3277(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L32:
	leaq	buffer.3277(%rip), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	isodatestring, .-isodatestring
	.type	add_predefined_macro, @function
add_predefined_macro:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	predefinedmacrolist(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L36
.L39:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L36:
	cmpq	$0, -8(%rbp)
	jne	.L39
	jmp	.L38
.L41:
	nop
.L38:
	cmpq	$0, -8(%rbp)
	jne	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$24, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	xcalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	predefinedmacrolist(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, predefinedmacrolist(%rip)
.L42:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	add_predefined_macro, .-add_predefined_macro
	.type	set_macro, @function
set_macro:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	macrolist(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L44
.L47:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L44:
	cmpq	$0, -8(%rbp)
	jne	.L47
	jmp	.L46
.L50:
	nop
.L46:
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$24, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	xcalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	macrolist(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, macrolist(%rip)
.L49:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -32(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	set_macro, .-set_macro
	.section	.rodata
.LC26:
	.string	""
	.text
	.type	set_variable, @function
set_variable:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L54:
	addq	$1, -8(%rbp)
.L52:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L53
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L53
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L54
.L53:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	leaq	.LC26(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	jmp	.L57
.L58:
	addq	$1, -8(%rbp)
.L57:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L58
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L58
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L56:
	movq	variablelist(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L59
.L62:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L59:
	cmpq	$0, -24(%rbp)
	jne	.L62
	jmp	.L61
.L65:
	nop
.L61:
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L64
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$24, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	xcalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	variablelist(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, variablelist(%rip)
.L64:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	set_variable, .-set_variable
	.type	macro_set_p, @function
macro_set_p:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	macrolist(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L70:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L80
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L67:
	cmpq	$0, -8(%rbp)
	jne	.L70
	jmp	.L69
.L80:
	nop
.L69:
	cmpq	$0, -8(%rbp)
	jne	.L71
	movq	variablelist(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L72
.L74:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L72:
	cmpq	$0, -8(%rbp)
	jne	.L74
	jmp	.L71
.L81:
	nop
.L71:
	cmpq	$0, -8(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L76
.L75:
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L78
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L79
.L78:
	movl	$1, %eax
	jmp	.L77
.L79:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	macro_set_p, .-macro_set_p
	.type	evaluate_conditions, @function
evaluate_conditions:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, cond_is_active(%rip)
	movl	$0, cond_in_verbatim(%rip)
	movl	condition_stack_idx(%rip), %eax
	testl	%eax, %eax
	je	.L88
	movl	$0, -4(%rbp)
	jmp	.L84
.L87:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L85
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	macro_set_p
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%ecx, %eax
	movl	%eax, cond_in_verbatim(%rip)
	jmp	.L86
.L85:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	macro_set_p
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	cmpl	%eax, %ecx
	jne	.L86
	movl	$0, cond_is_active(%rip)
	nop
	jmp	.L88
.L86:
	addl	$1, -4(%rbp)
.L84:
	movl	condition_stack_idx(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L87
.L88:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	evaluate_conditions, .-evaluate_conditions
	.section	.rodata
	.align 8
.LC27:
	.string	"%s:%d: condition nested too deep"
.LC28:
	.string	"manverb"
	.align 8
.LC29:
	.string	"%s:%d: using \"@ifclear manverb\" is not allowed"
	.text
	.type	push_condition, @function
push_condition:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	condition_stack_idx(%rip), %eax
	cmpl	$9, %eax
	jle	.L90
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L89
.L90:
	movq	-24(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L92
	cmpl	$0, -28(%rbp)
	jne	.L93
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L89
.L93:
	movl	$1, -12(%rbp)
.L92:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	xcalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	condition_stack_idx(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, condition_stack_idx(%rip)
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	condition_stack(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rcx,%rax)
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evaluate_conditions
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	push_condition, .-push_condition
	.section	.rodata
.LC30:
	.string	"isset"
.LC31:
	.string	"isclear"
.LC32:
	.string	"%s:%d: unbalanced \"@end %s\""
	.text
	.type	pop_condition, @function
pop_condition:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	condition_stack_idx(%rip), %eax
	testl	%eax, %eax
	jne	.L95
	cmpl	$0, -4(%rbp)
	je	.L96
	leaq	.LC30(%rip), %rax
	jmp	.L97
.L96:
	leaq	.LC31(%rip), %rax
.L97:
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rcx
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L94
.L95:
	movl	condition_stack_idx(%rip), %eax
	subl	$1, %eax
	movl	%eax, condition_stack_idx(%rip)
	movl	condition_stack_idx(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	condition_stack_idx(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	condition_stack(%rip), %rax
	movq	$0, (%rdx,%rax)
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evaluate_conditions
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	pop_condition, .-pop_condition
	.section	.rodata
.LC33:
	.string	"./yat2m.c"
.LC34:
	.string	"!sect->name"
	.text
	.type	get_section_buffer, @function
get_section_buffer:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L100
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
.L100:
	movl	$0, -28(%rbp)
	jmp	.L101
.L104:
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L102
	movq	-24(%rbp), %rax
	jmp	.L103
.L102:
	addl	$1, -28(%rbp)
.L101:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L104
	movl	$0, -28(%rbp)
	jmp	.L105
.L108:
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L116
	addl	$1, -28(%rbp)
.L105:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L108
	jmp	.L107
.L116:
	nop
.L107:
	movq	8+thepage(%rip), %rax
	testq	%rax, %rax
	je	.L109
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L109
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L110
.L109:
	movq	8+thepage(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$20, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L111
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	xcalloc
	movq	%rax, 16+thepage(%rip)
	jmp	.L112
.L111:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16+thepage(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 16+thepage(%rip)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16+thepage(%rip), %rax
	movq	-16(%rbp), %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L112:
	movq	8+thepage(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 8+thepage(%rip)
	movq	-16(%rbp), %rax
	movl	%eax, -28(%rbp)
	jmp	.L113
.L114:
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	addl	$1, -28(%rbp)
.L113:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L114
	movq	16+thepage(%rip), %rax
	movq	-16(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L110:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L115
	leaq	__PRETTY_FUNCTION__.3357(%rip), %rcx
	movl	$629, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	call	__assert_fail@PLT
.L115:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_section_buffer, .-get_section_buffer
	.type	add_content, @function
add_content:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_section_buffer
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	setne	%dl
	cmpl	$0, -52(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L118
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	jmp	.L119
.L118:
	movl	$24, %esi
	movl	$1, %edi
	call	xcalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
.L119:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	add_content, .-add_content
	.section	.rodata
.LC35:
	.string	"starting page '%s'"
.LC36:
	.string	"!thepage.name"
	.text
	.type	start_page, @function
start_page:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	inf
.L121:
	movq	thepage(%rip), %rax
	testq	%rax, %rax
	je	.L122
	leaq	__PRETTY_FUNCTION__.3370(%rip), %rcx
	movl	$676, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC36(%rip), %rdi
	call	__assert_fail@PLT
.L122:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, thepage(%rip)
	movq	$0, 8+thepage(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	start_page, .-start_page
	.section	.rodata
	.align 8
.LC37:
	.string	".\\\" Created from Texinfo source by yat2m 1.0\n"
	.align 8
.LC38:
	.string	"no section name in man page '%s'"
.LC39:
	.string	".TH %s %s %s \"%s\" \"%s\"\n"
	.text
	.type	write_th, @function
write_th:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	leaq	.LC37(%rip), %rdi
	call	fwrite@PLT
	movq	thepage(%rip), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, %rdi
	call	ascii_strupr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L124
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L125
.L124:
	movq	thepage(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	err
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$-1, %eax
	jmp	.L126
.L125:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	opt_source(%rip), %rbx
	movq	opt_release(%rip), %r12
	call	isodatestring
	movq	%rax, %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rsi, %r8
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L126:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	write_th, .-write_th
	.section	.rodata
.LC40:
	.string	".RS\n"
.LC41:
	.string	"table"
.LC42:
	.string	".RE\n"
.LC43:
	.string	".P\n"
.LC44:
	.string	"example"
.LC45:
	.string	".fi\n.RE\n"
.LC46:
	.string	"smallexample"
.LC47:
	.string	"quotation"
.LC48:
	.string	"\\fR\n.RE\n"
.LC49:
	.string	"man:"
	.align 8
.LC50:
	.string	"opening brace for command '%s' missing"
	.align 8
.LC51:
	.string	"closing brace for command '%s' not found"
	.align 8
.LC52:
	.string	"texinfo variable '%.*s' is not set"
	.align 8
.LC53:
	.string	"texinfo command '%s' not supported (%.*s)"
	.text
	.type	proc_texi_cmd, @function
proc_texi_cmd:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L128
.L130:
	addl	$1, -56(%rbp)
.L128:
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	cmdtbl.3389(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L129
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	cmdtbl.3389(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L130
.L129:
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	cmdtbl.3389(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L131
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+cmdtbl.3389(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L132
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
.L132:
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+cmdtbl.3389(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-56(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+cmdtbl.3389(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	ja	.L204
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L135(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L135(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L135:
	.long	.L204-.L135
	.long	.L134-.L135
	.long	.L204-.L135
	.long	.L137-.L135
	.long	.L138-.L135
	.long	.L139-.L135
	.long	.L140-.L135
	.long	.L141-.L135
	.long	.L142-.L135
	.text
.L134:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L143
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L145
.L143:
	movq	-96(%rbp), %rax
	jmp	.L145
.L137:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L147
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite@PLT
.L147:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L148
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L145
.L148:
	movq	-96(%rbp), %rax
	jmp	.L145
.L138:
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L150
.L152:
	addq	$1, -40(%rbp)
	subq	$1, -48(%rbp)
.L150:
	cmpq	$0, -48(%rbp)
	je	.L151
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L152
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L152
.L151:
	cmpq	$4, -48(%rbp)
	jbe	.L153
	movq	-40(%rbp), %rax
	movl	$5, %edx
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L153
	cmpq	$0, -48(%rbp)
	je	.L154
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L154
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L154
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L153
.L154:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	$1, %eax
	jle	.L155
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rdi
	call	fwrite@PLT
	jmp	.L157
.L155:
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC43(%rip), %rdi
	call	fwrite@PLT
	jmp	.L157
.L153:
	cmpq	$6, -48(%rbp)
	jbe	.L158
	movq	-40(%rbp), %rax
	movl	$7, %edx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L158
	cmpq	$0, -48(%rbp)
	je	.L159
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L159
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L159
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L158
.L159:
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC45(%rip), %rdi
	call	fwrite@PLT
	jmp	.L157
.L158:
	cmpq	$11, -48(%rbp)
	jbe	.L160
	movq	-40(%rbp), %rax
	movl	$12, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L160
	cmpq	$0, -48(%rbp)
	je	.L161
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L161
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L161
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L160
.L161:
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC45(%rip), %rdi
	call	fwrite@PLT
	jmp	.L157
.L160:
	cmpq	$8, -48(%rbp)
	jbe	.L157
	movq	-40(%rbp), %rax
	movl	$9, %edx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L157
	cmpq	$0, -48(%rbp)
	je	.L162
	movq	-40(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L162
	movq	-40(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L162
	movq	-40(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L157
.L162:
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC48(%rip), %rdi
	call	fwrite@PLT
.L157:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L163
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L145
.L163:
	movq	-96(%rbp), %rax
	jmp	.L145
.L139:
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L165
.L167:
	addq	$1, -40(%rbp)
	subq	$1, -48(%rbp)
.L165:
	cmpq	$0, -48(%rbp)
	je	.L166
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L167
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L167
.L166:
	cmpq	$3, -48(%rbp)
	jbe	.L168
	movq	-40(%rbp), %rax
	movl	$4, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L168
	addq	$4, -40(%rbp)
	subq	$4, -48(%rbp)
	jmp	.L169
.L171:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
	subq	$1, -48(%rbp)
	addq	$1, -40(%rbp)
.L169:
	cmpq	$0, -48(%rbp)
	je	.L170
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L171
.L170:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
.L168:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L172
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L145
.L172:
	movq	-96(%rbp), %rax
	jmp	.L145
.L140:
	movq	-112(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L186
.L141:
	movl	$1, -52(%rbp)
	jmp	.L186
.L142:
	movl	$1, -52(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	je	.L174
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	err
	movq	-96(%rbp), %rax
	jmp	.L145
.L174:
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	$1, -48(%rbp)
	jmp	.L175
.L178:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	je	.L205
	addq	$1, -40(%rbp)
	addq	$1, -48(%rbp)
.L175:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L177
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L178
	jmp	.L177
.L205:
	nop
.L177:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	je	.L179
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	err
	movq	-96(%rbp), %rax
	jmp	.L145
.L179:
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	$1, %rdx
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	variablelist(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L180
.L183:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -8(%rbp)
	jne	.L181
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L206
.L181:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L180:
	cmpq	$0, -24(%rbp)
	jne	.L183
	jmp	.L182
.L206:
	nop
.L182:
	cmpq	$0, -24(%rbp)
	je	.L184
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	jmp	.L186
.L184:
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rdx
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	inf
	jmp	.L186
.L131:
	movq	macrolist(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L187
.L190:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L207
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L187:
	cmpq	$0, -16(%rbp)
	jne	.L190
	jmp	.L189
.L207:
	nop
.L189:
	cmpq	$0, -16(%rbp)
	je	.L191
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	proc_texi_buffer
	movl	$1, -52(%rbp)
	jmp	.L186
.L191:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L192
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %esi
	jmp	.L193
.L192:
	movq	-96(%rbp), %rax
	movl	%eax, %esi
.L193:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	inf
	jmp	.L186
.L204:
	nop
.L186:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L194
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	$1, -48(%rbp)
	movl	$1, -56(%rbp)
	jmp	.L195
.L199:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L196
	addl	$1, -56(%rbp)
	jmp	.L197
.L196:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	jne	.L197
	subl	$1, -56(%rbp)
.L197:
	addq	$1, -40(%rbp)
	addq	$1, -48(%rbp)
.L195:
	cmpl	$0, -56(%rbp)
	je	.L198
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L198
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L199
.L198:
	cmpl	$0, -56(%rbp)
	je	.L200
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	err
	movq	-96(%rbp), %rax
	jmp	.L145
.L200:
	cmpq	$2, -48(%rbp)
	jbe	.L202
	cmpl	$0, -52(%rbp)
	jne	.L202
	movq	-48(%rbp), %rax
	leaq	-2(%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	proc_texi_buffer
	jmp	.L202
.L194:
	movq	$0, -48(%rbp)
.L202:
	cmpq	$0, -32(%rbp)
	je	.L203
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
.L203:
	movq	-48(%rbp), %rax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	proc_texi_cmd, .-proc_texi_cmd
	.section	.rodata
.LC54:
	.string	"n <= len"
	.align 8
.LC55:
	.string	"texinfo command too long - ignored"
.LC56:
	.string	"\n\\ \n"
.LC57:
	.string	"\\\\"
	.text
	.type	proc_texi_buffer, @function
proc_texi_buffer:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -296(%rbp)
	movl	$0, -292(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -288(%rbp)
	jmp	.L209
.L234:
	cmpl	$0, -292(%rbp)
	je	.L210
	cmpl	$1, -292(%rbp)
	jne	.L211
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$46, %eax
	je	.L213
	cmpl	$46, %eax
	jg	.L214
	cmpl	$32, %eax
	je	.L215
	cmpl	$32, %eax
	jg	.L216
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L212
	jmp	.L215
.L216:
	cmpl	$33, %eax
	je	.L213
	jmp	.L212
.L214:
	cmpl	$64, %eax
	je	.L217
	cmpl	$64, %eax
	jg	.L218
	cmpl	$58, %eax
	je	.L219
	cmpl	$63, %eax
	je	.L213
	jmp	.L212
.L218:
	cmpl	$123, %eax
	je	.L217
	cmpl	$125, %eax
	jne	.L212
.L217:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-312(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
	movl	$0, -292(%rbp)
	jmp	.L226
.L219:
	movl	$0, -292(%rbp)
	jmp	.L226
.L213:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-312(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
	movl	$0, -292(%rbp)
	jmp	.L226
.L215:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-312(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
	movl	$0, -292(%rbp)
	jmp	.L226
.L212:
	movl	$0, -296(%rbp)
	movl	-296(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -296(%rbp)
	movq	-288(%rbp), %rdx
	movzbl	(%rdx), %edx
	cltq
	movb	%dl, -272(%rbp,%rax)
	addl	$1, -292(%rbp)
	nop
	jmp	.L226
.L211:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	je	.L222
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L222
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L222
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L223
.L222:
	movl	-296(%rbp), %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	movq	-344(%rbp), %r8
	movq	-336(%rbp), %rdi
	movq	-328(%rbp), %rcx
	movq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	proc_texi_cmd
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpq	-328(%rbp), %rax
	jbe	.L224
	leaq	__PRETTY_FUNCTION__.3456(%rip), %rcx
	movl	$971, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC54(%rip), %rdi
	call	__assert_fail@PLT
.L224:
	movq	-280(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	subq	%rax, -328(%rbp)
	subq	$1, -288(%rbp)
	addq	$1, -328(%rbp)
	movl	$0, -292(%rbp)
	jmp	.L226
.L223:
	movl	-296(%rbp), %eax
	cmpl	$254, %eax
	ja	.L225
	movl	-296(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -296(%rbp)
	movq	-288(%rbp), %rdx
	movzbl	(%rdx), %edx
	cltq
	movb	%dl, -272(%rbp,%rax)
	jmp	.L226
.L225:
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	err
	movl	$0, -292(%rbp)
	jmp	.L226
.L210:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L227
	movl	$1, -292(%rbp)
	jmp	.L226
.L227:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L228
	movq	-344(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L238
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC56(%rip), %rdi
	call	fwrite@PLT
	jmp	.L231
.L238:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-312(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
.L231:
	movq	-344(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L226
.L228:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L232
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC57(%rip), %rdi
	call	fwrite@PLT
	jmp	.L226
.L232:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-312(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc@PLT
.L226:
	addq	$1, -288(%rbp)
	subq	$1, -328(%rbp)
.L209:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L233
	cmpq	$0, -328(%rbp)
	jne	.L234
.L233:
	cmpl	$1, -292(%rbp)
	jle	.L239
	movl	-296(%rbp), %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	movq	-344(%rbp), %r8
	movq	-336(%rbp), %rdi
	movq	-328(%rbp), %rcx
	movq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	proc_texi_cmd
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpq	-328(%rbp), %rax
	jbe	.L236
	leaq	__PRETTY_FUNCTION__.3456(%rip), %rcx
	movl	$1008, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC54(%rip), %rdi
	call	__assert_fail@PLT
.L236:
	movq	-280(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	subq	%rax, -328(%rbp)
	subq	$1, -288(%rbp)
	addq	$1, -328(%rbp)
.L239:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L237
	call	__stack_chk_fail@PLT
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	proc_texi_buffer, .-proc_texi_buffer
	.type	parse_texi_line, @function
parse_texi_line:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L241
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
	jmp	.L240
.L241:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	leaq	-12(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	proc_texi_buffer
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
.L240:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L243
	call	__stack_chk_fail@PLT
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	parse_texi_line, .-parse_texi_line
	.type	write_content, @function
write_content:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L245
.L248:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L246
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc@PLT
	jmp	.L247
.L246:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_texi_line
.L247:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L245:
	cmpq	$0, -16(%rbp)
	jne	.L248
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L249
	call	__stack_chk_fail@PLT
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	write_content, .-write_content
	.type	is_standard_section, @function
is_standard_section:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L251
.L254:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L252
	movl	$1, %eax
	jmp	.L253
.L252:
	addl	$1, -12(%rbp)
.L251:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	standard_sections(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L254
	movl	$0, %eax
.L253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	is_standard_section, .-is_standard_section
	.section	.rodata
.LC58:
	.string	"finishing page '%s'"
.LC59:
	.string	"selected '%s'"
.LC60:
	.string	"w"
.LC61:
	.string	"/dev/null"
.LC62:
	.string	"failed to open /dev/null: %s\n"
.LC63:
	.string	"writing '%s'"
.LC64:
	.string	"failed to create '%s': %s\n"
.LC65:
	.string	".SH %s\n"
	.text
	.type	finish_page, @function
finish_page:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	thepage(%rip), %rax
	testq	%rax, %rax
	je	.L278
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L258
	movq	thepage(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	inf
.L258:
	movq	opt_select(%rip), %rax
	testq	%rax, %rax
	je	.L259
	movq	thepage(%rip), %rdx
	movq	opt_select(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L260
	movq	thepage(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	inf
	movq	stdout(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L261
.L260:
	leaq	.LC60(%rip), %rsi
	leaq	.LC61(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L261
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	die
.L259:
	movl	opt_store(%rip), %eax
	testl	%eax, %eax
	je	.L262
	movq	thepage(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	inf
	movq	thepage(%rip), %rax
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L261
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movq	thepage(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	die
.L262:
	movq	stdout(%rip), %rax
	movq	%rax, -24(%rbp)
.L261:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	write_th
	testl	%eax, %eax
	jne	.L279
	movl	$0, -32(%rbp)
	jmp	.L265
.L276:
	movl	$0, -28(%rbp)
	jmp	.L266
.L269:
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L280
.L267:
	addl	$1, -28(%rbp)
.L266:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L269
	jmp	.L268
.L280:
	nop
.L268:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L270
	movq	$0, -16(%rbp)
.L270:
	cmpq	$0, -16(%rbp)
	je	.L271
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_content
	addl	$1, -28(%rbp)
	jmp	.L272
.L275:
	movq	16+thepage(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L273
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	is_standard_section
	testl	%eax, %eax
	jne	.L281
.L273:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L274
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_content
.L274:
	addl	$1, -28(%rbp)
.L272:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+thepage(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L275
	jmp	.L271
.L281:
	nop
.L271:
	addl	$1, -32(%rbp)
.L265:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	standard_sections(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L276
	jmp	.L264
.L279:
	nop
.L264:
	movq	stdout(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L277
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L277:
	movq	thepage(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, thepage(%rip)
	jmp	.L255
.L278:
	nop
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	finish_page, .-finish_page
	.section	.rodata
	.align 8
.LC66:
	.string	"%s:%d: trailing linefeed missing, line too long or embedded Nul character"
.LC67:
	.string	"item"
.LC68:
	.string	"@end"
.LC69:
	.string	"macro"
.LC70:
	.string	"@node"
.LC71:
	.string	"@section"
.LC72:
	.string	"@subsection"
.LC73:
	.string	"@chapheading"
.LC74:
	.string	"@ifset"
	.align 8
.LC75:
	.string	"%s:%d: name missing after \"@ifset\""
.LC76:
	.string	"@ifclear"
	.align 8
.LC77:
	.string	"%s:%d: name missing after \"@ifsclear\""
.LC78:
	.string	"ifset"
.LC79:
	.string	"ifclear"
.LC80:
	.string	"@macro"
.LC81:
	.string	"@set"
.LC82:
	.string	"@manpage"
.LC83:
	.string	"@mansect"
	.align 8
.LC84:
	.string	"%s:%d: section outside of a man page"
.LC85:
	.string	"@manpause"
	.align 8
.LC86:
	.string	"%s:%d: pausing outside of a man section"
.LC87:
	.string	"%s:%d: already pausing"
.LC88:
	.string	"@mancont"
	.align 8
.LC89:
	.string	"%s:%d: continue outside of a man section"
	.align 8
.LC90:
	.string	"%s:%d: continue while not pausing"
.LC91:
	.string	"@menu"
.LC92:
	.string	"@include"
.LC93:
	.string	"r"
	.align 8
.LC94:
	.string	"can't open include file '%s': %s"
.LC95:
	.string	"@bye"
.LC96:
	.string	"%s:%d: read error: %s"
	.text
	.type	parse_file, @function
parse_file:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movl	$1024, %edi
	call	xmalloc
	movq	%rax, -24(%rbp)
	jmp	.L283
.L363:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -100(%rbp)
	addl	$1, -116(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L284
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L285
.L284:
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L286
.L285:
	subq	$1, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L287
.L288:
	addq	$1, -56(%rbp)
.L287:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L288
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L288
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L289
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L290
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movl	$4, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L290
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -104(%rbp)
	jmp	.L291
.L290:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movl	-104(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L291
	movl	$0, -104(%rbp)
.L291:
	cmpl	$0, -104(%rbp)
	je	.L289
	movl	-104(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	1(%rax), %rdx
	movl	-104(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-104(%rbp), %eax
	cltq
	subq	%rax, -64(%rbp)
.L289:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L292
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	$1, -64(%rbp)
	jmp	.L293
.L295:
	addq	$1, -64(%rbp)
	addq	$1, -56(%rbp)
.L293:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L296
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L296
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L295
	jmp	.L296
.L297:
	addq	$1, -56(%rbp)
.L296:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L297
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L297
	jmp	.L298
.L292:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
.L298:
	cmpq	$0, -96(%rbp)
	je	.L299
	cmpq	$4, -64(%rbp)
	jne	.L300
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L300
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L301
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L301
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L300
.L301:
	movq	-56(%rbp), %rax
	movl	$5, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L300
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L302
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L302
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L300
.L302:
	cmpq	$0, -72(%rbp)
	je	.L303
	subq	$1, -72(%rbp)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L303:
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_macro
	movq	$0, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -96(%rbp)
	jmp	.L304
.L300:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	cmpq	%rax, -80(%rbp)
	ja	.L305
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	addq	$256, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, -88(%rbp)
.L305:
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-88(%rbp), %rdx
	addq	%rdx, %rax
	movb	$10, (%rax)
.L304:
	jmp	.L283
.L299:
	cmpq	$4, -64(%rbp)
	jbe	.L306
	movq	-24(%rbp), %rax
	movl	$5, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L306
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L283
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L283
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L306
	jmp	.L283
.L306:
	cmpl	$0, -108(%rbp)
	je	.L308
	movl	$0, -108(%rbp)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L283
	movq	-24(%rbp), %rax
	movl	$11, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L283
	movq	-24(%rbp), %rax
	movl	$12, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L308
	jmp	.L283
.L308:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L310
	cmpq	$6, -64(%rbp)
	jne	.L311
	movq	-24(%rbp), %rax
	movl	$6, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L311
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L312
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L311
.L312:
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movq	%rax, -56(%rbp)
	jmp	.L313
.L314:
	addq	$1, -56(%rbp)
.L313:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L314
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L314
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L315
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC75(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L283
.L315:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L316
.L318:
	addq	$1, -48(%rbp)
.L316:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L317
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L317
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L318
.L317:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	-116(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	push_condition
	jmp	.L283
.L311:
	cmpq	$8, -64(%rbp)
	jne	.L319
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L319
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L320
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L319
.L320:
	movq	-24(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -56(%rbp)
	jmp	.L321
.L322:
	addq	$1, -56(%rbp)
.L321:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L322
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L322
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L323
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC77(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L283
.L323:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L324
.L326:
	addq	$1, -48(%rbp)
.L324:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L325
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L325
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L326
.L325:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	-116(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	push_condition
	jmp	.L283
.L319:
	cmpq	$4, -64(%rbp)
	jne	.L327
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L327
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L328
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L327
.L328:
	movq	-56(%rbp), %rax
	movl	$5, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L327
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L329
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L329
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L327
.L329:
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	pop_condition
	jmp	.L283
.L327:
	cmpq	$4, -64(%rbp)
	jne	.L310
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L310
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L330
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L310
.L330:
	movq	-56(%rbp), %rax
	movl	$7, %edx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L310
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L331
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L331
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L310
.L331:
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	pop_condition
	jmp	.L283
.L310:
	movl	cond_is_active(%rip), %eax
	testl	%eax, %eax
	jne	.L332
	jmp	.L283
.L332:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L333
	cmpl	$0, -112(%rbp)
	je	.L334
	cmpq	$4, -64(%rbp)
	jne	.L334
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L334
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L335
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L335
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L334
.L335:
	movl	$0, -112(%rbp)
	jmp	.L361
.L334:
	movl	cond_in_verbatim(%rip), %eax
	testl	%eax, %eax
	je	.L337
	movl	$1, -100(%rbp)
	jmp	.L361
.L337:
	cmpq	$6, -64(%rbp)
	jne	.L338
	movq	-24(%rbp), %rax
	movl	$6, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L338
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, -96(%rbp)
	movq	$1024, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L361
.L338:
	cmpq	$4, -64(%rbp)
	jne	.L339
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L339
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_variable
	jmp	.L361
.L339:
	cmpq	$8, -64(%rbp)
	jne	.L340
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L340
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	call	finish_page
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	start_page
	movl	$0, -156(%rbp)
	jmp	.L361
.L340:
	cmpq	$8, -64(%rbp)
	jne	.L341
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L341
	movq	thepage(%rip), %rax
	testq	%rax, %rax
	jne	.L342
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC84(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L361
.L342:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, %rdi
	call	ascii_strupr
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -156(%rbp)
	movl	$1, -108(%rbp)
	jmp	.L361
.L341:
	cmpq	$9, -64(%rbp)
	jne	.L344
	movq	-24(%rbp), %rax
	movl	$9, %edx
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L344
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L345
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC86(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L361
.L345:
	cmpl	$0, -156(%rbp)
	je	.L347
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC87(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L361
.L347:
	movl	$1, -156(%rbp)
	jmp	.L361
.L344:
	cmpq	$8, -64(%rbp)
	jne	.L348
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC88(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L348
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L349
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC89(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L361
.L349:
	cmpl	$0, -156(%rbp)
	jne	.L351
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC90(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L361
.L351:
	movl	$0, -156(%rbp)
	jmp	.L361
.L348:
	cmpq	$5, -64(%rbp)
	jne	.L352
	movq	-24(%rbp), %rax
	movl	$5, %edx
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L352
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L353
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L353
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L352
.L353:
	movl	$1, -112(%rbp)
	jmp	.L361
.L352:
	cmpq	$8, -64(%rbp)
	jne	.L354
	movq	-24(%rbp), %rax
	movl	$8, %edx
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L354
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L355
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L355
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L354
.L355:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L356
	movq	opt_include(%rip), %rax
	testq	%rax, %rax
	je	.L356
	movq	opt_include(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L356
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L356
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	opt_include(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, -40(%rbp)
	movq	opt_include(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L357
	movq	-40(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
.L357:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movq	-40(%rbp), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
.L356:
	cmpq	$0, -32(%rbp)
	jne	.L358
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC94(%rip), %rdi
	movl	$0, %eax
	call	err
	jmp	.L359
.L358:
	movl	-156(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	parse_file
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L359:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L361
.L354:
	cmpq	$4, -64(%rbp)
	jne	.L360
	movq	-24(%rbp), %rax
	movl	$4, %edx
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L360
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L286
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L286
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L286
.L360:
	cmpl	$0, -112(%rbp)
	jne	.L361
	movl	$1, -100(%rbp)
	jmp	.L361
.L333:
	cmpl	$0, -112(%rbp)
	jne	.L361
	movl	$1, -100(%rbp)
.L361:
	cmpl	$0, -100(%rbp)
	je	.L362
	movl	cond_in_verbatim(%rip), %eax
	testl	%eax, %eax
	je	.L362
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_content
	jmp	.L283
.L362:
	cmpl	$0, -100(%rbp)
	je	.L283
	movq	thepage(%rip), %rax
	testq	%rax, %rax
	je	.L283
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L283
	cmpl	$0, -156(%rbp)
	jne	.L283
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_content
.L283:
	movq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L363
.L286:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L364
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC96(%rip), %rdi
	movl	$0, %eax
	call	err
.L364:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	parse_file, .-parse_file
	.section	.rodata
.LC97:
	.string	"1"
	.text
	.type	top_parse_file, @function
top_parse_file:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -40(%rbp)
	jmp	.L366
.L367:
	movq	macrolist(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	macrolist(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	macrolist(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, macrolist(%rip)
.L366:
	movq	macrolist(%rip), %rax
	testq	%rax, %rax
	jne	.L367
	jmp	.L368
.L369:
	movq	variablelist(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	variablelist(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	variablelist(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, variablelist(%rip)
.L368:
	movq	variablelist(%rip), %rax
	testq	%rax, %rax
	jne	.L369
	movq	predefinedmacrolist(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L370
.L371:
	leaq	.LC97(%rip), %rdi
	call	xstrdup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_macro
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L370:
	cmpq	$0, -32(%rbp)
	jne	.L371
	movl	$1, cond_is_active(%rip)
	movl	$0, cond_in_verbatim(%rip)
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	parse_file
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	call	finish_page
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L372
	call	__stack_chk_fail@PLT
.L372:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	top_parse_file, .-top_parse_file
	.section	.rodata
.LC98:
	.string	"GNU"
.LC99:
	.string	"isman"
.LC100:
	.string	"--"
.LC101:
	.string	"--help"
	.align 8
.LC102:
	.ascii	"Usage: yat2m [OPTION] [FILE]\nExtract man pages from a Texin"
	.ascii	"fo source.\n\n  --source NAME    use NAME as source field\n "
	.ascii	" --release STRING use STRING as the release field\n  --date "
	.ascii	"EPOCH     use EPOCH as publication date\n  --store          "
	.ascii	"write output using @manpage name\n  --select NAME    only ou"
	.ascii	"tput pages with @manpage NAME\n  --verbose        enable ext"
	.ascii	"ra informational output\n  --debug          enabl"
	.string	"e additional debug output\n  --help           display this help and exit\n  -I DIR           also search in include DIR\n  -D gpgone        the only usable define\n\nWith no FILE, or when FILE is -, read standard input.\n\nReport bugs to <https://bugs.gnupg.org>."
.LC103:
	.string	"--version"
	.align 8
.LC104:
	.string	"yat2m 1.0\nCopyright (C) 2005, 2017 g10 Code GmbH\nThis program comes with ABSOLUTELY NO WARRANTY.\nThis is free software, and you are welcome to redistribute it\nunder certain conditions. See the file COPYING for details."
.LC105:
	.string	"--verbose"
.LC106:
	.string	"--quiet"
.LC107:
	.string	"--debug"
.LC108:
	.string	"--source"
.LC109:
	.string	"--release"
.LC110:
	.string	"--date"
.LC111:
	.string	"--store"
.LC112:
	.string	"--select"
.LC113:
	.string	"-I"
.LC114:
	.string	"-D"
	.align 8
.LC115:
	.string	"usage: yat2m [OPTION] [FILE] (try --help for more information)\n"
.LC116:
	.string	"SOURCE_DATE_EPOCH"
.LC117:
	.string	"-"
.LC118:
	.string	"rb"
.LC119:
	.string	"%s:0: can't open file: %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$-1, -20(%rbp)
	leaq	.LC98(%rip), %rax
	movq	%rax, opt_source(%rip)
	leaq	.LC26(%rip), %rax
	movq	%rax, opt_release(%rip)
	leaq	.LC99(%rip), %rdi
	call	add_predefined_macro
	leaq	.LC28(%rip), %rdi
	call	add_predefined_macro
	cmpl	$0, -36(%rbp)
	je	.L375
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L396:
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L376
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L377
.L376:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L378
	leaq	.LC102(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L378:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L379
	leaq	.LC104(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L379:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L380
	movl	$1, verbose(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L380:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L381
	movl	$1, quiet(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L381:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L382
	movl	$1, debug(%rip)
	movl	debug(%rip), %eax
	movl	%eax, verbose(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L382:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L383
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, opt_source(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L383:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L385
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, opt_release(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L385:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC110(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L387
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, opt_date(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L387:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC111(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L389
	movl	$1, opt_store(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L389:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L390
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, opt_select(%rip)
	movq	opt_select(%rip), %rax
	testq	%rax, %rax
	je	.L392
	movq	opt_select(%rip), %rax
	addq	$1, %rax
	movq	%rax, opt_select(%rip)
	jmp	.L393
.L392:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, opt_select(%rip)
.L393:
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L390:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L394
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, opt_include(%rip)
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	jmp	.L375
.L394:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC114(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L375
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L375
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	add_predefined_macro
	subl	$1, -36(%rbp)
	addq	$8, -48(%rbp)
.L375:
	cmpl	$0, -36(%rbp)
	je	.L377
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L396
.L377:
	cmpl	$1, -36(%rbp)
	jle	.L397
	leaq	.LC115(%rip), %rdi
	movl	$0, %eax
	call	die
.L397:
	movq	opt_date(%rip), %rax
	testq	%rax, %rax
	jne	.L398
	leaq	.LC116(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L398
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L398
	movq	-16(%rbp), %rax
	movq	%rax, opt_date(%rip)
.L398:
	cmpl	$0, -36(%rbp)
	je	.L399
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L399
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC118(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L400
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC119(%rip), %rdi
	movl	$0, %eax
	call	die
.L400:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	top_parse_file
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L401
.L399:
	movq	stdin(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC117(%rip), %rdi
	call	top_parse_file
.L401:
	movl	any_error(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.local	buffer.3277
	.comm	buffer.3277,36,32
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.3357, @object
	.size	__PRETTY_FUNCTION__.3357, 19
__PRETTY_FUNCTION__.3357:
	.string	"get_section_buffer"
	.align 8
	.type	__PRETTY_FUNCTION__.3370, @object
	.size	__PRETTY_FUNCTION__.3370, 11
__PRETTY_FUNCTION__.3370:
	.string	"start_page"
.LC120:
	.string	"command"
.LC121:
	.string	"\\fB"
.LC122:
	.string	"\\fR"
.LC123:
	.string	"code"
.LC124:
	.string	"url"
.LC125:
	.string	"sc"
.LC126:
	.string	"var"
.LC127:
	.string	"\\fI"
.LC128:
	.string	"samp"
.LC129:
	.string	"\\(aq"
.LC130:
	.string	"file"
.LC131:
	.string	"\\(oq\\fI"
.LC132:
	.string	"\\fR\\(cq"
.LC133:
	.string	"env"
.LC134:
	.string	"acronym"
.LC135:
	.string	"dfn"
.LC136:
	.string	"option"
.LC137:
	.string	".RS 2\n.nf\n"
.LC138:
	.string	"asis"
.LC139:
	.string	"anchor"
.LC140:
	.string	"cartouche"
.LC141:
	.string	"ref"
.LC142:
	.string	"["
.LC143:
	.string	"]"
.LC144:
	.string	"xref"
.LC145:
	.string	"See: ["
.LC146:
	.string	"pxref"
.LC147:
	.string	"see: ["
.LC148:
	.string	"uref"
.LC149:
	.string	"(\\fB"
.LC150:
	.string	"\\fR)"
.LC151:
	.string	"footnote"
.LC152:
	.string	" (["
.LC153:
	.string	"])"
.LC154:
	.string	"emph"
.LC155:
	.string	"c"
.LC156:
	.string	"efindex"
.LC157:
	.string	"opindex"
.LC158:
	.string	"cpindex"
.LC159:
	.string	"cindex"
.LC160:
	.string	"noindent"
.LC161:
	.string	"section"
.LC162:
	.string	"chapter"
.LC163:
	.string	"subsection"
.LC164:
	.string	"\n.SS "
.LC165:
	.string	"chapheading"
.LC166:
	.string	".TP\n.B "
.LC167:
	.string	"itemx"
.LC168:
	.string	".TQ\n.B "
.LC169:
	.string	"itemize"
.LC170:
	.string	"bullet"
.LC171:
	.string	"* "
.LC172:
	.string	"*"
.LC173:
	.string	"\n.br"
.LC174:
	.string	"/"
.LC175:
	.string	"end"
.LC176:
	.string	".RS\n\\fB"
.LC177:
	.string	"value"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	cmdtbl.3389, @object
	.size	cmdtbl.3389, 1408
cmdtbl.3389:
	.quad	.LC120
	.long	0
	.zero	4
	.quad	.LC121
	.quad	.LC122
	.quad	.LC123
	.long	0
	.zero	4
	.quad	.LC121
	.quad	.LC122
	.quad	.LC124
	.long	0
	.zero	4
	.quad	.LC121
	.quad	.LC122
	.quad	.LC125
	.long	0
	.zero	4
	.quad	.LC121
	.quad	.LC122
	.quad	.LC126
	.long	0
	.zero	4
	.quad	.LC127
	.quad	.LC122
	.quad	.LC128
	.long	0
	.zero	4
	.quad	.LC129
	.quad	.LC129
	.quad	.LC130
	.long	0
	.zero	4
	.quad	.LC131
	.quad	.LC132
	.quad	.LC133
	.long	0
	.zero	4
	.quad	.LC131
	.quad	.LC132
	.quad	.LC134
	.long	0
	.zero	20
	.quad	.LC135
	.long	0
	.zero	20
	.quad	.LC136
	.long	0
	.zero	4
	.quad	.LC121
	.quad	.LC122
	.quad	.LC44
	.long	1
	.zero	4
	.quad	.LC137
	.zero	8
	.quad	.LC46
	.long	1
	.zero	4
	.quad	.LC137
	.zero	8
	.quad	.LC138
	.long	7
	.zero	20
	.quad	.LC139
	.long	7
	.zero	20
	.quad	.LC140
	.long	1
	.zero	20
	.quad	.LC141
	.long	0
	.zero	4
	.quad	.LC142
	.quad	.LC143
	.quad	.LC144
	.long	0
	.zero	4
	.quad	.LC145
	.quad	.LC143
	.quad	.LC146
	.long	0
	.zero	4
	.quad	.LC147
	.quad	.LC143
	.quad	.LC148
	.long	0
	.zero	4
	.quad	.LC149
	.quad	.LC150
	.quad	.LC151
	.long	0
	.zero	4
	.quad	.LC152
	.quad	.LC153
	.quad	.LC154
	.long	0
	.zero	4
	.quad	.LC127
	.quad	.LC122
	.quad	.LC60
	.long	1
	.zero	20
	.quad	.LC155
	.long	5
	.zero	20
	.quad	.LC156
	.long	1
	.zero	20
	.quad	.LC157
	.long	1
	.zero	20
	.quad	.LC158
	.long	1
	.zero	20
	.quad	.LC159
	.long	1
	.zero	20
	.quad	.LC160
	.long	0
	.zero	20
	.quad	.LC161
	.long	1
	.zero	20
	.quad	.LC162
	.long	1
	.zero	20
	.quad	.LC163
	.long	6
	.zero	4
	.quad	.LC164
	.zero	8
	.quad	.LC165
	.long	0
	.zero	20
	.quad	.LC67
	.long	2
	.zero	4
	.quad	.LC166
	.zero	8
	.quad	.LC167
	.long	2
	.zero	4
	.quad	.LC168
	.zero	8
	.quad	.LC41
	.long	3
	.zero	20
	.quad	.LC169
	.long	3
	.zero	20
	.quad	.LC170
	.long	0
	.zero	4
	.quad	.LC171
	.zero	8
	.quad	.LC172
	.long	0
	.zero	4
	.quad	.LC173
	.zero	8
	.quad	.LC174
	.long	0
	.zero	20
	.quad	.LC175
	.long	4
	.zero	20
	.quad	.LC47
	.long	1
	.zero	4
	.quad	.LC176
	.zero	8
	.quad	.LC177
	.long	8
	.zero	20
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.3456, @object
	.size	__PRETTY_FUNCTION__.3456, 17
__PRETTY_FUNCTION__.3456:
	.string	"proc_texi_buffer"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
