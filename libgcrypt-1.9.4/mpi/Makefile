# Makefile.in generated by automake 1.16.3 from Makefile.am.
# mpi/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2020 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# Copyright (C) 1992, 1999, 2000, 2002 Free Software Foundation, Inc.
#
# This file is part of Libgcrypt.
#
# Libgcrypt is free software; you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation; either version 2.1 of
# the License, or (at your option) any later version.
#
# Libgcrypt is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA

# 1.5 leads to a combinatorial explosion due to all the conditionals
# I was not able to build it with 64Megs - 1.6 fixes this.
# not anymore required: AUTOMAKE_OPTIONS = 1.6


am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/libgcrypt
pkgincludedir = $(includedir)/libgcrypt
pkglibdir = $(libdir)/libgcrypt
pkglibexecdir = $(libexecdir)/libgcrypt
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-pc-linux-gnu
host_triplet = x86_64-pc-linux-gnu
subdir = mpi
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/ax_cc_for_build.m4 \
	$(top_srcdir)/m4/gpg-error.m4 $(top_srcdir)/m4/libtool.m4 \
	$(top_srcdir)/m4/ltoptions.m4 $(top_srcdir)/m4/ltsugar.m4 \
	$(top_srcdir)/m4/ltversion.m4 $(top_srcdir)/m4/lt~obsolete.m4 \
	$(top_srcdir)/m4/noexecstack.m4 $(top_srcdir)/m4/socklen.m4 \
	$(top_srcdir)/acinclude.m4 $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
DIST_COMMON = $(srcdir)/Makefile.am $(am__DIST_COMMON)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
LTLIBRARIES = $(noinst_LTLIBRARIES)
libmpi_la_LIBADD =
am_libmpi_la_OBJECTS = mpi-add.lo mpi-bit.lo mpi-cmp.lo mpi-div.lo \
	mpi-gcd.lo mpi-inline.lo mpi-inv.lo mpi-mul.lo mpi-mod.lo \
	mpi-pow.lo mpi-mpow.lo mpi-scan.lo mpicoder.lo mpih-div.lo \
	mpih-mul.lo mpih-const-time.lo mpiutil.lo ec.lo ec-ed25519.lo
##am__objects_1 = mpih-add1.lo
am__objects_1 = mpih-add1-asm.lo
##am__objects_2 = mpih-sub1.lo
am__objects_2 = mpih-sub1-asm.lo
##am__objects_3 = mpih-mul1.lo
am__objects_3 = mpih-mul1-asm.lo
##am__objects_4 = mpih-mul2.lo
am__objects_4 = mpih-mul2-asm.lo
##am__objects_5 = mpih-mul3.lo
am__objects_5 = mpih-mul3-asm.lo
##am__objects_6 = mpih-lshift.lo
am__objects_6 = mpih-lshift-asm.lo
##am__objects_7 = mpih-rshift.lo
am__objects_7 = mpih-rshift-asm.lo
#am__objects_8 = udiv.lo
#am__objects_8 = udiv-asm.lo
#am__objects_9 = udiv-qrnnd.lo
#am__objects_9 = udiv-qrnnd-asm.lo
nodist_libmpi_la_OBJECTS = $(am__objects_1) $(am__objects_2) \
	$(am__objects_3) $(am__objects_4) $(am__objects_5) \
	$(am__objects_6) $(am__objects_7) $(am__objects_8) \
	$(am__objects_9)
libmpi_la_OBJECTS = $(am_libmpi_la_OBJECTS) \
	$(nodist_libmpi_la_OBJECTS)
