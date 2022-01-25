	.file	"rndlinux.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"open_dev_random"
.LC1:
	.string	"wait_dev_random"
.LC2:
	.string	"can't open %s: %s\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"error setting FD_CLOEXEC on fd %d: %s\n"
	.text
	.p2align 4,,15
	.type	open_device, @function
open_device:
.LFB111:
	.file 1 "rndlinux.c"
	.loc 1 82 0
	.cfi_startproc
.LVL0:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 82 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 85 0
	testl	%esi, %esi
	jne	.L12
.LVL1:
.LBB17:
.LBB18:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h"
	.loc 2 53 0
	xorl	%esi, %esi
.LVL2:
	xorl	%eax, %eax
	call	open@PLT
.LVL3:
.LBE18:
.LBE17:
	.loc 1 99 0
	cmpl	$-1, %eax
.LBB22:
.LBB19:
	.loc 2 53 0
	movl	%eax, %ebx
.LVL4:
.LBE19:
.LBE22:
	.loc 1 99 0
	je	.L13
.L3:
.LVL5:
.LBB23:
.LBB24:
	.loc 1 66 0
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	movl	%ebx, %edi
	call	fcntl@PLT
.LVL6:
	.loc 1 67 0
	testl	%eax, %eax
	js	.L7
.LVL7:
	.loc 1 69 0
	orl	$1, %eax
.LVL8:
	.loc 1 70 0
	movl	$2, %esi
	movl	%ebx, %edi
	.loc 1 69 0
	movl	%eax, %edx
	.loc 1 70 0
	xorl	%eax, %eax
.LVL9:
	call	fcntl@PLT
.LVL10:
.LBE24:
.LBE23:
	.loc 1 102 0
	testl	%eax, %eax
	jne	.L7
.L1:
	.loc 1 118 0
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L14
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL11:
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL12:
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	.loc 1 104 0
	call	__errno_location@PLT
.LVL13:
	.loc 1 103 0
	movl	(%rax), %edi
	call	strerror@PLT
.LVL14:
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rdx
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	_gcry_log_error@PLT
.LVL15:
	jmp	.L1
.LVL16:
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 86 0
	leaq	.LC0(%rip), %rdi
.LVL17:
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$88, %esi
.LVL18:
.LBB25:
	.loc 1 96 0
	movq	%rsp, %r12
.LBE25:
	.loc 1 86 0
	call	_gcry_random_progress@PLT
.LVL19:
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L15:
.LBB26:
	.loc 1 95 0
	leaq	.LC1(%rip), %rdi
	movl	$5, %ecx
	xorl	%edx, %edx
	movl	$88, %esi
	.loc 1 93 0
	movq	$5, (%rsp)
	.loc 1 94 0
	movq	$0, 8(%rsp)
	.loc 1 95 0
	call	_gcry_random_progress@PLT
.LVL20:
	.loc 1 96 0
	movq	%r12, %r8
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	select@PLT
.LVL21:
.L4:
.LBE26:
.LBB27:
.LBB20:
	.loc 2 53 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	open@PLT
.LVL22:
.LBE20:
.LBE27:
	.loc 1 89 0
	cmpl	$-1, %eax
.LBB28:
.LBB21:
	.loc 2 53 0
	movl	%eax, %ebx
.LVL23:
.LBE21:
.LBE28:
	.loc 1 89 0
	je	.L15
	jmp	.L3
.L13:
	.loc 1 100 0
	call	__errno_location@PLT
.LVL24:
	movl	(%rax), %edi
	call	strerror@PLT
.LVL25:
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	_gcry_log_fatal@PLT
.LVL26:
.L14:
	.loc 1 118 0
	call	__stack_chk_fail@PLT
.LVL27:
	.cfi_endproc
.LFE111:
	.size	open_device, .-open_device
	.section	.rodata.str1.1
.LC4:
	.string	"/dev/random"
.LC5:
	.string	"/dev/urandom"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"unexpected error from getentropy: %s\n"
	.align 8
.LC7:
	.string	"getentropy returned only %ld of %zu requested bytes\n"
	.section	.rodata.str1.1
.LC8:
	.string	"need_entropy"
.LC9:
	.string	"select() error: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"bogus read from random device (n=%d)\n"
	.align 8
.LC11:
	.string	"read error on random device: %s\n"
	.text
	.p2align 4,,15
	.globl	_gcry_rndlinux_gather_random
	.hidden	_gcry_rndlinux_gather_random
	.type	_gcry_rndlinux_gather_random, @function
_gcry_rndlinux_gather_random:
.LFB112:
	.loc 1 131 0
	.cfi_startproc
.LVL28:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
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
	movl	%ecx, %ebx
	subq	$1016, %rsp
	.cfi_def_cfa_offset 1072
	.loc 1 131 0
	movq	%fs:40, %rax
	movq	%rax, 1000(%rsp)
	xorl	%eax, %eax
.LVL29:
	.loc 1 152 0
	cmpl	$-1, only_urandom.8958(%rip)
	.loc 1 131 0
	movl	%esi, 8(%rsp)
	movq	%rdx, 16(%rsp)
.LVL30:
	.loc 1 152 0
	je	.L90
.LVL31:
.L17:
	.loc 1 161 0
	testq	%r14, %r14
	je	.L91
	.loc 1 182 0
	call	getpid@PLT
.LVL32:
	movl	%eax, 76(%rsp)
	.loc 1 183 0
	movl	my_pid.8960(%rip), %edx
	movl	76(%rsp), %eax
	cmpl	%eax, %edx
	je	.L23
	.loc 1 185 0
	movl	fd_random.8957(%rip), %edi
	cmpl	$-1, %edi
	jne	.L92
	.loc 1 190 0
	movl	fd_urandom.8956(%rip), %edi
	cmpl	$-1, %edi
	jne	.L93
.L25:
	.loc 1 195 0
	movl	76(%rsp), %eax
	movl	%eax, my_pid.8960(%rip)
.L23:
	.loc 1 202 0
	movq	16(%rsp), %r12
	movl	8(%rsp), %r15d
	movq	%r14, %rdi
	movq	%r12, %rdx
	movl	%r15d, %esi
	call	_gcry_rndhw_poll_slow@PLT
.LVL33:
	.loc 1 203 0
	cmpq	$1, %r12
	jbe	.L26
	.loc 1 204 0
	subq	%rax, %r12
.LVL34:
	.loc 1 209 0
	cmpl	$1, %ebx
	jg	.L94
.LVL35:
.L27:
	.loc 1 237 0
	movl	fd_urandom.8956(%rip), %eax
	cmpl	$-1, %eax
	movl	%eax, 12(%rsp)
	je	.L95
.L30:
.LVL36:
	.loc 1 250 0
	testq	%r12, %r12
	je	.L32
.LBB29:
	.loc 1 323 0
	movl	12(%rsp), %esi
	leaq	224(%rsp), %rbp
