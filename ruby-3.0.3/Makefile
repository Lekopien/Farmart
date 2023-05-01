RUBY_RELEASE_YEAR = 2021
RUBY_RELEASE_MONTH = 11
RUBY_RELEASE_DAY = 24
# -*- mode: makefile-gmake; indent-tabs-mode: t -*-

SHELL = /bin/sh
NULLCMD = :
n=$(NULLCMD)
ECHO1 = $(V:1=$n)
RUNCMD = $(SHELL)
CDPATH = .
CHDIR = cd -P
exec = exec
NULL = /dev/null
PATH_SEPARATOR = :

#### Start of system configuration section. ####

srcdir = .
top_srcdir = $(srcdir)
hdrdir = $(srcdir)/include
tooldir = $(srcdir)/tool

PLATFORM_DIR = 

CC_WRAPPER = 
CC = gcc
CPP = $(CC) -E
LD = ld
YACC = bison
PURIFY =
AUTOCONF = autoconf
ACLOCAL = aclocal
CONFIGURE = configure

MKFILES = Makefile GNUmakefile
BASERUBY = /usr/share/rvm/rubies/ruby-3.0.3/bin/ruby --disable=gems
HAVE_BASERUBY = yes
TEST_RUNNABLE = yes
CROSS_COMPILING = no
DOXYGEN = 

prefix = /usr/local
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
datarootdir = ${prefix}/share
datadir = ${datarootdir}
arch = x86_64-linux
sitearch = ${arch}
sitedir = ${rubylibprefix}/site_ruby
archlibdir = ${libdir}/${arch}
includedir = ${prefix}/include
archincludedir = ${includedir}/${arch}
rubylibprefix = ${libdir}/${RUBY_BASE_NAME}
rubylibdir = ${rubylibprefix}/${ruby_version}
rubyarchprefix = ${rubylibprefix}/${arch}
rubyarchdir = ${rubylibdir}/${arch}
rubyhdrdir = ${includedir}/${RUBY_VERSION_NAME}
rubyarchhdrdir = ${rubyhdrdir}/${arch}
ruby_version = 3.0.0
RUBY_VERSION_NAME = ${RUBY_BASE_NAME}-${ruby_version}
UNIVERSAL_ARCHNAMES = 

TESTUI = console
TESTS =
INSTALLDOC = all
DOCTARGETS = rdoc nodoc

EXTOUT = .ext
TIMESTAMPDIR  = $(EXTOUT)/.timestamp
arch_hdrdir = $(EXTOUT)/include/$(arch)
VPATH = $(arch_hdrdir)/ruby:$(hdrdir)/ruby:$(srcdir)/missing

empty =
CC_VERSION = $(CC) --version
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CPPOUTFLAG = $(COUTFLAG)
ARCH_FLAG = 
CFLAGS_NO_ARCH = ${cflags}
CFLAGS = $(CFLAGS_NO_ARCH) $(ARCH_FLAG)
cflags = ${optflags} ${debugflags} ${warnflags}
optflags = -O3
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wdeprecated-declarations -Wduplicated-cond -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wwrite-strings -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable -std=gnu99
cppflags = 
XCFLAGS = -D_FORTIFY_SOURCE=2 -fstack-protector-strong -fno-strict-overflow -fvisibility=hidden -fexcess-precision=standard -DRUBY_EXPORT -fPIE $(INCFLAGS)
USE_RUBYGEMS = yes
USE_RUBYGEMS_ = $(USE_RUBYGEMS:yes=)
CPPFLAGS =  $(DEFS) ${cppflags} $(USE_RUBYGEMS_:no=-DDISABLE_RUBYGEMS=1)
MJIT_SUPPORT = yes
MJIT_HEADER_FLAGS = -P -dD
MJIT_HEADER_SUFFIX =
MJIT_HEADER_ARCH =
MJIT_HEADER_INSTALL_DIR = include/${RUBY_VERSION_NAME}/${arch}
MJIT_CC = /usr/bin/gcc
MJIT_CFLAGS = -w  
MJIT_OPTFLAGS = $(optflags)
MJIT_DEBUGFLAGS = $(debugflags)
MJIT_LDSHARED = $(MJIT_CC) -shared
MJIT_DLDFLAGS = $(XDLDFLAGS)
MJIT_HEADER   = rb_mjit_header.h
MJIT_MIN_HEADER_NAME = rb_mjit_min_header-$(RUBY_PROGRAM_VERSION).h
MJIT_MIN_HEADER = $(MJIT_HEADER_BUILD_DIR)/$(MJIT_MIN_HEADER_NAME)
MJIT_HEADER_BUILD_DIR = $(EXTOUT)/include/$(arch)
MJIT_TABS=
LDFLAGS =  $(CFLAGS) -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic
EXTLDFLAGS = 
XLDFLAGS = -fstack-protector-strong -pie $(EXTLDFLAGS)
EXTLIBS =
LIBS = -lm  $(EXTLIBS)
MISSING =  ${LIBOBJDIR}setproctitle.o ${LIBOBJDIR}strlcat.o ${LIBOBJDIR}strlcpy.o ${LIBOBJDIR}addr2line.o 
ENABLE_SHARED = no
LDSHARED = $(CC) -shared
DLDSHARED = $(CC) -shared
XDLDFLAGS = -Wl,--compress-debug-sections=zlib
DLDFLAGS = -Wl,--compress-debug-sections=zlib $(XLDFLAGS) $(ARCH_FLAG)
SOLIBS = $(MAINLIBS)
ENABLE_DEBUG_ENV = 
MAINLIBS = -lz -lpthread -lrt -lrt -lgmp -ldl -lcrypt -lm 
ARCHMINIOBJS = dmydln.o
DLNOBJ = dln.o
ENCOBJS = dmyenc.$(OBJEXT)
EXTOBJS = dmyext.$(OBJEXT)
BUILTIN_ENCOBJS =  enc/ascii.$(OBJEXT) enc/us_ascii.$(OBJEXT) enc/unicode.$(OBJEXT) enc/utf_8.$(OBJEXT)
BUILTIN_TRANSSRCS =  enc/trans/newline.c
BUILTIN_TRANSOBJS =  enc/trans/newline.$(OBJEXT)
POSTLINK = :

