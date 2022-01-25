	.file	"hwf-x86.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"CentaurHauls"
.LC1:
	.string	"GenuineIntel"
	.text
	.p2align 4,,15
	.globl	_gcry_hwf_detect_x86
	.hidden	_gcry_hwf_detect_x86
	.type	_gcry_hwf_detect_x86, @function
_gcry_hwf_detect_x86:
.LFB100:
	.file 1 "hwf-x86.c"
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 1 138 0
	xorl	%r9d, %r9d
	movl	%r9d, %ebx
	movl	%r9d, %ecx
	movl	%r9d, %edx
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 408 0
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 408 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LVL0:
.LBB70:
.LBB68:
.LBB38:
.LBB34:
	.loc 1 138 0
	movl	%r9d, %eax
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
#NO_APP
.LBE34:
.LBE38:
	.loc 1 202 0
	leaq	.LC0(%rip), %rdi
.LBB39:
.LBB35:
	.loc 1 138 0
	movl	%eax, %r8d
.LVL1:
.LBE35:
.LBE39:
	.loc 1 202 0
	movq	%rsp, %rax
.LVL2:
.LBB40:
.LBB36:
	.loc 1 150 0
	movl	%ecx, 8(%rsp)
	.loc 1 148 0
	movl	%ebx, (%rsp)
.LBE36:
.LBE40:
	.loc 1 202 0
	movl	$13, %ecx
.LVL3:
.LBB41:
.LBB37:
	.loc 1 152 0
	movl	%edx, 4(%rsp)
.LVL4:
.LBE37:
.LBE41:
	.loc 1 197 0
	movb	$0, 12(%rsp)
	.loc 1 202 0
	movq	%rax, %rsi
	repz cmpsb
	seta	%dil
	sbbb	$0, %dil
	movsbl	%dil, %edi
	testl	%edi, %edi
	jne	.L2
.LVL5:
.LBB42:
.LBB43:
	.loc 1 138 0
	movl	$-1073741824, %eax
	movl	%edi, %ebx
	movl	%edi, %ecx
	movl	%edi, %edx
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
.LVL6:
#NO_APP
.LBE43:
.LBE42:
	.loc 1 210 0
	cmpl	$-1073741824, %eax
	ja	.L3
.LVL7:
.LBB44:
.LBB45:
	.loc 1 138 0
	movl	$1, %eax
.LVL8:
	movl	%edi, %ebx
.L60:
	movl	%ebx, %ecx
	movl	%ebx, %edx
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
#NO_APP
.LBE45:
.LBE44:
	.loc 1 299 0
	movl	$1, %r11d
.LBB54:
.LBB46:
	.loc 1 138 0
	movl	%ecx, %edi
	movl	%edx, %r9d
.LVL9:
.LBE46:
.LBE54:
	.loc 1 187 0
	xorl	%esi, %esi
	jmp	.L4
.LVL10:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 235 0
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rsi
	movl	$13, %ecx
.LBB55:
.LBB47:
	.loc 1 138 0
	movl	$1, %eax
.LBE47:
.LBE55:
	.loc 1 235 0
	repz cmpsb
	seta	%bl
	sbbb	$0, %bl
	movsbl	%bl, %ebx
	testl	%ebx, %ebx
	jne	.L62
.LVL11:
.LBB56:
.LBB48:
	.loc 1 138 0
	movl	%ebx, %ecx
	movl	%ebx, %edx
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
#NO_APP
	movl	%ecx, %edi
	movl	%edx, %r9d
.LVL12:
.LBE48:
.LBE56:
	.loc 1 251 0
	movl	%eax, %ecx
.LVL13:
	movl	%eax, %edx
.LVL14:
	shrl	$20, %ecx
.LVL15:
	shrl	$8, %edx
.LVL16:
	movzbl	%cl, %ecx
.LVL17:
	andl	$15, %edx