.LBE29:
	.loc 1 246 0
	movl	$0, 44(%rsp)
	.loc 1 147 0
	movl	$0, 40(%rsp)
	.loc 1 146 0
	movq	$0, 24(%rsp)
.LBB40:
	.loc 1 323 0
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rsi,%rax), %ecx
	andl	$63, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	salq	%cl, %rax
	movq	%rax, 48(%rsp)
.LBB30:
	.loc 1 322 0
	leaq	96(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBE30:
	.loc 1 327 0
	leaq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
.LVL37:
	.p2align 4,,10
	.p2align 3
.L46:
.LBB31:
	.loc 1 273 0
	cmpq	$768, %r12
	movl	$768, %r13d
	movl	$256, %ebx
	cmovbe	%r12, %r13
	cmpq	$256, %r12
	cmovbe	%r13, %rbx
	jmp	.L34
.LVL38:
	.p2align 4,,10
	.p2align 3
.L97:
	.loc 1 280 0 discriminator 1
	call	__errno_location@PLT
.LVL39:
	movl	(%rax), %edi
	cmpl	$4, %edi
	jne	.L96
.LVL40:
.L34:
	.loc 1 276 0
	call	_gcry_pre_syscall@PLT
.LVL41:
	.loc 1 277 0
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movl	$318, %edi
	xorl	%eax, %eax
	call	syscall@PLT
.LVL42:
	movq	%rax, %r15
.LVL43:
	.loc 1 278 0
	call	_gcry_post_syscall@PLT
.LVL44:
	.loc 1 280 0
	cmpq	$-1, %r15
	je	.L97
	.loc 1 289 0
	cmpq	%rbx, %r15
	jne	.L98
	.loc 1 295 0
	subq	%rbx, %r12
.LVL45:
	.loc 1 294 0
	movl	8(%rsp), %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%r14
.LVL46:
.L53:
.LBE31:
.LBE40:
	.loc 1 250 0
	testq	%r12, %r12
	jne	.L46
	.loc 1 363 0 discriminator 3
	movl	$768, %esi
	movq	%rbp, %rdi
	call	_gcry_fast_wipememory@PLT
.LVL47:
	.loc 1 365 0 discriminator 3
	movl	40(%rsp), %edx
	testl	%edx, %edx
	je	.L22
	.loc 1 366 0
	movq	16(%rsp), %rax
	leaq	.LC8(%rip), %rdi
	movl	$88, %esi
	movl	%eax, %ecx
	movl	%eax, %edx
	call	_gcry_random_progress@PLT
.LVL48:
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 369 0
	xorl	%eax, %eax
	movq	1000(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L99
	addq	$1016, %rsp
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
.LVL49:
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL50:
.L26:
	.cfi_restore_state
	.loc 1 209 0
	cmpl	$1, %ebx
	jg	.L54
	movq	16(%rsp), %r12
	jmp	.L27
.LVL51:
	.p2align 4,,10
	.p2align 3
.L96:
.LBB41:
.LBB32:
	.loc 1 281 0
	cmpl	$38, %edi
	movq	%rax, %r15
.LVL52:
	je	.L100
	.loc 1 286 0
	call	strerror@PLT
.LVL53:
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	_gcry_log_fatal@PLT
.LVL54:
	.p2align 4,,10
	.p2align 3
.L100:
	movq	16(%rsp), %rbx
.LVL55:
.LBE32:
	.loc 1 305 0
	movl	40(%rsp), %esi
	subq	%r12, %rbx
	testl	%esi, %esi
	jne	.L37
	.loc 1 305 0 is_stmt 0 discriminator 1
	cmpq	24(%rsp), %rbx
	je	.L56
.L37:
.LVL56:
	.loc 1 308 0 is_stmt 1
	movl	16(%rsp), %ecx
	leaq	.LC8(%rip), %rdi
	movl	%ebx, %edx
	movl	$88, %esi
	call	_gcry_random_progress@PLT
.LVL57:
	.loc 1 310 0
	movl	$1, 40(%rsp)
.LVL58:
.L38:
	.loc 1 319 0
	movl	12(%rsp), %edx
	cmpl	$1023, %edx
	jg	.L44
.LBB33:
	.loc 1 322 0
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	32(%rsp), %rdi
#APP
# 322 "rndlinux.c" 1
	cld; rep; stosq
# 0 "" 2
.LVL59:
#NO_APP
.LBE33:
.LBB34:
	.loc 1 323 0
	movslq	%edx, %rdi
.LVL60:
	movl	%edx, 12(%rsp)
	call	__fdelt_chk@PLT
.LVL61:
.LBE34:
	movq	48(%rsp), %rcx
	orq	%rcx, 96(%rsp,%rax,8)
	.loc 1 324 0
	movslq	44(%rsp), %rax
	.loc 1 325 0
	cmpl	$1, %eax
	.loc 1 324 0
	movq	%rax, 80(%rsp)
	.loc 1 325 0
	sbbq	%rax, %rax
	andl	$100000, %eax
	movq	%rax, 88(%rsp)
	.loc 1 326 0
	call	_gcry_pre_syscall@PLT
.LVL62:
	.loc 1 327 0
	movl	12(%rsp), %edx
	movq	56(%rsp), %r8
	xorl	%ecx, %ecx
	movq	32(%rsp), %rsi
	leal	1(%rdx), %edi
	xorl	%edx, %edx
	call	select@PLT
.LVL63:
	movl	%eax, 24(%rsp)
.LVL64:
	.loc 1 328 0
	call	_gcry_post_syscall@PLT
.LVL65:
	.loc 1 329 0
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.L58
	.loc 1 335 0
	cmpl	$-1, %eax
	je	.L101
.LVL66:
	.p2align 4,,10
	.p2align 3
.L44:
.LBB35:
.LBB36:
.LBB37:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 3 39 0
	movl	12(%rsp), %edi
	movl	$768, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	call	__read_chk@PLT
.LVL67:
.LBE37:
.LBE36:
	.loc 1 351 0
	testl	%eax, %eax
	js	.L41
	.loc 1 351 0 is_stmt 0 discriminator 1
	movslq	%eax, %r15
	cmpq	%r13, %r15
	ja	.L102
.LVL68:
.L42:
.LBE35:
	.loc 1 360 0 is_stmt 1
	movl	8(%rsp), %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	.loc 1 361 0
	subq	%r15, %r12
.LVL69:
	.loc 1 360 0
	call	*%r14
.LVL70:
	movq	%rbx, 24(%rsp)
	jmp	.L53
.LVL71:
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 357 0
	cmpl	$-1, %eax
	jne	.L103
	.loc 1 357 0 is_stmt 0 discriminator 1
	movl	(%r15), %edi
	cmpl	$4, %edi
	je	.L44
	.loc 1 359 0 is_stmt 1
	call	strerror@PLT
.LVL72:
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	_gcry_log_fatal@PLT
.LVL73:
	.p2align 4,,10
	.p2align 3
.L102:
.LBB38:
	.loc 1 353 0
	leaq	.LC10(%rip), %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
.LVL74:
	movq	%r13, %r15
	call	_gcry_log_error@PLT
.LVL75:
	jmp	.L42
.LVL76:
.L91:
.LBE38:
.LBE41:
	.loc 1 164 0
	movl	fd_random.8957(%rip), %edi
	cmpl	$-1, %edi
	je	.L20
	.loc 1 166 0
	call	close@PLT
.LVL77:
	.loc 1 167 0
	movl	$-1, fd_random.8957(%rip)
.L20:
	.loc 1 169 0
	movl	fd_urandom.8956(%rip), %edi
	cmpl	$-1, %edi
	je	.L21
	.loc 1 171 0
	call	close@PLT
.LVL78:
	.loc 1 172 0
	movl	$-1, fd_urandom.8956(%rip)
.L21:
	.loc 1 175 0
	call	_gcry_rndjent_fini@PLT
.LVL79:
	.loc 1 176 0
	jmp	.L22
.LVL80:
.L56:
.LBB42:
	movq	24(%rsp), %rbx
	jmp	.L38
.LVL81:
.L58:
	movq	%rbx, 24(%rsp)
.LVL82:
	.loc 1 332 0
	movl	$3, 44(%rsp)
.LVL83:
	.loc 1 331 0
	movl	$1, 40(%rsp)
.LVL84:
	jmp	.L53
.LVL85:
.L90:
.LBE42:
	.loc 1 154 0
	call	getpid@PLT
.LVL86:
	movl	%eax, my_pid.8960(%rip)
	.loc 1 155 0
	call	_gcry_random_read_conf@PLT
.LVL87:
	.loc 1 156 0
	testb	$2, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, only_urandom.8958(%rip)
	jmp	.L17
.L93:
	.loc 1 192 0
	call	close@PLT
.LVL88:
	.loc 1 195 0
	movl	76(%rsp), %eax
	.loc 1 193 0
	movl	$-1, fd_urandom.8956(%rip)
	.loc 1 195 0
	movl	%eax, my_pid.8960(%rip)
	jmp	.L23
.L92:
	.loc 1 187 0
	call	close@PLT
.LVL89:
	.loc 1 190 0
	movl	fd_urandom.8956(%rip), %edi
	.loc 1 188 0
	movl	$-1, fd_random.8957(%rip)
	.loc 1 190 0
	cmpl	$-1, %edi
	je	.L25
	jmp	.L93
.LVL90:
.L94:
	.loc 1 211 0
	movq	%r12, %rbx
.LVL91:
	movl	%r15d, %esi
	movq	%r14, %rdi
	shrq	%rbx
	movq	%rbx, %rdx
	call	_gcry_rndjent_poll@PLT
.LVL92:
	cmpq	%rax, %rbx
	cmova	%rax, %rbx
.LVL93:
	.loc 1 214 0
	cmpq	$1, %r12
	jbe	.L28
	.loc 1 215 0
	subq	%rbx, %r12
.LVL94:
.L28:
	.loc 1 226 0
	movl	only_urandom.8958(%rip), %eax
	testl	%eax, %eax
	jne	.L27
	.loc 1 228 0
	movl	fd_random.8957(%rip), %eax
	cmpl	$-1, %eax
	movl	%eax, 12(%rsp)
	jne	.L30
	.loc 1 230 0
	movzbl	ever_opened.8959(%rip), %esi
	leaq	.LC4(%rip), %rdi
	andl	$1, %esi
	call	open_device
.LVL95:
	.loc 1 231 0
	orb	$1, ever_opened.8959(%rip)
.LVL96:
	.loc 1 230 0
	movl	%eax, 12(%rsp)
	movl	%eax, fd_random.8957(%rip)
.LVL97:
	.loc 1 233 0
	jmp	.L30
.LVL98:
.L54:
	.loc 1 211 0
	movl	8(%rsp), %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	call	_gcry_rndjent_poll@PLT
.LVL99:
	movq	16(%rsp), %r12
	jmp	.L28
.LVL100:
.L101:
.LBB43:
	.loc 1 337 0
	movl	(%r15), %edi
	call	strerror@PLT
.LVL101:
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	_gcry_log_error@PLT
.LVL102:
	.loc 1 338 0
	movl	44(%rsp), %ecx
	movq	%rbx, 24(%rsp)
.LVL103:
	testl	%ecx, %ecx
	jne	.L53
	.loc 1 339 0
	movl	$1, 44(%rsp)
.LVL104:
	jmp	.L53
.LVL105:
.L95:
.LBE43:
	.loc 1 239 0
	movzbl	ever_opened.8959(%rip), %esi
	leaq	.LC5(%rip), %rdi
	andl	$2, %esi
	movzbl	%sil, %esi
	call	open_device
.LVL106:
	.loc 1 240 0
	orb	$2, ever_opened.8959(%rip)
.LVL107:
	.loc 1 239 0
	movl	%eax, 12(%rsp)
	movl	%eax, fd_urandom.8956(%rip)
.LVL108:
	jmp	.L30
.LVL109:
.L32:
	.loc 1 363 0
	leaq	224(%rsp), %rdi
	movl	$768, %esi
	call	_gcry_fast_wipememory@PLT
.LVL110:
	jmp	.L22
.LVL111:
.L98:
.LBB44:
.LBB39:
	.loc 1 290 0
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	_gcry_log_fatal@PLT
.LVL112:
.L99:
.LBE39:
.LBE44:
	.loc 1 369 0
	call	__stack_chk_fail@PLT
.LVL113:
.L103:
	movslq	%eax, %r15
	jmp	.L42
	.cfi_endproc
.LFE112:
	.size	_gcry_rndlinux_gather_random, .-_gcry_rndlinux_gather_random
	.local	ever_opened.8959
	.comm	ever_opened.8959,1,1
	.data
	.align 4
	.type	fd_urandom.8956, @object
	.size	fd_urandom.8956, 4
fd_urandom.8956:
	.long	-1
	.align 4
	.type	fd_random.8957, @object
	.size	fd_random.8957, 4
fd_random.8957:
	.long	-1
	.local	my_pid.8960
	.comm	my_pid.8960,4,4
	.align 4
	.type	only_urandom.8958, @object
	.size	only_urandom.8958, 4
only_urandom.8958:
	.long	-1
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "../src/types.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 19 "../src/g10lib.h"
	.file 20 "../src/gcrypt.h"
	.file 21 "rand-internal.h"
	.file 22 "/usr/include/string.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/select2.h"
	.file 24 "/usr/include/fcntl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1146
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF166
	.byte	0xc
	.long	.LASF167
	.long	.LASF168
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.long	0x3f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x5
	.byte	0x8c
	.long	0x6e
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x8d
	.long	0x6e
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x8e
	.long	0x67
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x94
	.long	0x6e
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x96
	.long	0x6e
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0xb5
	.long	0x6e
	.uleb128 0x7
	.byte	0x8
	.long	0xbf
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x4
	.long	0xbf
	.uleb128 0x8
	.long	0xbf
	.uleb128 0x9
	.long	.LASF44
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x250
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0xf6
	.long	0x67
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xfb
	.long	0xb9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0xfc
	.long	0xb9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xfd
	.long	0xb9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0xfe
	.long	0xb9
	.byte	0x20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xff
	.long	0xb9
	.byte	0x28
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x100
	.long	0xb9
	.byte	0x30
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x101
	.long	0xb9
	.byte	0x38
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x102
	.long	0xb9
	.byte	0x40
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x104
	.long	0xb9
	.byte	0x48
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x105
	.long	0xb9
	.byte	0x50
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x106
	.long	0xb9
	.byte	0x58
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x108
	.long	0x288
	.byte	0x60
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x10a
	.long	0x28e
	.byte	0x68
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x10c
	.long	0x67
	.byte	0x70
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x110
	.long	0x67
	.byte	0x74
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x112
	.long	0x75
	.byte	0x78
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x116
	.long	0x4b
	.byte	0x80
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x117
	.long	0x59
	.byte	0x82
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x118
	.long	0x294
	.byte	0x83
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x11c
	.long	0x2a4
	.byte	0x88
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x125
	.long	0x80
	.byte	0x90
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x12d
	.long	0xac
	.byte	0x98
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x12e
	.long	0xac
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x12f
	.long	0xac
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x130
	.long	0xac
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x133
	.long	0x67
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.value	0x135
	.long	0x2aa
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF169
	.byte	0x6
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF45
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x288
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xa1
	.long	0x288
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0xa2
	.long	0x28e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0xa6
	.long	0x67
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x257
	.uleb128 0x7
	.byte	0x8
	.long	0xd0
	.uleb128 0xd
	.long	0xbf
	.long	0x2a4
	.uleb128 0xe
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x250
	.uleb128 0xd
	.long	0xbf
	.long	0x2ba
	.uleb128 0xe
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF88
	.uleb128 0x10
	.long	.LASF49
	.byte	0x6
	.value	0x13f
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF50
	.byte	0x6
	.value	0x140
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.value	0x141
	.long	0x2ba
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x4
	.long	0x2e3
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x47
	.long	0xae
	.uleb128 0x11
	.long	.LASF53
	.byte	0x7
	.byte	0x87
	.long	0x28e
	.uleb128 0x11
	.long	.LASF54
	.byte	0x7
	.byte	0x88
	.long	0x28e
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x89
	.long	0x28e
	.uleb128 0x11
	.long	.LASF56
	.byte	0x8
	.byte	0x1a
	.long	0x67
	.uleb128 0xd
	.long	0x2e9
	.long	0x330
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x325
	.uleb128 0x11
	.long	.LASF57
	.byte	0x8
	.byte	0x1b
	.long	0x330
	.uleb128 0x11
	.long	.LASF58
	.byte	0x8
	.byte	0x1e
	.long	0x67
	.uleb128 0x11
	.long	.LASF59
	.byte	0x8
	.byte	0x1f
	.long	0x330
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF60
	.uleb128 0x2
	.long	.LASF61
	.byte	0x9
	.byte	0x62
	.long	0x8b
	.uleb128 0x8
	.long	0x35d
	.uleb128 0x9
	.long	.LASF62
	.byte	0x10
	.byte	0xa
	.byte	0x8
	.long	0x392
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0xa
	.long	0x96
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0xb
	.long	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x31
	.long	0x6e
	.uleb128 0x13
	.byte	0x80
	.byte	0xb
	.byte	0x3b
	.long	0x3b2
	.uleb128 0xa
	.long	.LASF66
	.byte	0xb
	.byte	0x40
	.long	0x3b2
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x392
	.long	0x3c2
	.uleb128 0xe
	.long	0x38
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0xb
	.byte	0x46
	.long	0x39d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF68
	.uleb128 0x7
	.byte	0x8
	.long	0x3da
	.uleb128 0x14
	.uleb128 0x11
	.long	.LASF69
	.byte	0xc
	.byte	0x2d
	.long	0xb9
	.uleb128 0x11
	.long	.LASF70
	.byte	0xc
	.byte	0x2e
	.long	0xb9
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.byte	0xd
	.byte	0x34
	.long	0x416
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x36
	.long	0x67
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0xd
	.byte	0x37
	.long	0x67
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3f1
	.uleb128 0x15
	.long	0x416
	.uleb128 0x10
	.long	.LASF74
	.byte	0xe
	.value	0x222
	.long	0x42d
	.uleb128 0x7
	.byte	0x8
	.long	0xb9
	.uleb128 0x10
	.long	.LASF75
	.byte	0xe
	.value	0x224
	.long	0x42d
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.byte	0x24
	.long	0xb9
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.byte	0x32
	.long	0x67
	.uleb128 0x11
	.long	.LASF78
	.byte	0xf
	.byte	0x37
	.long	0x67
	.uleb128 0x11
	.long	.LASF79
	.byte	0xf
	.byte	0x3b
	.long	0x67
	.uleb128 0x2
	.long	.LASF80
	.byte	0x10
	.byte	0x3e
	.long	0x3f
	.uleb128 0x16
	.string	"u64"
	.byte	0x10
	.byte	0x6d
	.long	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF81
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF82
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF83
	.uleb128 0x2
	.long	.LASF84
	.byte	0x11
	.byte	0x1c
	.long	0x4b
	.uleb128 0x9
	.long	.LASF85
	.byte	0x10
	.byte	0x12
	.byte	0xaf
	.long	0x4c6
	.uleb128 0xa
	.long	.LASF86
	.byte	0x12
	.byte	0xb1
	.long	0x496
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0x12
	.byte	0xb2
	.long	0x4cb
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x4a1
	.uleb128 0xd
	.long	0xbf
	.long	0x4db
	.uleb128 0xe
	.long	0x38
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4a1
	.uleb128 0x15
	.long	0x4db
	.uleb128 0xf
	.long	.LASF89
	.uleb128 0x4
	.long	0x4e6
	.uleb128 0x7
	.byte	0x8
	.long	0x4e6
	.uleb128 0x15
	.long	0x4f0
	.uleb128 0xf
	.long	.LASF90
	.uleb128 0x4
	.long	0x4fb
	.uleb128 0x7
	.byte	0x8
	.long	0x4fb
	.uleb128 0x15
	.long	0x505
	.uleb128 0xf
	.long	.LASF91
	.uleb128 0x4
	.long	0x510
	.uleb128 0x7
	.byte	0x8
	.long	0x510
	.uleb128 0x15
	.long	0x51a
	.uleb128 0xf
	.long	.LASF92
	.uleb128 0x4
	.long	0x525
	.uleb128 0x7
	.byte	0x8
	.long	0x525
	.uleb128 0x15
	.long	0x52f
	.uleb128 0xf
	.long	.LASF93
	.uleb128 0x4
	.long	0x53a
	.uleb128 0x7
	.byte	0x8
	.long	0x53a
	.uleb128 0x15
	.long	0x544
	.uleb128 0xf
	.long	.LASF94
	.uleb128 0x4
	.long	0x54f
	.uleb128 0x7
	.byte	0x8
	.long	0x54f
	.uleb128 0x15
	.long	0x559
	.uleb128 0xf
	.long	.LASF95
	.uleb128 0x4
	.long	0x564
	.uleb128 0x7
	.byte	0x8
	.long	0x564
	.uleb128 0x15
	.long	0x56e
	.uleb128 0xf
	.long	.LASF96
	.uleb128 0x4
	.long	0x579
	.uleb128 0x7
	.byte	0x8
	.long	0x579
	.uleb128 0x15
	.long	0x583
	.uleb128 0xf
	.long	.LASF97
	.uleb128 0x4
	.long	0x58e
	.uleb128 0x7
	.byte	0x8
	.long	0x58e
	.uleb128 0x15
	.long	0x598
	.uleb128 0xf
	.long	.LASF98
	.uleb128 0x4
	.long	0x5a3
	.uleb128 0x7
	.byte	0x8
	.long	0x5a3
	.uleb128 0x15
	.long	0x5ad
	.uleb128 0xf
	.long	.LASF99
	.uleb128 0x4
	.long	0x5b8
	.uleb128 0x7
	.byte	0x8
	.long	0x5b8
	.uleb128 0x15
	.long	0x5c2
	.uleb128 0xf
	.long	.LASF100
	.uleb128 0x4
	.long	0x5cd
	.uleb128 0x7
	.byte	0x8
	.long	0x5cd
	.uleb128 0x15
	.long	0x5d7
	.uleb128 0x7
	.byte	0x8
	.long	0x4c6
	.uleb128 0x15
	.long	0x5e2
	.uleb128 0x7
	.byte	0x8
	.long	0x4eb
	.uleb128 0x15
	.long	0x5ed
	.uleb128 0x7
	.byte	0x8
	.long	0x500
	.uleb128 0x15
	.long	0x5f8
	.uleb128 0x7
	.byte	0x8
	.long	0x515
	.uleb128 0x15
	.long	0x603
	.uleb128 0x7
	.byte	0x8
	.long	0x52a
	.uleb128 0x15
	.long	0x60e
	.uleb128 0x7
	.byte	0x8
	.long	0x53f
	.uleb128 0x15
	.long	0x619
	.uleb128 0x7
	.byte	0x8
	.long	0x554
	.uleb128 0x15
	.long	0x624
	.uleb128 0x7
	.byte	0x8
	.long	0x569
	.uleb128 0x15
	.long	0x62f
	.uleb128 0x7
	.byte	0x8
	.long	0x57e
	.uleb128 0x15
	.long	0x63a
	.uleb128 0x7
	.byte	0x8
	.long	0x593
	.uleb128 0x15
	.long	0x645
	.uleb128 0x7
	.byte	0x8
	.long	0x5a8
	.uleb128 0x15
	.long	0x650
	.uleb128 0x7
	.byte	0x8
	.long	0x5bd
	.uleb128 0x15
	.long	0x65b
	.uleb128 0x7
	.byte	0x8
	.long	0x5d2
	.uleb128 0x15
	.long	0x666
	.uleb128 0x17
	.long	.LASF106
	.byte	0x7
	.byte	0x4
	.long	0x52
	.byte	0x14
	.value	0x653
	.long	0x696
	.uleb128 0x18
	.long	.LASF101
	.byte	0
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.uleb128 0x18
	.long	.LASF103
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF104
	.byte	0x13
	.byte	0x71
	.long	0x67
	.uleb128 0x19
	.long	.LASF170
	.byte	0x8
	.byte	0x1
	.byte	0x13
	.value	0x183
	.long	0x6bb
	.uleb128 0x1a
	.string	"a"
	.byte	0x13
	.value	0x185
	.long	0x476
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x13
	.value	0x186
	.long	0x6a1
	.byte	0x1
	.uleb128 0x8
	.long	0x6bb
	.uleb128 0x10
	.long	.LASF105
	.byte	0x13
	.value	0x1be
	.long	0x67
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x7
	.byte	0x4
	.long	0x52
	.byte	0x15
	.byte	0x1b
	.long	0x709
	.uleb128 0x18
	.long	.LASF108
	.byte	0
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.uleb128 0x18
	.long	.LASF110
	.byte	0x2
	.uleb128 0x18
	.long	.LASF111
	.byte	0x3
	.uleb128 0x18
	.long	.LASF112
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x1
	.byte	0x7f
	.long	0x67
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0xd4f
	.uleb128 0x1e
	.string	"add"
	.byte	0x1
	.byte	0x7f
	.long	0xd64
	.long	.LLST6
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x1
	.byte	0x81
	.long	0x6d9
	.long	.LLST7
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.long	.LLST8
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x1
	.byte	0x82
	.long	0x67
	.long	.LLST9
	.uleb128 0x20
	.long	.LASF116
	.byte	0x1
	.byte	0x84
	.long	0x67
	.uleb128 0x9
	.byte	0x3
	.quad	fd_urandom.8956
	.uleb128 0x20
	.long	.LASF117
	.byte	0x1
	.byte	0x85
	.long	0x67
	.uleb128 0x9
	.byte	0x3
	.quad	fd_random.8957
	.uleb128 0x20
	.long	.LASF118
	.byte	0x1
	.byte	0x86
	.long	0x67
	.uleb128 0x9
	.byte	0x3
	.quad	only_urandom.8958
	.uleb128 0x20
	.long	.LASF119
	.byte	0x1
	.byte	0x87
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	ever_opened.8959
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.byte	0x88
	.long	0x368
	.uleb128 0x9
	.byte	0x3
	.quad	my_pid.8960
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.byte	0x8c
	.long	0x368
	.uleb128 0x3
	.byte	0x91
	.sleb128 -996
	.uleb128 0x21
	.string	"fd"
	.byte	0x1
	.byte	0x8d
	.long	0x67
	.long	.LLST10
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.byte	0x8e
	.long	0x67
	.long	.LLST11
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.byte	0x8f
	.long	0xd6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.byte	0x90
	.long	0x2d
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.byte	0x91
	.long	0x2d
	.long	.LLST13
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.byte	0x92
	.long	0x2d
	.long	.LLST14
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.byte	0x93
	.long	0x67
	.long	.LLST15
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.byte	0x94
	.long	0x67
	.long	.LLST16
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x80
	.long	0xb71
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.byte	0xfc
	.long	0x3c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x24
	.string	"tv"
	.byte	0x1
	.byte	0xfd
	.long	0x36d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x21
	.string	"rc"
	.byte	0x1
	.byte	0xfe
	.long	0x67
	.long	.LLST17
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x120
	.long	0x978
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.value	0x10c
	.long	0x6e
	.long	.LLST18
	.uleb128 0x26
	.long	.LASF129
	.byte	0x1
	.value	0x10d
	.long	0x2d
	.long	.LLST19
	.uleb128 0x27
	.quad	.LVL39
	.long	0x105b
	.uleb128 0x27
	.quad	.LVL41
	.long	0x1066
	.uleb128 0x28
	.quad	.LVL42
	.long	0x1071
	.long	0x8f4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x13e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.quad	.LVL44
	.long	0x107d
	.uleb128 0x2a
	.quad	.LVL46
	.long	0x924
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1064
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.quad	.LVL53
	.long	0x1088
	.uleb128 0x28
	.quad	.LVL54
	.long	0x1094
	.long	0x950
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x2b
	.quad	.LVL112
	.long	0x1094
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xf0
	.long	0x99a
	.uleb128 0x2c
	.long	.LASF130
	.byte	0x1
	.value	0x142
	.long	0x67
	.uleb128 0x2c
	.long	.LASF131
	.byte	0x1
	.value	0x142
	.long	0x67
	.byte	0
	.uleb128 0x2d
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x9dd
	.uleb128 0x25
	.string	"__d"
	.byte	0x1
	.value	0x143
	.long	0x6e
	.long	.LLST20
	.uleb128 0x2b
	.quad	.LVL61
	.long	0x109f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x160
	.long	0xa74
	.uleb128 0x26
	.long	.LASF129
	.byte	0x1
	.value	0x15b
	.long	0x2d
	.long	.LLST21
	.uleb128 0x2e
	.long	0x1029
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.value	0x15e
	.long	0xa58
	.uleb128 0x2f
	.long	0x104f
	.long	.LLST22
	.uleb128 0x2f
	.long	0x1044
	.long	.LLST23
	.uleb128 0x2f
	.long	0x1039
	.long	.LLST24
	.uleb128 0x2b
	.quad	.LVL67
	.long	0x10aa
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x300
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL75
	.long	0x10b5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LVL57
	.long	0x10c0
	.long	0xaa8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1056
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.quad	.LVL62
	.long	0x1066
	.uleb128 0x28
	.quad	.LVL63
	.long	0x10cb
	.long	0xaec
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1040
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1016
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.quad	.LVL65
	.long	0x107d
	.uleb128 0x2a
	.quad	.LVL70
	.long	0xb1c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1064
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.quad	.LVL72
	.long	0x1088
	.uleb128 0x28
	.quad	.LVL73
	.long	0x1094
	.long	0xb48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x27
	.quad	.LVL101
	.long	0x1088
	.uleb128 0x2b
	.quad	.LVL102
	.long	0x10b5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xbb7
	.uleb128 0x2c
	.long	.LASF132
	.byte	0x1
	.value	0x16b
	.long	0xd7b
	.uleb128 0x2c
	.long	.LASF133
	.byte	0x1
	.value	0x16b
	.long	0x2d
	.uleb128 0x2c
	.long	.LASF134
	.byte	0x1
	.value	0x16b
	.long	0x46
	.uleb128 0x31
	.uleb128 0x2c
	.long	.LASF135
	.byte	0x1
	.value	0x16b
	.long	0x6bb
	.uleb128 0x31
	.uleb128 0x2c
	.long	.LASF136
	.byte	0x1
	.value	0x16b
	.long	0xd81
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL32
	.long	0x10d6
	.uleb128 0x28
	.quad	.LVL33
	.long	0x10e2
	.long	0xbe8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL47
	.long	0x10ed
	.long	0xc07
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x300
	.byte	0
	.uleb128 0x28
	.quad	.LVL48
	.long	0x10c0
	.long	0xc3e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1056
	.byte	0x94
	.byte	0x4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1056
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.quad	.LVL77
	.long	0x10f9
	.uleb128 0x27
	.quad	.LVL78
	.long	0x10f9
	.uleb128 0x27
	.quad	.LVL79
	.long	0x1105
	.uleb128 0x27
	.quad	.LVL86
	.long	0x10d6
	.uleb128 0x27
	.quad	.LVL87
	.long	0x1110
	.uleb128 0x27
	.quad	.LVL88
	.long	0x10f9
	.uleb128 0x27
	.quad	.LVL89
	.long	0x10f9
	.uleb128 0x28
	.quad	.LVL92
	.long	0x111b
	.long	0xcbd
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL95
	.long	0xd87
	.long	0xcdc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x28
	.quad	.LVL99
	.long	0x111b
	.long	0xd02
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -1064
	.byte	0x94
	.byte	0x4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL106
	.long	0xd87
	.long	0xd21
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x28
	.quad	.LVL110
	.long	0x10ed
	.long	0xd41
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x300
	.byte	0
	.uleb128 0x27
	.quad	.LVL113
	.long	0x1126
	.byte	0
	.uleb128 0x32
	.long	0xd64
	.uleb128 0x33
	.long	0x3d4
	.uleb128 0x33
	.long	0x2d
	.uleb128 0x33
	.long	0x6d9
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd4f
	.uleb128 0xd
	.long	0x46b
	.long	0xd7b
	.uleb128 0x34
	.long	0x38
	.value	0x2ff
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xcb
	.uleb128 0x7
	.byte	0x8
	.long	0x6c8
	.uleb128 0x35
	.long	.LASF173
	.byte	0x1
	.byte	0x51
	.long	0x67
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0xfdb
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x1
	.byte	0x51
	.long	0x2e3
	.long	.LLST0
	.uleb128 0x1f
	.long	.LASF138
	.byte	0x1
	.byte	0x51
	.long	0x67
	.long	.LLST1
	.uleb128 0x36
	.string	"fd"
	.byte	0x1
	.byte	0x53
	.long	0x67
	.uleb128 0x37
	.long	.LASF174
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x50
	.long	0xe45
	.uleb128 0x24
	.string	"tv"
	.byte	0x1
	.byte	0x5b
	.long	0x36d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.quad	.LVL20
	.long	0x10c0
	.long	0xe1c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL21
	.long	0x10cb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x1001
	.quad	.LBB17
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x58
	.long	0xea5
	.uleb128 0x2f
	.long	0x101c
	.long	.LLST2
	.uleb128 0x2f
	.long	0x1011
	.long	.LLST3
	.uleb128 0x28
	.quad	.LVL3
	.long	0x112f
	.long	0xe8b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL22
	.long	0x112f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0xfdb
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x1
	.byte	0x66
	.long	0xf20
	.uleb128 0x2f
	.long	0xfeb
	.long	.LLST4
	.uleb128 0x3a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x3b
	.long	0xff5
	.long	.LLST5
	.uleb128 0x28
	.quad	.LVL6
	.long	0x113e
	.long	0xf05
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL10
	.long	0x113e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL13
	.long	0x105b
	.uleb128 0x27
	.quad	.LVL14
	.long	0x1088
	.uleb128 0x28
	.quad	.LVL15
	.long	0x10b5
	.long	0xf5f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL19
	.long	0x10c0
	.long	0xf8e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.quad	.LVL24
	.long	0x105b
	.uleb128 0x27
	.quad	.LVL25
	.long	0x1088
	.uleb128 0x28
	.quad	.LVL26
	.long	0x1094
	.long	0xfcd
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL27
	.long	0x1126
	.byte	0
	.uleb128 0x3c
	.long	.LASF175
	.byte	0x1
	.byte	0x3e
	.long	0x67
	.byte	0x1
	.long	0x1001
	.uleb128 0x3d
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.long	0x67
	.uleb128 0x3e
	.long	.LASF139
	.byte	0x1
	.byte	0x40
	.long	0x67
	.byte	0
	.uleb128 0x3f
	.long	.LASF142
	.byte	0x2
	.byte	0x29
	.long	0x67
	.byte	0x3
	.long	0x1029
	.uleb128 0x40
	.long	.LASF140
	.byte	0x2
	.byte	0x29
	.long	0x2e3
	.uleb128 0x40
	.long	.LASF141
	.byte	0x2
	.byte	0x29
	.long	0x67
	.uleb128 0x41
	.byte	0
	.uleb128 0x3f
	.long	.LASF143
	.byte	0x3
	.byte	0x22
	.long	0x2ee
	.byte	0x3
	.long	0x105b
	.uleb128 0x40
	.long	.LASF144
	.byte	0x3
	.byte	0x22
	.long	0x67
	.uleb128 0x40
	.long	.LASF145
	.byte	0x3
	.byte	0x22
	.long	0xac
	.uleb128 0x40
	.long	.LASF146
	.byte	0x3
	.byte	0x22
	.long	0x2d
	.byte	0
	.uleb128 0x42
	.long	.LASF147
	.long	.LASF147
	.byte	0xc
	.byte	0x25
	.uleb128 0x42
	.long	.LASF148
	.long	.LASF148
	.byte	0x13
	.byte	0x75
	.uleb128 0x43
	.long	.LASF149
	.long	.LASF149
	.byte	0xe
	.value	0x423
	.uleb128 0x42
	.long	.LASF150
	.long	.LASF150
	.byte	0x13
	.byte	0x76
	.uleb128 0x43
	.long	.LASF151
	.long	.LASF151
	.byte	0x16
	.value	0x18c
	.uleb128 0x42
	.long	.LASF152
	.long	.LASF152
	.byte	0x13
	.byte	0xae
	.uleb128 0x42
	.long	.LASF153
	.long	.LASF153
	.byte	0x17
	.byte	0x18
	.uleb128 0x42
	.long	.LASF154
	.long	.LASF154
	.byte	0x3
	.byte	0x17
	.uleb128 0x42
	.long	.LASF155
	.long	.LASF155
	.byte	0x13
	.byte	0xaf
	.uleb128 0x42
	.long	.LASF156
	.long	.LASF156
	.byte	0x15
	.byte	0x2c
	.uleb128 0x42
	.long	.LASF157
	.long	.LASF157
	.byte	0xb
	.byte	0x65
	.uleb128 0x43
	.long	.LASF158
	.long	.LASF158
	.byte	0xe
	.value	0x277
	.uleb128 0x42
	.long	.LASF159
	.long	.LASF159
	.byte	0x15
	.byte	0x8e
	.uleb128 0x43
	.long	.LASF160
	.long	.LASF160
	.byte	0x13
	.value	0x17d
	.uleb128 0x43
	.long	.LASF161
	.long	.LASF161
	.byte	0xe
	.value	0x164
	.uleb128 0x42
	.long	.LASF162
	.long	.LASF162
	.byte	0x15
	.byte	0x87
	.uleb128 0x42
	.long	.LASF163
	.long	.LASF163
	.byte	0x15
	.byte	0x2b
	.uleb128 0x42
	.long	.LASF164
	.long	.LASF164
	.byte	0x15
	.byte	0x82
	.uleb128 0x44
	.long	.LASF176
	.long	.LASF176
	.uleb128 0x45
	.long	.LASF142
	.long	.LASF177
	.byte	0x2
	.byte	0x1b
	.long	.LASF142
	.uleb128 0x42
	.long	.LASF165
	.long	.LASF165
	.byte	0x18
	.byte	0x93
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL31-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL86-1-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL31-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1064
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL86-1-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1064
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL31-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	.LVL34-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL46-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	.LVL51-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL70-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL76-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	.LVL80-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL86-1-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	.LVL90-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL98-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	.LVL100-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL31-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL35-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL51-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL76-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL80-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL86-1-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL91-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL98-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL100-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1060
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	fd_random.8957
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	fd_urandom.8956
	.quad	.LVL109-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1060
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL71-.Ltext0
	.quad	.LVL72-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL73-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL33-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL90-.Ltext0
	.quad	.LVL92-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL92-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1056
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL29-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -1056
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL76-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL81-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL85-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL105-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL29-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL76-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL85-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL105-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1032
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	.LVL51-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	.LVL80-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	.LVL100-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL109-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1028
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL65-1-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	.LVL100-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1048
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL38-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL44-1-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL38-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL51-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL55-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0x100
	.byte	0x7c
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775552
	.byte	0x2c
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL71-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0x100
	.byte	0x7c
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775552
	.byte	0x2c
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0x100
	.byte	0x7c
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775552
	.byte	0x2c
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0x100
	.byte	0x7c
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775552
	.byte	0x2c
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0x100
	.byte	0x7c
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775552
	.byte	0x2c
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL61-1-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL81-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -1060
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL66-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0xa
	.value	0x300
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL71-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0xa
	.value	0x300
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	.LVL113-.Ltext0
	.quad	.LFE112-.Ltext0
	.value	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0xa
	.value	0x300
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL66-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0xa
	.value	0x300
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL66-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL66-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -1060
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-.Ltext0
	.quad	.LFE111-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL18-.Ltext0
	.quad	.LFE111-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL5-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF120:
	.string	"my_pid"
.LASF7:
	.string	"size_t"
.LASF34:
	.string	"_shortbuf"
.LASF161:
	.string	"close"
.LASF101:
	.string	"GCRY_WEAK_RANDOM"
.LASF140:
	.string	"__path"
.LASF52:
	.string	"ssize_t"
.LASF51:
	.string	"_IO_2_1_stderr_"
.LASF22:
	.string	"_IO_buf_base"
.LASF109:
	.string	"RANDOM_ORIGIN_EXTERNAL"
.LASF68:
	.string	"long long unsigned int"
.LASF130:
	.string	"__d0"
.LASF131:
	.string	"__d1"
.LASF25:
	.string	"_IO_backup_base"
.LASF123:
	.string	"n_hw"
.LASF54:
	.string	"stdout"
.LASF96:
	.string	"sockaddr_ipx"
.LASF136:
	.string	"_vptr_long"
.LASF106:
	.string	"gcry_random_level"
.LASF60:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF139:
	.string	"oldflags"
.LASF153:
	.string	"__fdelt_chk"
.LASF95:
	.string	"sockaddr_inarp"
.LASF141:
	.string	"__oflag"
.LASF129:
	.string	"nbytes"
.LASF128:
	.string	"rfds"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF169:
	.string	"_IO_lock_t"
.LASF155:
	.string	"_gcry_log_error"
.LASF108:
	.string	"RANDOM_ORIGIN_INIT"
.LASF6:
	.string	"long int"
.LASF170:
	.string	"fast_wipememory_s"
.LASF171:
	.string	"fast_wipememory_t"
.LASF15:
	.string	"_flags"
.LASF13:
	.string	"__ssize_t"
.LASF23:
	.string	"_IO_buf_end"
.LASF53:
	.string	"stdin"
.LASF70:
	.string	"program_invocation_short_name"
.LASF5:
	.string	"short int"
.LASF91:
	.string	"sockaddr_dl"
.LASF59:
	.string	"_sys_errlist"
.LASF69:
	.string	"program_invocation_name"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF165:
	.string	"fcntl"
.LASF150:
	.string	"_gcry_post_syscall"
.LASF100:
	.string	"sockaddr_x25"
.LASF164:
	.string	"_gcry_rndjent_poll"
.LASF80:
	.string	"byte"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF71:
	.string	"timezone"
.LASF45:
	.string	"_IO_marker"
.LASF156:
	.string	"_gcry_random_progress"
.LASF67:
	.string	"fd_set"
.LASF3:
	.string	"unsigned int"
.LASF175:
	.string	"set_cloexec_flag"
.LASF0:
	.string	"long unsigned int"
.LASF88:
	.string	"_IO_FILE_plus"
.LASF12:
	.string	"__suseconds_t"
.LASF20:
	.string	"_IO_write_ptr"
.LASF62:
	.string	"timeval"
.LASF137:
	.string	"name"
.LASF125:
	.string	"last_so_far"
.LASF56:
	.string	"sys_nerr"
.LASF47:
	.string	"_sbuf"
.LASF115:
	.string	"level"
.LASF2:
	.string	"short unsigned int"
.LASF117:
	.string	"fd_random"
.LASF107:
	.string	"random_origins"
.LASF132:
	.string	"_vptr"
.LASF24:
	.string	"_IO_save_base"
.LASF75:
	.string	"environ"
.LASF110:
	.string	"RANDOM_ORIGIN_FASTPOLL"
.LASF72:
	.string	"tz_minuteswest"
.LASF35:
	.string	"_lock"
.LASF154:
	.string	"__read_chk"
.LASF105:
	.string	"_gcry_no_fips_mode_required"
.LASF42:
	.string	"_mode"
.LASF66:
	.string	"fds_bits"
.LASF144:
	.string	"__fd"
.LASF152:
	.string	"_gcry_log_fatal"
.LASF99:
	.string	"sockaddr_un"
.LASF118:
	.string	"only_urandom"
.LASF49:
	.string	"_IO_2_1_stdin_"
.LASF89:
	.string	"sockaddr_at"
.LASF76:
	.string	"optarg"
.LASF102:
	.string	"GCRY_STRONG_RANDOM"
.LASF142:
	.string	"open"
.LASF63:
	.string	"tv_sec"
.LASF21:
	.string	"_IO_write_end"
.LASF138:
	.string	"retry"
.LASF98:
	.string	"sockaddr_ns"
.LASF121:
	.string	"apid"
.LASF44:
	.string	"_IO_FILE"
.LASF173:
	.string	"open_device"
.LASF174:
	.string	"again"
.LASF145:
	.string	"__buf"
.LASF74:
	.string	"__environ"
.LASF157:
	.string	"select"
.LASF163:
	.string	"_gcry_random_read_conf"
.LASF81:
	.string	"float"
.LASF162:
	.string	"_gcry_rndjent_fini"
.LASF48:
	.string	"_pos"
.LASF86:
	.string	"sa_family"
.LASF57:
	.string	"sys_errlist"
.LASF166:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fvisibility=hidden -fno-delete-null-pointer-checks -fPIC -fstack-protector-strong"
.LASF27:
	.string	"_markers"
.LASF149:
	.string	"syscall"
.LASF1:
	.string	"unsigned char"
.LASF97:
	.string	"sockaddr_iso"
.LASF104:
	.string	"_gcry_global_any_init_done"
.LASF127:
	.string	"delay"
.LASF65:
	.string	"__fd_mask"
.LASF30:
	.string	"_flags2"
.LASF58:
	.string	"_sys_nerr"
.LASF116:
	.string	"fd_urandom"
.LASF33:
	.string	"_vtable_offset"
.LASF122:
	.string	"buffer"
.LASF50:
	.string	"_IO_2_1_stdout_"
.LASF90:
	.string	"sockaddr_ax25"
.LASF168:
	.string	"/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/random"
.LASF113:
	.string	"origin"
.LASF77:
	.string	"optind"
.LASF176:
	.string	"__stack_chk_fail"
.LASF79:
	.string	"optopt"
.LASF172:
	.string	"_gcry_rndlinux_gather_random"
.LASF135:
	.string	"_vset_long"
.LASF83:
	.string	"long double"
.LASF114:
	.string	"length"
.LASF14:
	.string	"char"
.LASF11:
	.string	"__time_t"
.LASF126:
	.string	"any_need_entropy"
.LASF159:
	.string	"_gcry_rndhw_poll_slow"
.LASF147:
	.string	"__errno_location"
.LASF78:
	.string	"opterr"
.LASF158:
	.string	"getpid"
.LASF46:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF32:
	.string	"_cur_column"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF112:
	.string	"RANDOM_ORIGIN_EXTRAPOLL"
.LASF92:
	.string	"sockaddr_eon"
.LASF124:
	.string	"want"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF64:
	.string	"tv_usec"
.LASF84:
	.string	"sa_family_t"
.LASF43:
	.string	"_unused2"
.LASF55:
	.string	"stderr"
.LASF133:
	.string	"_vlen"
.LASF111:
	.string	"RANDOM_ORIGIN_SLOWPOLL"
.LASF146:
	.string	"__nbytes"
.LASF94:
	.string	"sockaddr_in6"
.LASF85:
	.string	"sockaddr"
.LASF93:
	.string	"sockaddr_in"
.LASF134:
	.string	"_vset"
.LASF73:
	.string	"tz_dsttime"
.LASF103:
	.string	"GCRY_VERY_STRONG_RANDOM"
.LASF177:
	.string	"__open_alias"
.LASF119:
	.string	"ever_opened"
.LASF143:
	.string	"read"
.LASF61:
	.string	"pid_t"
.LASF87:
	.string	"sa_data"
.LASF148:
	.string	"_gcry_pre_syscall"
.LASF151:
	.string	"strerror"
.LASF19:
	.string	"_IO_write_base"
.LASF82:
	.string	"double"
.LASF167:
	.string	"rndlinux.c"
.LASF10:
	.string	"__pid_t"
.LASF160:
	.string	"_gcry_fast_wipememory"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