RUBY_BASE_NAME=ruby
RUBY_API_VERSION=$(MAJOR).$(MINOR)
RUBY_INSTALL_NAME=$(RUBY_BASE_NAME)
RUBY_SO_NAME=$(RUBY_BASE_NAME)
EXEEXT = 
LIBEXT = a
PROGRAM=$(RUBY_INSTALL_NAME)$(EXEEXT)
RUBY = $(RUBY_INSTALL_NAME)
MINIRUBY = ./miniruby$(EXEEXT) -I$(srcdir)/lib -I. -I$(EXTOUT)/common\
	$(MINIRUBYOPT)
# RUNRUBY_COMMAND:: runruby.rb or baseruby. do not append options directly
RUNRUBY_COMMAND = $(MINIRUBY) $(tooldir)/runruby.rb --extout=$(EXTOUT) $(RUNRUBYOPT)
# RUNRUBY:: run ruby with RUN_OPTS which is passed to ruby
RUNRUBY = $(RUNRUBY_COMMAND) -- $(RUN_OPTS)
# RUNRUBY_DEBUGGER:: debugging option for runruby.rb
RUNRUBY_DEBUGGER = --debugger='gdb -x run.gdb --quiet --args'
XRUBY = $(RUNRUBY)
BTESTRUBY = $(MINIRUBY)\
	$(MINIRUBYOPT)
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_PROGRAM = ${INSTALL}
XRUBY_LIBDIR = 
XRUBY_RUBYLIBDIR = 
XRUBY_RUBYHDRDIR = 
BOOTSTRAPRUBY = $(BASERUBY)

COROUTINE_H = coroutine/amd64/Context.h
COROUTINE_OBJ = $(COROUTINE_H:.h=.o)
COROUTINE_SRC = coroutine/amd64/Context.$(ASMEXT)

#### End of system configuration section. ####

MAJOR=	3
MINOR=	0
TEENY=	3

# here for MJIT_MIN_HEADER_NAME, not in common.mk
RUBY_PROGRAM_VERSION = $(MAJOR).$(MINOR).$(TEENY)

LIBRUBY_A     = lib$(RUBY_SO_NAME)-static.a
LIBRUBY_SO    = lib$(RUBY_SO_NAME).$(SOEXT).$(RUBY_PROGRAM_VERSION)
LIBRUBY_SONAME= lib$(RUBY_SO_NAME).$(SOEXT).$(RUBY_API_VERSION)
LIBRUBY_ALIASES= lib$(RUBY_SO_NAME).$(SOEXT)
LIBRUBY	      = $(LIBRUBY_A)
LIBRUBYARG    = $(LIBRUBYARG_STATIC)
LIBRUBYARG_STATIC = -Wl,-rpath,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static $(MAINLIBS)
LIBRUBYARG_SHARED = -Wl,-rpath,$(libdir) -L$(libdir) 
LIBRUBY_RELATIVE = no
LIBRUBY_A_OBJS = $(OBJS)

DTRACE_REBUILD_OBJS = $(DTRACE_REBUILD:yes=$(DTRACE_DEPENDENT_OBJS))