.LVL18:
	addl	%ecx, %edx
	.loc 1 254 0
	cmpl	$6, %edx
	je	.L9
	.loc 1 299 0
	movl	$1, %r11d
	.loc 1 254 0
	movl	$16, %esi
.LVL19:
.L4:
	.loc 1 328 0
	movl	%esi, %eax
	.loc 1 343 0
	movl	%edi, %r10d
	.loc 1 328 0
	orb	$2, %ah
	testb	$2, %dil
	cmovne	%eax, %esi
.LVL20:
	.loc 1 332 0
	movl	%esi, %eax
	orb	$-128, %al
	testl	$512, %edi
	cmovne	%eax, %esi
.LVL21:
	.loc 1 335 0
	movl	%esi, %eax
	orb	$1, %ah
	testl	$524288, %edi
	cmovne	%eax, %esi
.LVL22:
	.loc 1 339 0
	movl	%esi, %eax
	orb	$4, %ah
	testl	$33554432, %edi
	cmovne	%eax, %esi
.LVL23:
	.loc 1 343 0
	andl	$134217728, %r10d
	je	.L17
.LBB57:
.LBB58:
	.loc 1 161 0
	xorl	%ecx, %ecx
#APP
# 161 "hwf-x86.c" 1
	xgetbv
	
# 0 "" 2
#NO_APP
.LBE58:
.LBE57:
	.loc 1 346 0
	andl	$6, %eax
	.loc 1 184 0
	xorl	%r10d, %r10d
	.loc 1 346 0
	cmpl	$6, %eax
	je	.L63
.LVL24:
.L17:
	.loc 1 359 0
	movl	%esi, %eax
	orb	$8, %ah
	testl	$1073741824, %edi
	cmovne	%eax, %esi
.LVL25:
	.loc 1 364 0
	movl	%esi, %eax
	orb	$-128, %ah
	andl	$16, %r9d
	cmovne	%eax, %esi
.LVL26:
	.loc 1 370 0
	cmpl	$6, %r8d
	jbe	.L1
	andl	$1, %edi
	je	.L1
.LVL27:
.LBB59:
.LBB60:
	.loc 1 138 0
	xorl	%ebx, %ebx
	movl	$7, %eax
	movl	%ebx, %ecx
	movl	%ebx, %edx
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
.LVL28:
#NO_APP
.LBE60:
.LBE59:
	.loc 1 377 0
	movl	%esi, %eax
	orl	$64, %eax
	testb	$1, %bh
	cmovne	%eax, %esi
.LVL29:
	.loc 1 381 0
	movl	%ebx, %eax
	shrl	$5, %eax
	.loc 1 382 0
	andb	%al, %r10b
	jne	.L22
	movl	%esi, %r10d
	shrl	$13, %r10d
	andl	$1, %r10d
.L23:
	.loc 1 385 0
	testl	%r11d, %r11d
	jne	.L24
	.loc 1 386 0
	movl	%esi, %eax
	orb	$64, %ah
	testb	%r10b, %r10b
	cmovne	%eax, %esi
.LVL30:
.L24:
	.loc 1 391 0
	movl	%esi, %eax
	orl	$65536, %eax
	andl	$536870912, %ebx
.LVL31:
	cmovne	%eax, %esi
.LVL32:
	.loc 1 396 0
	andl	$1536, %ecx
.LVL33:
	.loc 1 397 0
	movl	%esi, %eax
	orl	$131072, %eax
	cmpl	$1536, %ecx
	cmove	%eax, %esi
.LVL34:
.L1:
.LBE68:
.LBE70:
	.loc 1 414 0
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	movl	%esi, %eax
	jne	.L64
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.LVL35:
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
.LBB71:
.LBB69:
.LBB61:
.LBB62:
	.loc 1 138 0
	movl	$-1073741823, %eax