AM_V_lt = $(am__v_lt_$(V))
am__v_lt_ = $(am__v_lt_$(AM_DEFAULT_VERBOSITY))
am__v_lt_0 = --silent
am__v_lt_1 = 
libmpi_la_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(libmpi_la_LDFLAGS) $(LDFLAGS) -o $@
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
DEFAULT_INCLUDES = -I. -I$(top_builddir)
depcomp = $(SHELL) $(top_srcdir)/build-aux/depcomp
am__maybe_remake_depfiles = depfiles
am__depfiles_remade = ./$(DEPDIR)/ec-ed25519.Plo ./$(DEPDIR)/ec.Plo \
	./$(DEPDIR)/mpi-add.Plo ./$(DEPDIR)/mpi-bit.Plo \
	./$(DEPDIR)/mpi-cmp.Plo ./$(DEPDIR)/mpi-div.Plo \
	./$(DEPDIR)/mpi-gcd.Plo ./$(DEPDIR)/mpi-inline.Plo \
	./$(DEPDIR)/mpi-inv.Plo ./$(DEPDIR)/mpi-mod.Plo \
	./$(DEPDIR)/mpi-mpow.Plo ./$(DEPDIR)/mpi-mul.Plo \
	./$(DEPDIR)/mpi-pow.Plo ./$(DEPDIR)/mpi-scan.Plo \
	./$(DEPDIR)/mpicoder.Plo ./$(DEPDIR)/mpih-add1-asm.Plo \
	./$(DEPDIR)/mpih-add1.Plo ./$(DEPDIR)/mpih-const-time.Plo \
	./$(DEPDIR)/mpih-div.Plo ./$(DEPDIR)/mpih-lshift-asm.Plo \
	./$(DEPDIR)/mpih-lshift.Plo ./$(DEPDIR)/mpih-mul.Plo \
	./$(DEPDIR)/mpih-mul1-asm.Plo ./$(DEPDIR)/mpih-mul1.Plo \
	./$(DEPDIR)/mpih-mul2-asm.Plo ./$(DEPDIR)/mpih-mul2.Plo \
	./$(DEPDIR)/mpih-mul3-asm.Plo ./$(DEPDIR)/mpih-mul3.Plo \
	./$(DEPDIR)/mpih-rshift-asm.Plo ./$(DEPDIR)/mpih-rshift.Plo \
	./$(DEPDIR)/mpih-sub1-asm.Plo ./$(DEPDIR)/mpih-sub1.Plo \
	./$(DEPDIR)/mpiutil.Plo ./$(DEPDIR)/udiv-asm.Plo \
	./$(DEPDIR)/udiv-qrnnd-asm.Plo ./$(DEPDIR)/udiv-qrnnd.Plo \
	./$(DEPDIR)/udiv.Plo
am__mv = mv -f
CPPASCOMPILE = $(CCAS) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CCASFLAGS) $(CCASFLAGS)
LTCPPASCOMPILE = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=compile $(CCAS) $(DEFS) \
	$(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) \
	$(AM_CCASFLAGS) $(CCASFLAGS)
AM_V_CPPAS = $(am__v_CPPAS_$(V))
am__v_CPPAS_ = $(am__v_CPPAS_$(AM_DEFAULT_VERBOSITY))
am__v_CPPAS_0 = @echo "  CPPAS   " $@;
am__v_CPPAS_1 = 
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=compile $(CC) $(DEFS) \
	$(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) \
	$(AM_CFLAGS) $(CFLAGS)
AM_V_CC = $(am__v_CC_$(V))
am__v_CC_ = $(am__v_CC_$(AM_DEFAULT_VERBOSITY))
am__v_CC_0 = @echo "  CC      " $@;
am__v_CC_1 = 
CCLD = $(CC)
LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
AM_V_CCLD = $(am__v_CCLD_$(V))
am__v_CCLD_ = $(am__v_CCLD_$(AM_DEFAULT_VERBOSITY))
am__v_CCLD_0 = @echo "  CCLD    " $@;
am__v_CCLD_1 = 
SOURCES = $(libmpi_la_SOURCES) $(EXTRA_libmpi_la_SOURCES) \
	$(nodist_libmpi_la_SOURCES)