DTRACE_DEPENDENT_OBJS = array.$(OBJEXT) \
			eval.$(OBJEXT) \
			gc.$(OBJEXT) \
			hash.$(OBJEXT) \
			load.$(OBJEXT) \
			object.$(OBJEXT) \
			parse.$(OBJEXT) \
			string.$(OBJEXT) \
			symbol.$(OBJEXT) \
			vm.$(OBJEXT)

THREAD_MODEL  = pthread

PREP          = miniruby$(EXEEXT)
ARCHFILE      = 
SETUP         =
EXTSTATIC     = 
ENCSTATIC     = 
SET_LC_MESSAGES = env LC_MESSAGES=C

MAKEDIRS      = /usr/bin/mkdir -p
CP            = cp
MV            = mv
RM            = rm -f
RMDIR         = rmdir --ignore-fail-on-non-empty
RMDIRS        = rmdir --ignore-fail-on-non-empty -p
RMALL         = rm -fr
LN_S          = ln -s
NM            = gcc-nm
AR            = gcc-ar
ARFLAGS       = rcD $(empty)
RANLIB        = gcc-ranlib
AS            = as
ASFLAGS       =  $(INCFLAGS)
IFCHANGE      = $(tooldir)/ifchange
OBJDUMP       = objdump
OBJCOPY       = :
HAVE_GIT      = yes
GIT           = git
VCS           = echo cannot
VCSUP         = $(VCS)
DTRACE        =  
DTRACE_EXT    = dmyh
DTRACE_OBJ    = 
DTRACE_REBUILD= 
DTRACE_GLOMMED_OBJ = $(DTRACE_REBUILD:yes=ruby-glommed.$(OBJEXT))

OBJEXT        = o
ASMEXT        = S
SOEXT         = so
DLEXT         = so
MANTYPE	      = doc
SYMBOL_PREFIX = 

INSTALLED_LIST= .installed.list

NEWLINE_C     = enc/trans/newline.c
MINIPRELUDE_C = miniprelude.c
GOLF_PRELUDE_C= golf_prelude.c
RBCONFIG      = .rbconfig.time

MAINSRC = $(MAINOBJ:.o=.c)

SRC_FILE      = $<
OS_SRC_FILE   = $<
DEST_FILE     = $@
OS_DEST_FILE  = $@

MESSAGE_BEGIN = @for line in
MESSAGE_END = ; do echo "$$line"; done
ECHO_BEGIN = @sep=''; for word in
ECHO_END = ; do echo -n "$$sep'$$word'"; sep=' '; done; echo

DESTDIR       = 

configure_args =  '--with-openssl-dir=/usr/include/openssl'
#### End of variables

.SUFFIXES: .inc .h .c .y .i .$(ASMEXT) .$(DTRACE_EXT)

all:

# Prevent GNU make v3 from overflowing arg limit on SysV.
.NOEXPORT:

miniruby$(EXEEXT):
		@-if test -f $@; then $(MV) -f $@ $@.old; $(RM) $@.old; fi
		$(ECHO) linking $@
		$(Q) $(PURIFY) $(CC) $(LDFLAGS) $(XLDFLAGS) $(NORMALMAINOBJ) $(MINIOBJS) $(COMMONOBJS) $(MAINLIBS) $(LIBS) $(OUTFLAG)$@
		$(Q) $(POSTLINK)

$(PROGRAM):
		@$(RM) $@
		$(ECHO) linking $@
		$(Q) $(PURIFY) $(CC) $(LDFLAGS) $(XLDFLAGS) $(MAINOBJ) $(EXTOBJS) $(LIBRUBYARG) $(MAINLIBS) $(LIBS) $(EXTLIBS) $(OUTFLAG)$@
		$(Q) $(POSTLINK)

PRE_LIBRUBY_UPDATE = [ -n "$(LIBRUBY_SO_UPDATE)" ] || $(gnumake:yes=exec) $(RM) $(LIBRUBY_EXTS)

# We must `rm' the library each time this rule is invoked because "updating" a
# MAB library on Apple/NeXT (see --enable-fat-binary in configure) is not
# supported.
$(LIBRUBY_A):
		@$(RM) $@
		@-[ -z "$(EXTSTATIC)" ] || $(PRE_LIBRUBY_UPDATE)
		$(ECHO) linking static-library $@
		$(Q) $(AR) $(ARFLAGS) $@ $(LIBRUBY_A_OBJS) $(INITOBJS)
		@-$(RANLIB) $@ 2> /dev/null || true

verify-static-library: $(LIBRUBY_A)
		$(ECHO) verifying static-library $@
		@$(PURIFY) $(CC) $(LDFLAGS) $(XLDFLAGS) $(MAINOBJ) $(LIBRUBY_A) $(MAINLIBS) $(EXTLIBS) $(LIBS) $(OUTFLAG)conftest$(EXEEXT)
		@$(RMALL) conftest$(EXEEXT) conftest.c conftest.dSYM