.LVL36:
	movl	%edi, %ebx
	movl	%edi, %ecx
	movl	%edi, %edx
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
.LVL37:
#NO_APP
.LBE62:
.LBE61:
	.loc 1 216 0
	movl	%edx, %eax
	xorl	%esi, %esi
	.loc 1 220 0
	movl	%edx, %ecx
	.loc 1 216 0
	andl	$12, %eax
.LBB63:
.LBB49:
	.loc 1 138 0
	movl	%edi, %ebx
.LBE49:
.LBE63:
	.loc 1 216 0
	cmpl	$12, %eax
	sete	%sil
.LVL38:
	.loc 1 220 0
	andl	$192, %ecx
	.loc 1 221 0
	movl	%esi, %eax
	orl	$2, %eax
	cmpl	$192, %ecx
	.loc 1 225 0
	movl	%edx, %ecx
	.loc 1 221 0
	cmove	%eax, %esi
.LVL39:
	.loc 1 225 0
	andl	$3072, %ecx
	.loc 1 226 0
	movl	%esi, %eax
	orl	$4, %eax
	cmpl	$3072, %ecx
.LBB64:
.LBB50:
	.loc 1 138 0
	movl	%edi, %ecx
.LBE50:
.LBE64:
	.loc 1 226 0
	cmove	%eax, %esi
.LVL40:
	.loc 1 230 0
	andl	$12288, %edx
.LVL41:
	.loc 1 231 0
	movl	%esi, %eax
	orl	$8, %eax
	cmpl	$12288, %edx
.LBB65:
.LBB51:
	.loc 1 138 0
	movl	%edi, %edx
.LBE51:
.LBE65:
	.loc 1 231 0
	cmove	%eax, %esi
.LVL42:
.LBB66:
.LBB52:
	.loc 1 138 0
	movl	$1, %eax
#APP
# 138 "hwf-x86.c" 1
	cpuid
	
# 0 "" 2
#NO_APP
.LBE52:
.LBE66:
	.loc 1 299 0
	movl	$1, %r11d
.LBB67:
.LBB53:
	.loc 1 138 0
	movl	%ecx, %edi
	movl	%edx, %r9d
.LVL43:
	jmp	.L4
.LVL44:
	.p2align 4,,10
	.p2align 3
.L62:
	movl	%r9d, %ebx
	jmp	.L60
.LVL45:
	.p2align 4,,10
	.p2align 3
.L9:
.LBE53:
.LBE67:
	.loc 1 252 0
	movl	%eax, %ecx
	shrl	$12, %eax
.LVL46:
	shrl	$4, %ecx
