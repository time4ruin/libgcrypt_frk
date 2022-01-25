/* created by config.links - do not edit */
/* Host: x86_64-pc-linux-gnu */
#define ELF_SYNTAX
/* syntax.h -- Definitions for x86 syntax variations.
 *
 *       Copyright (C) 1992, 1994, 1995, 1998, 
 *                     2001, 2002 Free Software Foundation, Inc.
 *
 * This file is part of Libgcrypt.
 *
 * Libgcrypt is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2.1 of
 * the License, or (at your option) any later version.
 *
 * Libgcrypt is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 *
 * Note: This code is heavily based on the GNU MP Library.
 *	 Actually it's the same code with only minor changes in the
 *	 way the data is stored; this is to support the abstraction
 *	 of an optional secure memory allocation which may be used
 *	 to avoid revealing of sensitive data due to paging etc.
 */

#include <config.h>

#ifdef __i386__
#ifdef HAVE_GCC_ASM_CFI_DIRECTIVES
# define CFI_STARTPROC()            .cfi_startproc
# define CFI_ENDPROC()              .cfi_endproc
# define CFI_ADJUST_CFA_OFFSET(off) .cfi_adjust_cfa_offset off
# define CFI_REL_OFFSET(reg,off)    .cfi_rel_offset reg, off
# define CFI_RESTORE(reg)           .cfi_restore reg

# define CFI_PUSH(reg) \
	CFI_ADJUST_CFA_OFFSET(4); CFI_REL_OFFSET(reg, 0)
# define CFI_POP(reg) \
	CFI_ADJUST_CFA_OFFSET(-4); CFI_RESTORE(reg)
#else
# define CFI_STARTPROC()
# define CFI_ENDPROC()
# define CFI_ADJUST_CFA_OFFSET(off)
# define CFI_REL_OFFSET(reg,off)
# define CFI_RESTORE(reg)

# define CFI_PUSH(reg)
# define CFI_POP(reg)
#endif
#endif

#undef ALIGN

#if defined (BSD_SYNTAX) || defined (ELF_SYNTAX)
#define R(r) %r
#define MEM(base)(base)
#define MEM_DISP(base,displacement)displacement(R(base))
#define MEM_INDEX(base,index,size)(R(base),R(index),size)
#ifdef __STDC__
#define INSN1(mnemonic,size_suffix,dst)mnemonic##size_suffix dst
#define INSN2(mnemonic,size_suffix,dst,src)mnemonic##size_suffix src,dst
#else
#define INSN1(mnemonic,size_suffix,dst)mnemonic/**/size_suffix dst
#define INSN2(mnemonic,size_suffix,dst,src)mnemonic/**/size_suffix src,dst
#endif
#define TEXT .text
#if defined (BSD_SYNTAX)
#define ALIGN(log) .align log
#endif
#if defined (ELF_SYNTAX)
#define ALIGN(log) .align 1<<(log)
#endif
#define GLOBL .globl
#endif

#ifdef INTEL_SYNTAX
#define R(r) r
#define MEM(base)[base]
#define MEM_DISP(base,displacement)[base+(displacement)]
#define MEM_INDEX(base,index,size)[base+index*size]
#define INSN1(mnemonic,size_suffix,dst)mnemonic dst
#define INSN2(mnemonic,size_suffix,dst,src)mnemonic dst,src
#define TEXT .text
#define ALIGN(log) .align log
#define GLOBL .globl
#endif

#ifdef X86_BROKEN_ALIGN
#undef ALIGN
#define ALIGN(log) .align log,0x90
#endif
#include <config.h>

#ifdef __x86_64__
#ifdef HAVE_GCC_ASM_CFI_DIRECTIVES
# define CFI_STARTPROC()            .cfi_startproc
# define CFI_ENDPROC()              .cfi_endproc
# define CFI_ADJUST_CFA_OFFSET(off) .cfi_adjust_cfa_offset off
# define CFI_REL_OFFSET(reg,off)    .cfi_rel_offset reg, off
# define CFI_RESTORE(reg)           .cfi_restore reg

# define CFI_PUSH(reg) \
	CFI_ADJUST_CFA_OFFSET(8); CFI_REL_OFFSET(reg, 0)
# define CFI_POP(reg) \
	CFI_ADJUST_CFA_OFFSET(-8); CFI_RESTORE(reg)
#else
# define CFI_STARTPROC()
# define CFI_ENDPROC()
# define CFI_ADJUST_CFA_OFFSET(off)
# define CFI_REL_OFFSET(reg,off)
# define CFI_RESTORE(reg)

# define CFI_PUSH(reg)
# define CFI_POP(reg)
#endif
#endif

#ifdef USE_MS_ABI
 /* Store registers and move four first input arguments from MS ABI to
  * SYSV ABI.  */
 #define FUNC_ENTRY() \
	CFI_STARTPROC(); \
	pushq %rsi; \
	CFI_PUSH(%rsi); \
	pushq %rdi; \
	CFI_PUSH(%rdi); \
	movq %rdx, %rsi; \
	movq %rcx, %rdi; \
	movq %r8, %rdx; \
	movq %r9, %rcx;

 /* Restore registers.  */
 #define FUNC_EXIT() \
	popq %rdi; \
	CFI_POP(%rdi); \
	popq %rsi; \
	CFI_POP(%rsi); \
	ret; \
	CFI_ENDPROC();
#else
 #define FUNC_ENTRY() \
	CFI_STARTPROC();

 #define FUNC_EXIT() \
	ret; \
	CFI_ENDPROC();
#endif

#if defined(__ASSEMBLER__) && defined(__CET__)
# include <cet.h>
#endif