$(LIBRUBY_SO):
		@-[ -n "$(EXTSTATIC)" ] || $(PRE_LIBRUBY_UPDATE)
		$(ECHO) linking shared-library $@
		$(Q) $(LDSHARED) $(DLDFLAGS) $(OBJS) $(DLDOBJS) $(SOLIBS) $(EXTSOLIBS) $(OUTFLAG)$@
		-$(Q) $(OBJCOPY) -w -L '$(SYMBOL_PREFIX)Init_*' -L '$(SYMBOL_PREFIX)ruby_static_id_*' \
			-L '$(SYMBOL_PREFIX)*_threadptr_*' -L '$(SYMBOL_PREFIX)*_ec_*' $@
		$(Q) $(POSTLINK)
		@-$(MINIRUBY) -e 'so, *aliases = ARGV; aliases.uniq!; aliases.delete(File.basename(so)); \
				  aliases.each { |link| File.delete link rescue nil; File.symlink so, link }' \
				$(LIBRUBY_SO) $(LIBRUBY_ALIASES) || true

LIBRUBY_WITH_EXT = @LIBRUBY_WITH_EXT@
$(LIBRUBY_$(LIBRUBY_WITH_EXT)): $(LIBRUBY_SO_UPDATE)

ruby_pc = ruby-3.0.pc
ruby.pc: $(ruby_pc)
$(ruby_pc): config.status
		@./config.status --file=$@:$(srcdir)/template/ruby.pc.in

ruby-runner.h: template/ruby-runner.h.in config.status
		@./config.status --file=$@:$(srcdir)/template/$(@F).in

$(RBCONFIG): $(PREP)

rbconfig.rb: $(RBCONFIG)

install-cross: $(arch)-fake.rb $(RBCONFIG) rbconfig.rb $(arch_hdrdir)/ruby/config.h \
	$(LIBRUBY_A) $(LIBRUBY_SO) $(ARCHFILE)
	$(ECHO) installing cross-compiling stuff
	$(Q) $(MAKEDIRS) $(XRUBY_RUBYLIBDIR)/$(arch) $(XRUBY_RUBYHDRDIR)/$(arch)/ruby
	$(Q) sed '/^\$$:\.unshift/q' $(arch)-fake.rb > fake.rb
	$(Q) $(BASERUBY) -p \
	-e '~/^\s*CONFIG\["LDFLAGS"\]/ and' \
	-e '$$_[/(?=\s*"$$)/] = %q[ #{(CONFIG["LIBPATHFLAG"]%File.dirname(__FILE__)).strip}]' \
	rbconfig.rb > fake-rbconfig.rb
	$(INSTALL_SCRIPT) fake.rb $(XRUBY_RUBYLIBDIR)/$(arch)/fake.rb
	$(INSTALL_SCRIPT) fake-rbconfig.rb $(XRUBY_RUBYLIBDIR)/$(arch)/rbconfig.rb
	@$(RM) fake.rb fake-rbconfig.rb
	$(INSTALL_DATA) $(arch_hdrdir)/ruby/config.h $(XRUBY_RUBYHDRDIR)/$(arch)/ruby
	$(INSTALL_DATA) $(top_srcdir)/include/ruby/win32.h $(XRUBY_RUBYHDRDIR)/ruby
	$(INSTALL_DATA) $(LIBRUBY) $(LIBRUBY_A) $(XRUBY_RUBYLIBDIR)/$(arch)
	$(INSTALL_PROGRAM) $(LIBRUBY_SO) $(XRUBY_RUBYLIBDIR)/$(arch)

Makefile:	$(srcdir)/template/Makefile.in $(srcdir)/enc/Makefile.in

$(MKFILES): config.status $(srcdir)/version.h
		@[ -f $@ ] && mv $@ $@.old
		MAKE=$(MAKE) $(SHELL) ./config.status $@
		@cmp $@ $@.old > /dev/null 2>&1 && echo $@ unchanged && exit 0; \
		{ \
		    echo "all:; -@rm -f conftest.mk"; \
		    echo "conftest.mk: .force; @echo AUTO_REMAKE"; \
		    echo ".force:"; \
		} > conftest.mk || exit 1; \
		$(MAKE) -f conftest.mk | grep '^AUTO_REMAKE$$' >/dev/null 2>&1 || \
		{ echo "$@ updated, restart."; exit 1; }

uncommon.mk: $(srcdir)/common.mk
		sed 's/{\$$([^(){}]*)[^{}]*}//g' $< > $@