DIST_SOURCES = $(libmpi_la_SOURCES) $(EXTRA_libmpi_la_SOURCES)
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
# Read a list of newline-separated strings from the standard input,
# and print each of them once, without duplicates.  Input order is
# *not* preserved.
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
# Make sure the list of sources is unique.  This is necessary because,
# e.g., the same source file might be shared among _SOURCES variables
# for different programs/libraries.
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
am__DIST_COMMON = $(srcdir)/Makefile.in \
	$(top_srcdir)/build-aux/depcomp
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
ACLOCAL = ${SHELL} '/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/missing' aclocal-1.16
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 1
AR = ar
AS = as
AUTOCONF = ${SHELL} '/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/missing' autoconf
AUTOHEADER = ${SHELL} '/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/missing' autoheader
AUTOMAKE = ${SHELL} '/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/missing' automake-1.16
AWK = mawk
BUILD_FILEVERSION = 1,9,4,1346
BUILD_REVISION = 05422ca2
BUILD_TIMESTAMP = <none>
BUILD_VERSION = 1.9.4.1346
CC = gcc
CCAS = gcc
CCASDEPMODE = depmode=gcc3
CCASFLAGS = -g -O2
CCDEPMODE = depmode=gcc3
CC_FOR_BUILD = $(CC)
CFLAGS = -g -O2 -fvisibility=hidden -fno-delete-null-pointer-checks -Wall
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DLLTOOL = false
DL_LIBS = 
DSYMUTIL = 
DUMPBIN = 
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
EXEEXT_FOR_BUILD = $(EXEEXT)
FALLBACK_SOCKLEN_T = typedef socklen_t gcry_socklen_t;
FGREP = /bin/grep -F
GCRYPT_CIPHERS =  arcfour.lo arcfour-amd64.lo blowfish.lo blowfish-amd64.lo cast5.lo cast5-amd64.lo des.lo des-amd64.lo rijndael.lo rijndael-amd64.lo rijndael-ssse3-amd64.lo rijndael-ssse3-amd64-asm.lo rijndael-vaes.lo rijndael-vaes-avx2-amd64.lo rijndael-aesni.lo rijndael-padlock.lo twofish.lo twofish-amd64.lo twofish-avx2-amd64.lo serpent.lo serpent-sse2-amd64.lo serpent-avx2-amd64.lo rfc2268.lo seed.lo camellia.lo camellia-glue.lo camellia-aesni-avx-amd64.lo camellia-aesni-avx2-amd64.lo camellia-vaes-avx2-amd64.lo idea.lo salsa20.lo salsa20-amd64.lo gost28147.lo chacha20.lo chacha20-amd64-ssse3.lo chacha20-amd64-avx2.lo sm4.lo sm4-aesni-avx-amd64.lo sm4-aesni-avx2-amd64.lo
GCRYPT_DIGESTS =  crc.lo crc-intel-pclmul.lo gostr3411-94.lo stribog.lo md4.lo md5.lo rmd160.lo sha256.lo sha256-ssse3-amd64.lo sha256-avx-amd64.lo sha256-avx2-bmi2-amd64.lo sha256-intel-shaext.lo sha512.lo sha512-ssse3-amd64.lo sha512-avx-amd64.lo sha512-avx2-bmi2-amd64.lo keccak.lo tiger.lo whirlpool.lo whirlpool-sse2-amd64.lo blake2.lo blake2b-amd64-avx2.lo blake2s-amd64-avx.lo sha1.lo sha1-ssse3-amd64.lo sha1-avx-amd64.lo sha1-avx-bmi2-amd64.lo sha1-avx2-bmi2-amd64.lo sha1-intel-shaext.lo cipher-gcm-intel-pclmul.lo sm3.lo
GCRYPT_HWF_MODULES = libgcrypt_la-hwf-x86.lo
GCRYPT_KDFS =  scrypt.lo
GCRYPT_PUBKEY_CIPHERS =  dsa.lo rsa.lo elgamal.lo                           ecc.lo ecc-curves.lo ecc-misc.lo                           ecc-ecdh.lo ecc-ecdsa.lo ecc-eddsa.lo ecc-gost.lo                           ecc-sm2.lo
GCRYPT_RANDOM =  rndlinux.lo
GPGRT_CONFIG = /usr/local/bin/gpgrt-config --libdir=/usr/local/lib
GPG_ERROR_CFLAGS = -I/usr/local/include
GPG_ERROR_CONFIG = /usr/local/bin/gpgrt-config --libdir=/usr/local/lib gpg-error
GPG_ERROR_LIBS = -L/usr/local/lib -lgpg-error
GPG_ERROR_MT_CFLAGS = -I/usr/local/include 
GPG_ERROR_MT_LIBS = -L/usr/local/lib -lgpg-error -pthread
GREP = /bin/grep
INSERT_SYS_SELECT_H =  include <sys/select.h>
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LD = /usr/bin/ld -m elf_x86_64
LDADD_FOR_TESTS_KLUDGE = 
LDFLAGS = 
LIBGCRYPT_CIPHERS = arcfour blowfish cast5 des aes twofish serpent rfc2268 seed camellia idea salsa20 gost28147 chacha20 sm4
LIBGCRYPT_CONFIG_API_VERSION = 1
LIBGCRYPT_CONFIG_CFLAGS = 
LIBGCRYPT_CONFIG_HOST = x86_64-pc-linux-gnu
LIBGCRYPT_CONFIG_LIBS = -lgcrypt
LIBGCRYPT_DIGESTS = crc gostr3411-94  md4 md5 rmd160 sha1 sha256 sha512 sha3 tiger whirlpool stribog blake2 sm3
LIBGCRYPT_LT_AGE = 3
LIBGCRYPT_LT_CURRENT = 23
LIBGCRYPT_LT_REVISION = 4
LIBGCRYPT_PUBKEY_CIPHERS = dsa elgamal rsa ecc
LIBGCRYPT_THREAD_MODULES = 
LIBOBJS = 
LIBS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = 
LN_S = ln -s
LTLIBOBJS = 
MAINT = #
MAKEINFO = ${SHELL} '/home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/missing' makeinfo
MANIFEST_TOOL = :
MKDIR_P = /bin/mkdir -p
MPI_SFLAGS = 
NM = /usr/bin/nm -B
NMEDIT = 
NOEXECSTACK_FLAGS = -Wa,--noexecstack
OBJDUMP = objdump
OBJEXT = o
OTOOL = 
OTOOL64 = 
PACKAGE = libgcrypt
PACKAGE_BUGREPORT = https://bugs.gnupg.org
PACKAGE_NAME = libgcrypt
PACKAGE_STRING = libgcrypt 1.9.4
PACKAGE_TARNAME = libgcrypt
PACKAGE_URL = 
PACKAGE_VERSION = 1.9.4
PATH_SEPARATOR = :
PTH_CFLAGS = 
PTH_CONFIG = 
PTH_LIBS = 
RANLIB = ranlib
RC = 
RUN_LARGE_DATA_TESTS = no
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/bash
STRIP = strip
SYSROOT = 
VERSION = 1.9.4
VERSION_NUMBER = 0x010904
abs_builddir = /home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/mpi
abs_srcdir = /home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/mpi
abs_top_builddir = /home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4
abs_top_srcdir = /home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4
ac_ct_AR = ar
ac_ct_CC = gcc
ac_ct_DUMPBIN = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
bindir = ${exec_prefix}/bin
build = x86_64-pc-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
emacs_local_vars_begin = Local Variables:
emacs_local_vars_end = End:
emacs_local_vars_read_only = buffer-read-only: t
exec_prefix = ${prefix}
host = x86_64-pc-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = pc
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/time4ruin/Desktop/css/libgcrypt_frk/libgcrypt-1.9.4/build-aux/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
runstatedir = ${localstatedir}/run
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target_alias = 
top_build_prefix = ../
top_builddir = ..
top_srcdir = ..