.LVL47:
	andl	$240, %eax
	andl	$15, %ecx
	orl	%ecx, %eax
	.loc 1 258 0
	leal	-42(%rax), %edx
	cmpl	$116, %edx
	ja	.L10
	leaq	.L12(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L27-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L27-.L12
	.text
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 277 0
	movl	$48, %esi
.L11:
.LVL48:
	leal	-60(%rax), %ecx
	.loc 1 188 0
	xorl	%r11d, %r11d
	cmpl	$10, %ecx
	ja	.L4
	.loc 1 299 0
	movl	$1, %eax
	xorl	%r11d, %r11d
	salq	%cl, %rax
	testl	$1545, %eax
	setne	%r11b
	jmp	.L4
.LVL49:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 258 0
	movl	$16, %esi
	jmp	.L11
.LVL50:
	.p2align 4,,10
	.p2align 3
.L63:
	.loc 1 352 0
	testl	$268435456, %edi
	.loc 1 347 0
	movl	$1, %r10d
	.loc 1 352 0
	je	.L17
	.loc 1 354 0
	orl	$4096, %esi
.LVL51:
	jmp	.L17
.LVL52:
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 383 0
	orl	$8192, %esi
.LVL53:
	jmp	.L23
.LVL54:
.L64:
.LBE69:
.LBE71:
	.loc 1 414 0
	call	__stack_chk_fail@PLT
.LVL55:
	.cfi_endproc
.LFE100:
	.size	_gcry_hwf_detect_x86, .-_gcry_hwf_detect_x86
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 7 "/usr/include/unistd.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 12 "g10lib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x99e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc
	.long	.LASF103
	.long	.LASF104
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x8
	.long	.LASF40
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x21a
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0xfb
	.long	0x88
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x88
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x88
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x88
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x88
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x88
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x88
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x88
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x104
	.long	0x88
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x88
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x88
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x108
	.long	0x252
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x10a
	.long	0x258
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x25e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x11c
	.long	0x26e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x12d
	.long	0x86
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x86
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x86
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x86
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x274
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF105
	.byte	0x4
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x252
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0xa1
	.long	0x252
	.byte	0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x258
	.byte	0x8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x221
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0xc
	.long	0x8e
	.long	0x26e
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21a
	.uleb128 0xc
	.long	0x8e
	.long	0x284
	.uleb128 0xd
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF68
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.value	0x13f
	.long	0x284
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.value	0x140
	.long	0x284
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x141
	.long	0x284
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x7
	.long	0x2ad
	.uleb128 0x10
	.long	.LASF48
	.byte	0x5
	.byte	0x87
	.long	0x258
	.uleb128 0x10
	.long	.LASF49
	.byte	0x5
	.byte	0x88
	.long	0x258
	.uleb128 0x10
	.long	.LASF50
	.byte	0x5
	.byte	0x89
	.long	0x258
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x1a
	.long	0x62
	.uleb128 0xc
	.long	0x2b3
	.long	0x2ef
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x2e4
	.uleb128 0x10
	.long	.LASF52
	.byte	0x6
	.byte	0x1b
	.long	0x2ef
	.uleb128 0x10
	.long	.LASF53
	.byte	0x6
	.byte	0x1e
	.long	0x62
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x1f
	.long	0x2ef
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.value	0x222
	.long	0x32f
	.uleb128 0x6
	.byte	0x8
	.long	0x88
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.value	0x224
	.long	0x32f
	.uleb128 0x10
	.long	.LASF59
	.byte	0x8
	.byte	0x24
	.long	0x88
	.uleb128 0x10
	.long	.LASF60
	.byte	0x8
	.byte	0x32
	.long	0x62
	.uleb128 0x10
	.long	.LASF61
	.byte	0x8
	.byte	0x37
	.long	0x62
	.uleb128 0x10
	.long	.LASF62
	.byte	0x8
	.byte	0x3b
	.long	0x62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x1c
	.long	0x46
	.uleb128 0x8
	.long	.LASF65
	.byte	0x10
	.byte	0xa
	.byte	0xaf
	.long	0x3a4
	.uleb128 0x9
	.long	.LASF66
	.byte	0xa
	.byte	0xb1
	.long	0x374
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0xa
	.byte	0xb2
	.long	0x3a9
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	0x37f
	.uleb128 0xc
	.long	0x8e
	.long	0x3b9
	.uleb128 0xd
	.long	0x38
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37f
	.uleb128 0x12
	.long	0x3b9
	.uleb128 0xe
	.long	.LASF69
	.uleb128 0x7
	.long	0x3c4
	.uleb128 0x6
	.byte	0x8
	.long	0x3c4
	.uleb128 0x12
	.long	0x3ce
	.uleb128 0xe
	.long	.LASF70
	.uleb128 0x7
	.long	0x3d9
	.uleb128 0x6
	.byte	0x8
	.long	0x3d9
	.uleb128 0x12
	.long	0x3e3
	.uleb128 0xe
	.long	.LASF71
	.uleb128 0x7
	.long	0x3ee
	.uleb128 0x6
	.byte	0x8
	.long	0x3ee
	.uleb128 0x12
	.long	0x3f8
	.uleb128 0xe
	.long	.LASF72
	.uleb128 0x7
	.long	0x403
	.uleb128 0x6
	.byte	0x8
	.long	0x403
	.uleb128 0x12
	.long	0x40d
	.uleb128 0xe
	.long	.LASF73
	.uleb128 0x7
	.long	0x418
	.uleb128 0x6
	.byte	0x8
	.long	0x418
	.uleb128 0x12
	.long	0x422
	.uleb128 0xe
	.long	.LASF74
	.uleb128 0x7
	.long	0x42d
	.uleb128 0x6
	.byte	0x8
	.long	0x42d
	.uleb128 0x12
	.long	0x437
	.uleb128 0xe
	.long	.LASF75
	.uleb128 0x7
	.long	0x442
	.uleb128 0x6
	.byte	0x8
	.long	0x442
	.uleb128 0x12
	.long	0x44c
	.uleb128 0xe
	.long	.LASF76
	.uleb128 0x7
	.long	0x457
	.uleb128 0x6
	.byte	0x8
	.long	0x457
	.uleb128 0x12
	.long	0x461
	.uleb128 0xe
	.long	.LASF77
	.uleb128 0x7
	.long	0x46c
	.uleb128 0x6
	.byte	0x8
	.long	0x46c
	.uleb128 0x12
	.long	0x476
	.uleb128 0xe
	.long	.LASF78
	.uleb128 0x7
	.long	0x481
	.uleb128 0x6
	.byte	0x8
	.long	0x481
	.uleb128 0x12
	.long	0x48b
	.uleb128 0xe
	.long	.LASF79
	.uleb128 0x7
	.long	0x496
	.uleb128 0x6
	.byte	0x8
	.long	0x496
	.uleb128 0x12
	.long	0x4a0
	.uleb128 0xe
	.long	.LASF80
	.uleb128 0x7
	.long	0x4ab
	.uleb128 0x6
	.byte	0x8
	.long	0x4ab
	.uleb128 0x12
	.long	0x4b5
	.uleb128 0x6
	.byte	0x8
	.long	0x3a4
	.uleb128 0x12
	.long	0x4c0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c9
	.uleb128 0x12
	.long	0x4cb
	.uleb128 0x6
	.byte	0x8
	.long	0x3de
	.uleb128 0x12
	.long	0x4d6
	.uleb128 0x6
	.byte	0x8
	.long	0x3f3
	.uleb128 0x12
	.long	0x4e1
	.uleb128 0x6
	.byte	0x8
	.long	0x408
	.uleb128 0x12
	.long	0x4ec
	.uleb128 0x6
	.byte	0x8
	.long	0x41d
	.uleb128 0x12
	.long	0x4f7
	.uleb128 0x6
	.byte	0x8
	.long	0x432
	.uleb128 0x12
	.long	0x502
	.uleb128 0x6
	.byte	0x8
	.long	0x447
	.uleb128 0x12
	.long	0x50d
	.uleb128 0x6
	.byte	0x8
	.long	0x45c
	.uleb128 0x12
	.long	0x518
	.uleb128 0x6
	.byte	0x8
	.long	0x471
	.uleb128 0x12
	.long	0x523
	.uleb128 0x6
	.byte	0x8
	.long	0x486
	.uleb128 0x12
	.long	0x52e
	.uleb128 0x6
	.byte	0x8
	.long	0x49b
	.uleb128 0x12
	.long	0x539
	.uleb128 0x6
	.byte	0x8
	.long	0x4b0
	.uleb128 0x12
	.long	0x544
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0xb
	.byte	0x34
	.long	0x574
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x36
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF83
	.byte	0xb
	.byte	0x37
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54f
	.uleb128 0x12
	.long	0x574
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF84
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF85
	.uleb128 0x10
	.long	.LASF86
	.byte	0xc
	.byte	0x71
	.long	0x62
	.uleb128 0xf
	.long	.LASF87
	.byte	0xc
	.value	0x1be
	.long	0x62
	.uleb128 0x13
	.long	.LASF106
	.byte	0x1
	.value	0x197
	.long	0x4d
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x846
	.uleb128 0x14
	.long	0x846
	.quad	.LBB30
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x19a
	.long	0x838
	.uleb128 0x15
	.long	.Ldebug_ranges0+0
	.uleb128 0x16
	.long	0x872
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	0x87d
	.long	.LLST0
	.uleb128 0x17
	.long	0x888
	.long	.LLST1
	.uleb128 0x17
	.long	0x893
	.long	.LLST2
	.uleb128 0x17
	.long	0x89e
	.long	.LLST3
	.uleb128 0x17
	.long	0x8a9
	.long	.LLST4
	.uleb128 0x17
	.long	0x8b4
	.long	.LLST5
	.uleb128 0x17
	.long	0x8bf
	.long	.LLST6
	.uleb128 0x17
	.long	0x8ca
	.long	.LLST7
	.uleb128 0x17
	.long	0x8d5
	.long	.LLST8
	.uleb128 0x18
	.long	0x928
	.quad	.LBB32
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xc3
	.long	0x690
	.uleb128 0x19
	.long	0x95f
	.long	.LLST9
	.uleb128 0x19
	.long	0x954
	.long	.LLST10
	.uleb128 0x19
	.long	0x949
	.long	.LLST11
	.uleb128 0x19
	.long	0x93e
	.long	.LLST12
	.uleb128 0x19
	.long	0x934
	.long	.LLST13
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x17
	.long	0x96a
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x928
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0xcf
	.long	0x6f0
	.uleb128 0x19
	.long	0x95f
	.long	.LLST15
	.uleb128 0x19
	.long	0x954
	.long	.LLST15
	.uleb128 0x19
	.long	0x949
	.long	.LLST15
	.uleb128 0x19
	.long	0x93e
	.long	.LLST18
	.uleb128 0x19
	.long	0x934
	.long	.LLST19
	.uleb128 0x1b
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x1c
	.long	0x96a
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x928
	.quad	.LBB44
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xf9
	.long	0x740
	.uleb128 0x19
	.long	0x95f
	.long	.LLST20
	.uleb128 0x19
	.long	0x954
	.long	.LLST21
	.uleb128 0x19
	.long	0x949
	.long	.LLST22
	.uleb128 0x19
	.long	0x93e
	.long	.LLST23
	.uleb128 0x19
	.long	0x934
	.long	.LLST24
	.uleb128 0x15
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1c
	.long	0x96a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x901
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0x1
	.value	0x15a
	.long	0x779
	.uleb128 0x1b
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x1c
	.long	0x911
	.uleb128 0x1c
	.long	0x91c
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x928
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x1
	.value	0x175
	.long	0x7da
	.uleb128 0x19
	.long	0x95f
	.long	.LLST25
	.uleb128 0x19
	.long	0x954
	.long	.LLST26
	.uleb128 0x19
	.long	0x949
	.long	.LLST27
	.uleb128 0x19
	.long	0x93e
	.long	.LLST25
	.uleb128 0x19
	.long	0x934
	.long	.LLST29
	.uleb128 0x1b
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x1c
	.long	0x96a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x928
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x1
	.byte	0xd5
	.uleb128 0x19
	.long	0x95f
	.long	.LLST30
	.uleb128 0x19
	.long	0x954
	.long	.LLST31
	.uleb128 0x19
	.long	0x949
	.long	.LLST31
	.uleb128 0x19
	.long	0x93e
	.long	.LLST31
	.uleb128 0x19
	.long	0x934
	.long	.LLST34
	.uleb128 0x1b
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x1c
	.long	0x96a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL55
	.long	0x998
	.byte	0
	.uleb128 0x20
	.long	.LASF97
	.byte	0x1
	.byte	0xb0
	.long	0x4d
	.byte	0x1
	.long	0x8e1
	.uleb128 0x21
	.byte	0x10
	.byte	0x1
	.byte	0xb2
	.long	0x872
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0xb4
	.long	0x8e1
	.uleb128 0x22
	.string	"ui"
	.byte	0x1
	.byte	0xb5
	.long	0x8f1
	.byte	0
	.uleb128 0x23
	.long	.LASF88
	.byte	0x1
	.byte	0xb6
	.long	0x856
	.uleb128 0x23
	.long	.LASF89
	.byte	0x1
	.byte	0xb7
	.long	0x4d
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.byte	0xb7
	.long	0x4d
	.uleb128 0x23
	.long	.LASF91
	.byte	0x1
	.byte	0xb8
	.long	0x4d
	.uleb128 0x23
	.long	.LASF92
	.byte	0x1
	.byte	0xb9
	.long	0x4d
	.uleb128 0x24
	.string	"fms"
	.byte	0x1
	.byte	0xba
	.long	0x4d
	.uleb128 0x23
	.long	.LASF93
	.byte	0x1
	.byte	0xba
	.long	0x4d
	.uleb128 0x23
	.long	.LASF94
	.byte	0x1
	.byte	0xba
	.long	0x4d
	.uleb128 0x23
	.long	.LASF95
	.byte	0x1
	.byte	0xbb
	.long	0x4d
	.uleb128 0x23
	.long	.LASF96
	.byte	0x1
	.byte	0xbc
	.long	0x4d
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.long	0x8f1
	.uleb128 0xd
	.long	0x38
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	0x4d
	.long	0x901
	.uleb128 0xd
	.long	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.long	.LASF98
	.byte	0x1
	.byte	0x9d
	.long	0x4d
	.byte	0x1
	.long	0x928
	.uleb128 0x23
	.long	.LASF99
	.byte	0x1
	.byte	0x9f
	.long	0x4d
	.uleb128 0x23
	.long	.LASF100
	.byte	0x1
	.byte	0x9f
	.long	0x4d
	.byte	0
	.uleb128 0x25
	.long	.LASF107
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x976
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.byte	0x85
	.long	0x4d
	.uleb128 0x26
	.string	"eax"
	.byte	0x1
	.byte	0x85
	.long	0x976
	.uleb128 0x26
	.string	"ebx"
	.byte	0x1
	.byte	0x85
	.long	0x976
	.uleb128 0x26
	.string	"ecx"
	.byte	0x1
	.byte	0x86
	.long	0x976
	.uleb128 0x26
	.string	"edx"
	.byte	0x1
	.byte	0x86
	.long	0x976
	.uleb128 0x23
	.long	.LASF101
	.byte	0x1
	.byte	0x88
	.long	0x97c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d
	.uleb128 0xc
	.long	0x4d
	.long	0x98c
	.uleb128 0xd
	.long	0x38
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.long	.LASF108
	.byte	0x1
	.byte	0x7f
	.long	0x62
	.byte	0x1
	.uleb128 0x28
	.long	.LASF109
	.long	.LASF109
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x17
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
	.uleb128 0x22
	.uleb128 0xd
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL6-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL13-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL37-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL45-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL52-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL14-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL28-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL45-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL52-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL2-.Ltext0
	.quad	.LVL55-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL12-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL12-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0xd
	.byte	0x71
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL12-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL0-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL35-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL0-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL35-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL55-1-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x57
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1542
	.sleb128 0
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0xd
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x5
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1524
	.sleb128 0
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1524
	.sleb128 0
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1524
	.sleb128 0
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1524
	.sleb128 0
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1551
	.sleb128 0
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1551
	.sleb128 0
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1551
	.sleb128 0
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1551
	.sleb128 0
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1524
	.sleb128 0
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1515
	.sleb128 0
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0xc0000001
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
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF60:
	.string	"optind"
.LASF59:
	.string	"optarg"
.LASF95:
	.string	"result"
.LASF58:
	.string	"environ"
.LASF85:
	.string	"double"
.LASF40:
	.string	"_IO_FILE"
.LASF51:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF77:
	.string	"sockaddr_iso"
.LASF7:
	.string	"size_t"
.LASF98:
	.string	"get_xgetbv"
.LASF75:
	.string	"sockaddr_inarp"
.LASF32:
	.string	"_offset"
.LASF86:
	.string	"_gcry_global_any_init_done"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF79:
	.string	"sockaddr_un"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF53:
	.string	"_sys_nerr"
.LASF57:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF89:
	.string	"features"
.LASF81:
	.string	"timezone"
.LASF108:
	.string	"is_cpuid_available"
.LASF96:
	.string	"avoid_vpgather"
.LASF82:
	.string	"tz_minuteswest"
.LASF5:
	.string	"short int"
.LASF54:
	.string	"_sys_errlist"
.LASF84:
	.string	"float"
.LASF92:
	.string	"max_cpuid_level"
.LASF50:
	.string	"stderr"
.LASF78:
	.string	"sockaddr_ns"
.LASF55:
	.string	"long long int"
.LASF100:
	.string	"t_edx"
.LASF26:
	.string	"_flags2"
.LASF97:
	.string	"detect_x86_gnuc"
.LASF31:
	.string	"_lock"
.LASF74:
	.string	"sockaddr_in6"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF83:
	.string	"tz_dsttime"
.LASF68:
	.string	"_IO_FILE_plus"
.LASF44:
	.string	"_pos"
.LASF15:
	.string	"_IO_write_base"
.LASF43:
	.string	"_sbuf"
.LASF88:
	.string	"vendor_id"
.LASF63:
	.string	"long double"
.LASF64:
	.string	"sa_family_t"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fvisibility=hidden -fno-delete-null-pointer-checks -fPIC -fstack-protector-strong"
.LASF70:
	.string	"sockaddr_ax25"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"long long unsigned int"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF93:
	.string	"family"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF33:
	.string	"__pad1"
.LASF13:
	.string	"_IO_read_end"
.LASF27:
	.string	"_old_offset"
.LASF24:
	.string	"_chain"
.LASF39:
	.string	"_unused2"
.LASF61:
	.string	"opterr"
.LASF67:
	.string	"sa_data"
.LASF90:
	.string	"features2"
.LASF2:
	.string	"short unsigned int"
.LASF104:
	.string	"/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/src"
.LASF71:
	.string	"sockaddr_dl"
.LASF10:
	.string	"char"
.LASF87:
	.string	"_gcry_no_fips_mode_required"
.LASF42:
	.string	"_next"
.LASF91:
	.string	"os_supports_avx_avx2_registers"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF69:
	.string	"sockaddr_at"
.LASF0:
	.string	"long unsigned int"
.LASF99:
	.string	"t_eax"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF80:
	.string	"sockaddr_x25"
.LASF25:
	.string	"_fileno"
.LASF103:
	.string	"hwf-x86.c"
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_backup_base"
.LASF48:
	.string	"stdin"
.LASF18:
	.string	"_IO_buf_base"
.LASF101:
	.string	"regs"
.LASF94:
	.string	"model"
.LASF66:
	.string	"sa_family"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF52:
	.string	"sys_errlist"
.LASF62:
	.string	"optopt"
.LASF72:
	.string	"sockaddr_eon"
.LASF109:
	.string	"__stack_chk_fail"
.LASF12:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"get_cpuid"
.LASF76:
	.string	"sockaddr_ipx"
.LASF73:
	.string	"sockaddr_in"
.LASF49:
	.string	"stdout"
.LASF65:
	.string	"sockaddr"
.LASF105:
	.string	"_IO_lock_t"
.LASF106:
	.string	"_gcry_hwf_detect_x86"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