.PHONY: reconfig
reconfig-args = $(srcdir)/$(CONFIGURE) $(configure_args)
config.status-args = ./config.status --recheck
reconfig-exec-0 = test -t 1 && { : $${CONFIGURE_TTY=yes}; export CONFIGURE_TTY; }; exec 3>&1; exit `exec 4>&1; { "$$@" 3>&- 4>&-; echo $$? 1>&4; } | fgrep -v '(cached)' 1>&3 3>&- 4>&-`
reconfig-exec-1 = set -x; "$$@"

reconfig config.status:	$(srcdir)/$(CONFIGURE) $(srcdir)/enc/Makefile.in \
			$(srcdir)/include/ruby/version.h
	@PWD= MINIRUBY="$(MINIRUBY)"; export MINIRUBY; \
	set $(SHELL) $($@-args); $(reconfig-exec-$(V))

$(srcdir)/$(CONFIGURE): $(srcdir)/configure.ac $(srcdir)/aclocal.m4
	$(CHDIR) $(srcdir) && exec $(AUTOCONF) -o $(@F)

$(srcdir)/aclocal.m4:
	$(CHDIR) $(srcdir) && \
	type $(ACLOCAL) >/dev/null 2>&1 && exec $(ACLOCAL); \
	touch $(@F)

prereq: $(srcdir)/$(CONFIGURE)

incs: id.h
all-incs: probes.h

# Things which should be considered:
# * with gperf v.s. without gperf
# * committers may have various versions of gperf
# * ./configure v.s. ../ruby/configure
# * GNU make v.s. HP-UX make	# HP-UX make invokes the action if lex.c and keywords has same mtime.
# * svn checkout generate a file with mtime as current time
# * ext4 and XFS has a mtime with fractional part
lex.c: defs/keywords
	@\
	if cmp -s $(srcdir)/defs/lex.c.src $?; then \
	  [ $(Q) ] && echo copying $@ || set -x; \
	  $(CP) $(srcdir)/lex.c.blt $@; \
	else \
	  [ $(Q) ] && echo generating $@ || set -x; \
	  gperf -C -P -p -j1 -i 1 -g -o -t -N rb_reserved_word -k1,3,$$ $? \
	  | sed -f $(tooldir)/gperf.sed \
	  > $@.tmp && \
	  $(MV) $@.tmp $@ && \
	  $(CP) $? $(srcdir)/defs/lex.c.src && \
	  $(CP) $@ $(srcdir)/lex.c.blt; \
	fi

JIS_PROPS_OPTIONS = -k1,3 -7 -c -j1 -i1 -t -C -P -t --ignore-case -H onig_jis_property_hash -Q onig_jis_property_pool -N onig_jis_property

$(srcdir)/enc/jis/props.h: enc/jis/props.kwd
	$(MAKEDIRS) $(@D)
	@set +e; \
	if cmp -s $(?:.kwd=.src) $?; then \
	  set -x; \
	  $(CP) $(?:.kwd=.h.blt) $@; \
	else \
	  set -x; \
	  gperf $(JIS_PROPS_OPTIONS) $? | \
	  sed -f $(tooldir)/gperf.sed > $@ && \
	  $(CP) $? $(?:.kwd=.src) && \
	  $(CP) $@ $(?:.kwd=.h.blt); \
	fi

.c.o:
	@$(ECHO) compiling $<
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -c $<

.$(ASMEXT).o:
	@$(ECHO) assembling $<
	$(Q) $(CC) $(ASFLAGS) -DSYMBOL_PREFIX=$(SYMBOL_PREFIX) -o $@ -c $<

.c.$(ASMEXT):
	@$(ECHO) translating $<
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -S $<

.c.i:
	@$(ECHO) preprocessing $<
	$(Q) $(CPP) $(warnflags) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -E $< > $@

.d.h:
	@$(ECHO) translating probes $<
	$(Q) $(DTRACE) -o $@.tmp -h -C $(INCFLAGS) -s $<
	$(Q) sed -e 's/RUBY_/RUBY_DTRACE_/g' -e 's/PROBES_H_TMP/RUBY_PROBES_H/' -e 's/(char \*/(const char */g' -e 's/, char \*/, const char */g' $@.tmp > $@
	$(Q) $(RM) $@.tmp

.dmyh.h:
	@$(ECHO) making dummy $(DEST_FILE)
	$(Q)echo '#include "$(*F).dmyh"' > $@

probes.stamp: $(DTRACE_REBUILD_OBJS)
	$(Q) if test -f $@ -o -f probes.$(OBJEXT); then \
	  $(RM) $(DTRACE_REBUILD_OBJS) $@; \
	  $(ECHO0) "rebuilding objects which were modified by \"dtrace -G\""; \
	  $(MAKE) $(DTRACE_REBUILD_OBJS); \
	fi
	$(Q) touch $@