# Need to include ../src in addition to top_srcdir because gcrypt.h is
# a built header.
AM_CPPFLAGS = -I../src -I$(top_srcdir)/src
AM_CFLAGS = $(GPG_ERROR_CFLAGS)
AM_ASFLAGS = $(MPI_SFLAGS)
AM_CCASFLAGS = $(NOEXECSTACK_FLAGS)
EXTRA_DIST = config.links
DISTCLEANFILES = mpi-asm-defs.h \
                 mpih-add1-asm.S mpih-mul1-asm.S mpih-mul2-asm.S mpih-mul3-asm.S  \
		 mpih-lshift-asm.S mpih-rshift-asm.S mpih-sub1-asm.S asm-syntax.h \
                 mpih-add1.c mpih-mul1.c mpih-mul2.c mpih-mul3.c  \
		 mpih-lshift.c mpih-rshift.c mpih-sub1.c \
	         sysdep.h mod-source-info.h

#mpih_add1 = 
##mpih_add1 = mpih-add1.c

# Beware: The following list is not a comment but grepped by
#         config.links to get the list of symlinked modules
#         Optional modules are marked with an O in the second column.
#BEGIN_ASM_LIST
# mpih-add1    C
# mpih-sub1    C
# mpih-mul1    C
# mpih-mul2    C
# mpih-mul3    C
# mpih-lshift  C
# mpih-rshift  C
# udiv         O
# udiv-qrnnd   O
#END_ASM_LIST

# Note: This function has not yet been implemented.  There is only a dummy in
# generic/
# udiv-w-sdiv  O