probes.$(OBJEXT): $(srcdir)/probes.d $(DTRACE_REBUILD:yes=probes.stamp)
	@$(ECHO) processing probes in object files
	$(Q) $(RM) $@
	$(Q) $(DTRACE) -G -C $(INCFLAGS) -s $(srcdir)/probes.d -o $@ $(DTRACE_REBUILD_OBJS)

main: mjit-headers
yes-mjit-headers: $(MJIT_MIN_HEADER)
clean-local::
	$(Q)$(RM) \
	  $(MJIT_HEADER) $(MJIT_HEADER:.h=)$(MJIT_HEADER_SUFFIX:%=*).h \
	  $(MJIT_MIN_HEADER) $(MJIT_MIN_HEADER:.h=)$(MJIT_HEADER_SUFFIX:%=*).h \
	  $(MJIT_HEADER_INSTALL_DIR)/rb_mjit_min_header-*.h \
	  $(TIMESTAMPDIR)/$(MJIT_HEADER:.h=)$(MJIT_HEADER_SUFFIX).time mjit_config.h \
	|| $(NULLCMD)
	$(Q)$(RM) -r mjit_build_dir.*
	-$(Q) $(RMDIRS) $(MJIT_HEADER_INSTALL_DIR) $(MJIT_HEADER_BUILD_DIR) $(TIMESTAMPDIR) 2> $(NULL) || $(NULLCMD)

# DTrace static library hacks described here:
# http://mail.opensolaris.org/pipermail/dtrace-discuss/2005-August/000207.html
ruby-glommed.$(OBJEXT):
	@$(ECHO) generating a glommed object with DTrace probes for static library
	$(Q) $(LD) -r -o $@ $(OBJS)

clean-local::
	$(Q)$(RM) \
	  ext/extinit.c ext/extinit.$(OBJEXT) ext/ripper/y.output \
	  enc/encinit.c enc/encinit.$(OBJEXT) $(pkgconfig_DATA) \
	  ruby-runner.$(OBJEXT) ruby-runner.h \
	|| $(NULLCMD)
	-$(Q)$(RMALL) exe/ *.dSYM

distclean-local::
	$(Q)$(RM) \
	  ext/config.cache $(RBCONFIG) Doxyfile run.gdb \
	  $(INSTALLED_LIST) $(arch_hdrdir)/ruby/config.h verconf.h \
	|| $(NULLCMD)
	-$(Q)$(RMDIRS) $(arch_hdrdir)/ruby 2> /dev/null || true

ext/clean.sub:: ext/clean.mk
ext/distclean.sub:: ext/distclean.mk
ext/realclean.sub:: ext/realclean.mk

ext/clean.mk ext/distclean.mk ext/realclean.mk::
	-$(Q) if [ -f $(EXTS_MK) ]; then exec $(MAKE) -f $(EXTS_MK) $(@F:.mk=); fi

ext/clean:: ext/clean.sub
ext/distclean:: ext/distclean.sub
ext/realclean:: ext/realclean.sub
gems/clean:: gems/clean.sub
gems/distclean:: gems/distclean.sub
gems/realclean:: gems/realclean.sub

ext/clean.sub ext/distclean.sub ext/realclean.sub \
gems/clean.sub gems/distclean.sub gems/realclean.sub::
	$(Q) set dummy `echo "${EXTS}" | tr , ' '`; shift; \
	test "$$#" = 0 && set .; \
	set dummy `\
	    cd $(@D) 2>/dev/null && \
	    find "$$@" \( -name Makefile -o -name exts.mk \) -print | \
	    sed -n 's:^\./::;s:^:$(@D)/:;s:/[^/][^/]*$$::p' | sort -u; \
	`; shift; \
	for dir do \
	    $(RM) "$$dir/exts.mk"; \
	    if [ -f "$$dir/Makefile" ]; then \
		echo $(@F:.sub=)ing "$$dir"; \
		(cd "$$dir" && exec $(MAKE) $(mflags) $(@F:.sub=)); \
	    fi; \
	done || true

ext/distclean ext/realclean gems/distclean gems/realclean::
	$(Q) set dummy `echo "${EXTS}" | tr , ' '`; shift; \
	test "$$#" = 0 && set .; \
	cd $(@D) 2>/dev/null && \
	find "$$@" -type d -empty -exec $(RMDIRS) {} + 2> /dev/null || true
	$(Q) $(RMDIRS) $(@D) 2> /dev/null || true

clean-enc distclean-enc realclean-enc:
	@test -f "$(ENC_MK)" || exit 0; \
	echo $(@:-enc=ing) encodings; \
	exec $(MAKE) $(MAKE_ENC) $(@:-enc=)

ext/extinit.$(OBJEXT): ext/extinit.c $(SETUP)
	$(ECHO) compiling $@
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -c ext/extinit.c

enc/encinit.$(OBJEXT): enc/encinit.c $(SETUP)

cont.$(OBJEXT): $(COROUTINE_H)

update-src::
	@$(CHDIR) "$(srcdir)" && LC_TIME=C exec $(VCSUP)

update-download:: update-config_files

after-update:: prereq

gcov:
	$(Q) $(BASERUBY) $(tooldir)/run-gcov.rb

lcov:
	$(Q) $(BASERUBY) $(tooldir)/run-lcov.rb

update-benchmark-driver:
	$(Q) $(tooldir)/git-refresh -C $(srcdir)/benchmark $(Q1:0=-q) \
		--branch $(BENCHMARK_DRIVER_GIT_REF) \
		$(BENCHMARK_DRIVER_GIT_URL) benchmark-driver $(GIT_OPTS)

update-doclie:
	$(Q) $(tooldir)/git-refresh -C $(srcdir)/coverage $(Q1:0=-q) \
		--branch $(DOCLIE_GIT_REF) \
		$(DOCLIE_GIT_URL) doclie $(GIT_OPTS)

update-simplecov-html:
	$(Q) $(tooldir)/git-refresh -C $(srcdir)/coverage $(Q1:0=-q) \
		--branch $(SIMPLECOV_HTML_GIT_REF) \
		$(SIMPLECOV_HTML_GIT_URL) simplecov-html $(GIT_OPTS)

update-simplecov:
	$(Q) $(tooldir)/git-refresh -C $(srcdir)/coverage $(Q1:0=-q) \
		--branch $(SIMPLECOV_GIT_REF)  \
		$(SIMPLECOV_GIT_URL) simplecov $(GIT_OPTS)

update-coverage: update-simplecov update-simplecov-html update-doclie

update-known-errors:
	errno --list | cut -d' ' -f1 | sort -u - $(srcdir)/defs/known_errors.def | \
	$(IFCHANGE) $(srcdir)/defs/known_errors.def -

INSNS	= opt_sc.inc optinsn.inc optunifs.inc insns.inc insns_info.inc \
	  vmtc.inc vm.inc mjit_compile.inc

$(INSNS): $(srcdir)/insns.def vm_opts.h \
	  $(srcdir)/defs/opt_operand.def $(srcdir)/defs/opt_insn_unif.def \
	  $(tooldir)/insns2vm.rb \
	  $(tooldir)/ruby_vm/controllers/application_controller.rb \
	  $(tooldir)/ruby_vm/helpers/c_escape.rb \
	  $(tooldir)/ruby_vm/helpers/dumper.rb \
	  $(tooldir)/ruby_vm/helpers/scanner.rb \
	  $(tooldir)/ruby_vm/loaders/insns_def.rb \
	  $(tooldir)/ruby_vm/loaders/opt_insn_unif_def.rb \
	  $(tooldir)/ruby_vm/loaders/opt_operand_def.rb \
	  $(tooldir)/ruby_vm/loaders/vm_opts_h.rb \
	  $(tooldir)/ruby_vm/models/attribute.rb \
	  $(tooldir)/ruby_vm/models/bare_instructions.rb \
	  $(tooldir)/ruby_vm/models/c_expr.rb \
	  $(tooldir)/ruby_vm/models/instructions.rb \
	  $(tooldir)/ruby_vm/models/instructions_unifications.rb \
	  $(tooldir)/ruby_vm/models/operands_unifications.rb \
	  $(tooldir)/ruby_vm/models/trace_instructions.rb \
	  $(tooldir)/ruby_vm/models/typemap.rb \
	  $(tooldir)/ruby_vm/scripts/converter.rb \
	  $(tooldir)/ruby_vm/scripts/insns2vm.rb \
	  $(tooldir)/ruby_vm/views/_attributes.erb \
	  $(tooldir)/ruby_vm/views/_c_expr.erb \
	  $(tooldir)/ruby_vm/views/_comptime_insn_stack_increase.erb \
	  $(tooldir)/ruby_vm/views/_copyright.erb \
	  $(tooldir)/ruby_vm/views/_insn_entry.erb \
	  $(tooldir)/ruby_vm/views/_insn_len_info.erb \
	  $(tooldir)/ruby_vm/views/_insn_name_info.erb \
	  $(tooldir)/ruby_vm/views/_insn_operand_info.erb \
	  $(tooldir)/ruby_vm/views/_insn_sp_pc_dependency.erb \
	  $(tooldir)/ruby_vm/views/_insn_type_chars.erb \
	  $(tooldir)/ruby_vm/views/_leaf_helpers.erb \
	  $(tooldir)/ruby_vm/views/_mjit_compile_insn.erb \
	  $(tooldir)/ruby_vm/views/_mjit_compile_insn_body.erb \
	  $(tooldir)/ruby_vm/views/_mjit_compile_ivar.erb \
	  $(tooldir)/ruby_vm/views/_mjit_compile_pc_and_sp.erb \
	  $(tooldir)/ruby_vm/views/_mjit_compile_send.erb \
	  $(tooldir)/ruby_vm/views/_notice.erb \
	  $(tooldir)/ruby_vm/views/_sp_inc_helpers.erb \
	  $(tooldir)/ruby_vm/views/_trace_instruction.erb \
	  $(tooldir)/ruby_vm/views/insns.inc.erb \
	  $(tooldir)/ruby_vm/views/insns_info.inc.erb \
	  $(tooldir)/ruby_vm/views/mjit_compile.inc.erb \
	  $(tooldir)/ruby_vm/views/opt_sc.inc.erb \
	  $(tooldir)/ruby_vm/views/optinsn.inc.erb \
	  $(tooldir)/ruby_vm/views/optunifs.inc.erb \
	  $(tooldir)/ruby_vm/views/vm.inc.erb \
	  $(tooldir)/ruby_vm/views/vmtc.inc.erb
	$(ECHO) generating $@
	$(Q) $(BASERUBY) -Ku $(tooldir)/insns2vm.rb $(INSNS2VMOPT) $@