# And we need to have conditionals for all modules because
# we don't know whether they are .c or .S.  Very ugly; I know.
# Remember to define them all in configure.ac
mpih_add1 = mpih-add1-asm.S
#mpih_sub1 = 
##mpih_sub1 = mpih-sub1.c
mpih_sub1 = mpih-sub1-asm.S
#mpih_mul1 = 
##mpih_mul1 = mpih-mul1.c
mpih_mul1 = mpih-mul1-asm.S
#mpih_mul2 = 
##mpih_mul2 = mpih-mul2.c
mpih_mul2 = mpih-mul2-asm.S
#mpih_mul3 = 
##mpih_mul3 = mpih-mul3.c
mpih_mul3 = mpih-mul3-asm.S
#mpih_lshift = 
##mpih_lshift = mpih-lshift.c
mpih_lshift = mpih-lshift-asm.S
#mpih_rshift = 
##mpih_rshift = mpih-rshift.c
mpih_rshift = mpih-rshift-asm.S
udiv = 
#udiv = udiv.c
#udiv = udiv-asm.S
udiv_qrnnd = 
#udiv_qrnnd = udiv-qrnnd.c
#udiv_qrnnd = udiv-qrnnd-asm.S
noinst_LTLIBRARIES = libmpi.la
libmpi_la_LDFLAGS = 
nodist_libmpi_la_SOURCES = $(mpih_add1) $(mpih_sub1) $(mpih_mul1) \
	$(mpih_mul2) $(mpih_mul3) $(mpih_lshift) $(mpih_rshift) \
	$(udiv) $(udiv_qrnnd)

libmpi_la_SOURCES = longlong.h	   \
	      mpi-add.c      \
	      mpi-bit.c      \
	      mpi-cmp.c      \
	      mpi-div.c      \
	      mpi-gcd.c      \
	      mpi-internal.h \
	      mpi-inline.h   \
	      mpi-inline.c   \
	      mpi-inv.c      \
	      mpi-mul.c      \
	      mpi-mod.c      \
	      mpi-pow.c      \
	      mpi-mpow.c     \
	      mpi-scan.c     \
	      mpicoder.c     \
	      mpih-div.c     \
	      mpih-mul.c     \
	      mpih-const-time.c \
	      mpiutil.c         \
              ec.c ec-internal.h ec-ed25519.c

EXTRA_libmpi_la_SOURCES = asm-common-aarch64.h
all: all-am

.SUFFIXES:
.SUFFIXES: .S .c .lo .o .obj
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
	        && { if test -f $@; then exit 0; else break; fi; }; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu mpi/Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --gnu mpi/Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__maybe_remake_depfiles)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__maybe_remake_depfiles);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure: # $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(am__aclocal_m4_deps):

clean-noinstLTLIBRARIES:
	-test -z "$(noinst_LTLIBRARIES)" || rm -f $(noinst_LTLIBRARIES)
	@list='$(noinst_LTLIBRARIES)'; \
	locs=`for p in $$list; do echo $$p; done | \
	      sed 's|^[^/]*$$|.|; s|/[^/]*$$||; s|$$|/so_locations|' | \
	      sort -u`; \
	test -z "$$locs" || { \
	  echo rm -f $${locs}; \
	  rm -f $${locs}; \
	}

libmpi.la: $(libmpi_la_OBJECTS) $(libmpi_la_DEPENDENCIES) $(EXTRA_libmpi_la_DEPENDENCIES) 
	$(AM_V_CCLD)$(libmpi_la_LINK)  $(libmpi_la_OBJECTS) $(libmpi_la_LIBADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/ec-ed25519.Plo # am--include-marker
include ./$(DEPDIR)/ec.Plo # am--include-marker
include ./$(DEPDIR)/mpi-add.Plo # am--include-marker
include ./$(DEPDIR)/mpi-bit.Plo # am--include-marker
include ./$(DEPDIR)/mpi-cmp.Plo # am--include-marker
include ./$(DEPDIR)/mpi-div.Plo # am--include-marker
include ./$(DEPDIR)/mpi-gcd.Plo # am--include-marker
include ./$(DEPDIR)/mpi-inline.Plo # am--include-marker
include ./$(DEPDIR)/mpi-inv.Plo # am--include-marker
include ./$(DEPDIR)/mpi-mod.Plo # am--include-marker
include ./$(DEPDIR)/mpi-mpow.Plo # am--include-marker
include ./$(DEPDIR)/mpi-mul.Plo # am--include-marker
include ./$(DEPDIR)/mpi-pow.Plo # am--include-marker
include ./$(DEPDIR)/mpi-scan.Plo # am--include-marker
include ./$(DEPDIR)/mpicoder.Plo # am--include-marker
include ./$(DEPDIR)/mpih-add1-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-add1.Plo # am--include-marker
include ./$(DEPDIR)/mpih-const-time.Plo # am--include-marker
include ./$(DEPDIR)/mpih-div.Plo # am--include-marker
include ./$(DEPDIR)/mpih-lshift-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-lshift.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul1-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul1.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul2-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul2.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul3-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-mul3.Plo # am--include-marker
include ./$(DEPDIR)/mpih-rshift-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-rshift.Plo # am--include-marker
include ./$(DEPDIR)/mpih-sub1-asm.Plo # am--include-marker
include ./$(DEPDIR)/mpih-sub1.Plo # am--include-marker
include ./$(DEPDIR)/mpiutil.Plo # am--include-marker
include ./$(DEPDIR)/udiv-asm.Plo # am--include-marker
include ./$(DEPDIR)/udiv-qrnnd-asm.Plo # am--include-marker
include ./$(DEPDIR)/udiv-qrnnd.Plo # am--include-marker
include ./$(DEPDIR)/udiv.Plo # am--include-marker

$(am__depfiles_remade):
	@$(MKDIR_P) $(@D)
	@echo '# dummy' >$@-t && $(am__mv) $@-t $@

am--depfiles: $(am__depfiles_remade)

.S.o:
	$(AM_V_CPPAS)$(CPPASCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CPPAS)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCASDEPMODE) $(depcomp) \
#	$(AM_V_CPPAS_no)$(CPPASCOMPILE) -c -o $@ $<

.S.obj:
	$(AM_V_CPPAS)$(CPPASCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ `$(CYGPATH_W) '$<'`
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CPPAS)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCASDEPMODE) $(depcomp) \
#	$(AM_V_CPPAS_no)$(CPPASCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