verconf.h: $(RBCONFIG)

loadpath: verconf.h
	@$(CPP) $(XCFLAGS) $(CPPFLAGS) $(srcdir)/loadpath.c | \
	sed -e '1,/^const char ruby_initial_load_paths/d;/;/,$$d' \
	    -e '/^ /!d;s/ *"\\0"$$//;s/" *"//g'

un-runnable:
	$(ECHO) cannot make runnable, configure with --enable-load-relative.
	$(Q) exit 1

mjit_config.h:
	$(ECHO) making $@
	@{ \
	. $(tooldir)/mjit_archflag.sh; \
	parse_arch_flags "$(UNIVERSAL_ARCHNAMES)" $(ARCH_FLAG); \
	test "$(Q)" = @ || set -x; \
	echo '#ifndef RUBY_MJIT_CONFIG_H'; \
	echo '#define RUBY_MJIT_CONFIG_H 1'; \
	echo; \
	sep=; \
	echo '#ifdef LOAD_RELATIVE'; \
	quote MJIT_HEADER_INSTALL_DIR "/$(MJIT_HEADER_INSTALL_DIR)"; \
	echo '#else'; \
	quote MJIT_HEADER_INSTALL_DIR "$(rubyarchhdrdir)"; \
	echo '#endif'; \
	quote MJIT_MIN_HEADER_NAME "$(MJIT_MIN_HEADER_NAME)"; \
	sep=,; \
	quote "MJIT_CC_COMMON  " $(MJIT_CC); \
	quote "MJIT_CFLAGS      MJIT_ARCHFLAG" $(MJIT_CFLAGS); \
	quote "MJIT_OPTFLAGS   " $(MJIT_OPTFLAGS); \
	quote "MJIT_DEBUGFLAGS " $(MJIT_DEBUGFLAGS); \
	quote "MJIT_LDSHARED   " $(MJIT_LDSHARED); \
	quote "MJIT_DLDFLAGS    MJIT_ARCHFLAG" $(MJIT_DLDFLAGS); \
	quote "MJIT_LIBS       " $(LIBRUBYARG_SHARED); \
	quote 'PRELOADENV       "LD_PRELOAD"'; \
	indent=$${archs:+'  '}; \
	define_arch_flags; \
	echo; \
	echo '#endif /* RUBY_MJIT_CONFIG_H */'; \
	} > $@

yes-test-almost yes-test-all programs: mjit_build_dir.$(SOEXT)
mjit_build_dir.$(SOEXT): $(MJIT_MIN_HEADER) $(srcdir)/ruby-runner.c ruby-runner.h
	$(ECHO) making $@
	$(Q) $(DLDSHARED) $(MJIT_DLDFLAGS) $(ARCH_FLAG) $(CFLAGS) $(INCFLAGS) $(CPPFLAGS) \
		-DMAKE_MJIT_BUILD_DIR=1 -DMJIT_MIN_HEADER='"$(MJIT_MIN_HEADER)"' \
		$(OUTFLAG)$@ $(srcdir)/ruby-runner.c

# yes-test-basic: leaked-globals
leaked-globals: $(COMMONOBJS) prog $(tooldir)/leaked-globals PHONY
	$(Q) $(XRUBY) $(tooldir)/leaked-globals NM=$(NM) SYMBOL_PREFIX=$(SYMBOL_PREFIX) $(srcdir)/configure.ac $(COMMONOBJS)

distclean-local::; @$(RM) GNUmakefile uncommon.mk