.S.lo:
	$(AM_V_CPPAS)$(LTCPPASCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Plo
#	$(AM_V_CPPAS)source='$<' object='$@' libtool=yes \
#	DEPDIR=$(DEPDIR) $(CCASDEPMODE) $(depcomp) \
#	$(AM_V_CPPAS_no)$(LTCPPASCOMPILE) -c -o $@ $<

.c.o:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c -o $@ $<

.c.obj:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ `$(CYGPATH_W) '$<'`
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

.c.lo:
	$(AM_V_CC)$(LTCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Plo
#	$(AM_V_CC)source='$<' object='$@' libtool=yes \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(LTCOMPILE) -c -o $@ $<

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

ID: $(am__tagged_files)
	$(am__define_uniq_tagged_files); mkid -fID $$unique
tags: tags-am
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-am

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscopelist: cscopelist-am

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) distdir-am

distdir-am: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(LTLIBRARIES)
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)
	-test -z "$(DISTCLEANFILES)" || rm -f $(DISTCLEANFILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool clean-noinstLTLIBRARIES \
	mostlyclean-am

distclean: distclean-am
		-rm -f ./$(DEPDIR)/ec-ed25519.Plo
	-rm -f ./$(DEPDIR)/ec.Plo
	-rm -f ./$(DEPDIR)/mpi-add.Plo
	-rm -f ./$(DEPDIR)/mpi-bit.Plo
	-rm -f ./$(DEPDIR)/mpi-cmp.Plo
	-rm -f ./$(DEPDIR)/mpi-div.Plo
	-rm -f ./$(DEPDIR)/mpi-gcd.Plo
	-rm -f ./$(DEPDIR)/mpi-inline.Plo
	-rm -f ./$(DEPDIR)/mpi-inv.Plo
	-rm -f ./$(DEPDIR)/mpi-mod.Plo
	-rm -f ./$(DEPDIR)/mpi-mpow.Plo
	-rm -f ./$(DEPDIR)/mpi-mul.Plo
	-rm -f ./$(DEPDIR)/mpi-pow.Plo
	-rm -f ./$(DEPDIR)/mpi-scan.Plo
	-rm -f ./$(DEPDIR)/mpicoder.Plo
	-rm -f ./$(DEPDIR)/mpih-add1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-add1.Plo
	-rm -f ./$(DEPDIR)/mpih-const-time.Plo
	-rm -f ./$(DEPDIR)/mpih-div.Plo
	-rm -f ./$(DEPDIR)/mpih-lshift-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-lshift.Plo
	-rm -f ./$(DEPDIR)/mpih-mul.Plo
	-rm -f ./$(DEPDIR)/mpih-mul1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul1.Plo
	-rm -f ./$(DEPDIR)/mpih-mul2-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul2.Plo
	-rm -f ./$(DEPDIR)/mpih-mul3-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul3.Plo
	-rm -f ./$(DEPDIR)/mpih-rshift-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-rshift.Plo
	-rm -f ./$(DEPDIR)/mpih-sub1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-sub1.Plo
	-rm -f ./$(DEPDIR)/mpiutil.Plo
	-rm -f ./$(DEPDIR)/udiv-asm.Plo
	-rm -f ./$(DEPDIR)/udiv-qrnnd-asm.Plo
	-rm -f ./$(DEPDIR)/udiv-qrnnd.Plo
	-rm -f ./$(DEPDIR)/udiv.Plo
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-tags

dvi: dvi-am

dvi-am:

html: html-am

html-am:

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
		-rm -f ./$(DEPDIR)/ec-ed25519.Plo
	-rm -f ./$(DEPDIR)/ec.Plo
	-rm -f ./$(DEPDIR)/mpi-add.Plo
	-rm -f ./$(DEPDIR)/mpi-bit.Plo
	-rm -f ./$(DEPDIR)/mpi-cmp.Plo
	-rm -f ./$(DEPDIR)/mpi-div.Plo
	-rm -f ./$(DEPDIR)/mpi-gcd.Plo
	-rm -f ./$(DEPDIR)/mpi-inline.Plo
	-rm -f ./$(DEPDIR)/mpi-inv.Plo
	-rm -f ./$(DEPDIR)/mpi-mod.Plo
	-rm -f ./$(DEPDIR)/mpi-mpow.Plo
	-rm -f ./$(DEPDIR)/mpi-mul.Plo
	-rm -f ./$(DEPDIR)/mpi-pow.Plo
	-rm -f ./$(DEPDIR)/mpi-scan.Plo
	-rm -f ./$(DEPDIR)/mpicoder.Plo
	-rm -f ./$(DEPDIR)/mpih-add1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-add1.Plo
	-rm -f ./$(DEPDIR)/mpih-const-time.Plo
	-rm -f ./$(DEPDIR)/mpih-div.Plo
	-rm -f ./$(DEPDIR)/mpih-lshift-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-lshift.Plo
	-rm -f ./$(DEPDIR)/mpih-mul.Plo
	-rm -f ./$(DEPDIR)/mpih-mul1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul1.Plo
	-rm -f ./$(DEPDIR)/mpih-mul2-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul2.Plo
	-rm -f ./$(DEPDIR)/mpih-mul3-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-mul3.Plo
	-rm -f ./$(DEPDIR)/mpih-rshift-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-rshift.Plo
	-rm -f ./$(DEPDIR)/mpih-sub1-asm.Plo
	-rm -f ./$(DEPDIR)/mpih-sub1.Plo
	-rm -f ./$(DEPDIR)/mpiutil.Plo
	-rm -f ./$(DEPDIR)/udiv-asm.Plo
	-rm -f ./$(DEPDIR)/udiv-qrnnd-asm.Plo
	-rm -f ./$(DEPDIR)/udiv-qrnnd.Plo
	-rm -f ./$(DEPDIR)/udiv.Plo
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: CTAGS GTAGS TAGS all all-am am--depfiles check check-am clean \
	clean-generic clean-libtool clean-noinstLTLIBRARIES \
	cscopelist-am ctags ctags-am distclean distclean-compile \
	distclean-generic distclean-libtool distclean-tags distdir dvi \
	dvi-am html html-am info info-am install install-am \
	install-data install-data-am install-dvi install-dvi-am \
	install-exec install-exec-am install-html install-html-am \
	install-info install-info-am install-man install-pdf \
	install-pdf-am install-ps install-ps-am install-strip \
	installcheck installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic mostlyclean-libtool pdf pdf-am ps ps-am \
	tags tags-am uninstall uninstall-am

.PRECIOUS: Makefile


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
