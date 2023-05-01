
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/ripper
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby:$(topdir):$(top_srcdir)
RUBYLIB =
RUBYOPT = -
prefix = $(DESTDIR)/usr/local
rubysitearchprefix = $(rubylibprefix)/$(sitearch)
rubyarchprefix = $(rubylibprefix)/$(arch)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)
sitearchhdrdir = $(sitehdrdir)/$(sitearch)
rubyarchhdrdir = $(rubyhdrdir)/$(arch)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_VERSION_NAME)
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitearchdir = $(sitelibdir)/$(sitearch)
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(rubylibprefix)/site_ruby
rubyarchdir = $(rubylibdir)/$(arch)
rubylibdir = $(rubylibprefix)/$(ruby_version)
sitearchincludedir = $(includedir)/$(sitearch)
archincludedir = $(includedir)/$(arch)
sitearchlibdir = $(libdir)/$(sitearch)
archlibdir = $(libdir)/$(arch)
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
runstatedir = $(localstatedir)/run
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
archdir = $(rubyarchdir)


CC_WRAPPER = 
CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-rpath,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -Wl,-rpath,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static $(MAINLIBS)
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CSRCFLAG = $(empty)

RUBY_EXTCONF_H = extconf.h
cflags   = $(optflags) $(debugflags) $(warnflags)
cxxflags = 
optflags = -O3
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wdeprecated-declarations -Wduplicated-cond -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wwrite-strings -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable
cppflags = 
CCDLFLAGS = -fPIC
CFLAGS   = $(CCDLFLAGS) $(cflags) $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir) -I$(topdir) -I$(top_srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS)  $(ARCH_FLAG)
ldflags  = -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic
dldflags = -Wl,--compress-debug-sections=zlib 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = gcc-ar
EXEEXT = 

RUBY_INSTALL_NAME = $(RUBY_BASE_NAME)
RUBY_SO_NAME = ruby
RUBYW_INSTALL_NAME = 
RUBY_VERSION_NAME = $(RUBY_BASE_NAME)-$(ruby_version)
RUBYW_BASE_NAME = rubyw
RUBY_BASE_NAME = ruby

arch = x86_64-linux
sitearch = $(arch)
ruby_version = 3.0.0
ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/backward.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)

RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /usr/bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 
EXTSO = 
libpath = . $(topdir)
LIBPATH =  -L. -L$(topdir)
DEFFILE = 

CLEANFILES = mkmf.log ripper.y ripper.c ripper.E ripper.output y.output eventids1.c eventids2table.c .eventids2-check
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = eventids1.c eventids2.c eventids2table.c ripper.c
SRCS = $(ORIG_SRCS) ripper.c
OBJS = ripper.o
HDRS = 
LOCAL_HDRS = 
TARGET = ripper
TARGET_NAME = ripper
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = $(extout)/.timestamp
BINDIR        = $(extout)/bin
RUBYCOMMONDIR = $(extout)/common
RUBYLIBDIR    = $(RUBYCOMMONDIR)$(target_prefix)
RUBYARCHDIR   = $(extout)/$(arch)$(target_prefix)
HDRDIR        = $(extout)/include/ruby$(target_prefix)
ARCHHDRDIR    = $(extout)/include/$(arch)/ruby$(target_prefix)
TARGET_SO_DIR = $(RUBYARCHDIR)/
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) 
CLEANOBJS     = *.o  *.bak
BISON = bison

all:    install
static: all
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(TARGET_SO)
clean-so::
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR) 2> /dev/null || true
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
do-install-rb-default: $(RUBYLIBDIR)/ripper/core.rb
$(RUBYLIBDIR)/ripper/core.rb: $(srcdir)/lib/ripper/core.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
	$(Q) $(COPY) $(srcdir)/lib/ripper/core.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/ripper/core.rb
do-install-rb-default: $(RUBYLIBDIR)/ripper/filter.rb
$(RUBYLIBDIR)/ripper/filter.rb: $(srcdir)/lib/ripper/filter.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
	$(Q) $(COPY) $(srcdir)/lib/ripper/filter.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/ripper/filter.rb
do-install-rb-default: $(RUBYLIBDIR)/ripper/lexer.rb
$(RUBYLIBDIR)/ripper/lexer.rb: $(srcdir)/lib/ripper/lexer.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
	$(Q) $(COPY) $(srcdir)/lib/ripper/lexer.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/ripper/lexer.rb
do-install-rb-default: $(RUBYLIBDIR)/ripper/sexp.rb
$(RUBYLIBDIR)/ripper/sexp.rb: $(srcdir)/lib/ripper/sexp.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
	$(Q) $(COPY) $(srcdir)/lib/ripper/sexp.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/ripper/sexp.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/ripper.rb
$(RUBYLIBDIR)/ripper.rb: $(srcdir)/lib/ripper.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/ripper.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/ripper.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default ripper libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/ripper 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/$(arch)/.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.ripper.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/ripper
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .o .S

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cc.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.mm.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cxx.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cpp.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.c.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.m.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.time
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

.SUFFIXES: .y .c

GEN  = $(srcdir)/tools/generate.rb
SRC1 = $(top_srcdir)/parse.y
SRC2 = $(srcdir)/eventids2.c

.SUFFIXES: .y

src: ripper.c eventids1.c eventids2table.c

ripper.o: ripper.c

.y.c:
	$(ECHO) compiling compiler $<
	$(Q) $(BISON) -t -v -oy.tab.c $<
	$(Q) sed -e "/^#/s!y\.tab\.c!$@!" -f $(top_srcdir)/tool/ytab.sed y.tab.c > $@
	@$(RM) y.tab.c

all: check
static: check

ripper.y: $(srcdir)/tools/preproc.rb $(srcdir)/tools/dsl.rb $(top_srcdir)/parse.y id.h
	$(ECHO) extracting $@ from $(top_srcdir)/parse.y
	$(Q) $(RUBY) $(top_srcdir)/tool/id2token.rb --path-separator=.$(PATH_SEPARATOR)./ \
		--vpath=$(VPATH)$(PATH_SEPARATOR)$(top_srcdir) id.h $(top_srcdir)/parse.y > ripper.tmp.y
	$(Q) $(RUBY) $(top_srcdir)/tool/pure_parser.rb ripper.tmp.y $(BISON)
	$(Q) $(RM) ripper.tmp.y.bak
	$(Q) $(RUBY) $(srcdir)/tools/preproc.rb ripper.tmp.y --output=$@
	$(Q) $(RM) ripper.tmp.y

check: .eventids2-check

.eventids2-check: $(GEN) $(SRC1) $(SRC2)
	$(ECHO) checking $(SRC1) and $(SRC2)
	$(Q) $(RUBY) $(GEN) --mode=check --ids1src=$(SRC1) --ids2src=$(SRC2)
	@exit > $@

eventids1.c: $(GEN) $(srcdir)/tools/dsl.rb $(SRC1)
	$(ECHO) generating $@ from $(SRC1)
	$(Q) $(RUBY) $(GEN) --mode=eventids1 --ids1src=$(SRC1) --output=$@

eventids2table.c: $(GEN) $(srcdir)/tools/dsl.rb $(SRC2)
	$(ECHO) generating $@ from $(SRC2)
	$(Q) $(RUBY) $(GEN) --mode=eventids2table --ids2src=$(SRC2) --output=$@

# Entries for Ripper maintainer

preproc: ripper.E
ripper.E: ripper.c
	$(ECHO) preprocessing ripper.c
	$(Q) $(CC) -E $(INCFLAGS) $(CPPFLAGS) $< | $(RUBY) $(srcdir)/tools/strip.rb > $@

# AUTOGENERATED DEPENDENCIES START
ripper.o: $(RUBY_EXTCONF_H)
ripper.o: $(arch_hdrdir)/ruby/config.h
ripper.o: $(hdrdir)/ruby.h
ripper.o: $(hdrdir)/ruby/assert.h
ripper.o: $(hdrdir)/ruby/backward.h
ripper.o: $(hdrdir)/ruby/backward/2/assume.h
ripper.o: $(hdrdir)/ruby/backward/2/attributes.h
ripper.o: $(hdrdir)/ruby/backward/2/bool.h
ripper.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
ripper.o: $(hdrdir)/ruby/backward/2/inttypes.h
ripper.o: $(hdrdir)/ruby/backward/2/limits.h
ripper.o: $(hdrdir)/ruby/backward/2/long_long.h
ripper.o: $(hdrdir)/ruby/backward/2/stdalign.h
ripper.o: $(hdrdir)/ruby/backward/2/stdarg.h
ripper.o: $(hdrdir)/ruby/defines.h
ripper.o: $(hdrdir)/ruby/encoding.h
ripper.o: $(hdrdir)/ruby/intern.h
ripper.o: $(hdrdir)/ruby/internal/anyargs.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/char.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/double.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/int.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/long.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/short.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
ripper.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
ripper.o: $(hdrdir)/ruby/internal/assume.h
ripper.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
ripper.o: $(hdrdir)/ruby/internal/attr/artificial.h
ripper.o: $(hdrdir)/ruby/internal/attr/cold.h
ripper.o: $(hdrdir)/ruby/internal/attr/const.h
ripper.o: $(hdrdir)/ruby/internal/attr/constexpr.h
ripper.o: $(hdrdir)/ruby/internal/attr/deprecated.h
ripper.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
ripper.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
ripper.o: $(hdrdir)/ruby/internal/attr/error.h
ripper.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
ripper.o: $(hdrdir)/ruby/internal/attr/forceinline.h
ripper.o: $(hdrdir)/ruby/internal/attr/format.h
ripper.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
ripper.o: $(hdrdir)/ruby/internal/attr/noalias.h
ripper.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
ripper.o: $(hdrdir)/ruby/internal/attr/noexcept.h
ripper.o: $(hdrdir)/ruby/internal/attr/noinline.h
ripper.o: $(hdrdir)/ruby/internal/attr/nonnull.h
ripper.o: $(hdrdir)/ruby/internal/attr/noreturn.h
ripper.o: $(hdrdir)/ruby/internal/attr/pure.h
ripper.o: $(hdrdir)/ruby/internal/attr/restrict.h
ripper.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
ripper.o: $(hdrdir)/ruby/internal/attr/warning.h
ripper.o: $(hdrdir)/ruby/internal/attr/weakref.h
ripper.o: $(hdrdir)/ruby/internal/cast.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
ripper.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
ripper.o: $(hdrdir)/ruby/internal/compiler_since.h
ripper.o: $(hdrdir)/ruby/internal/config.h
ripper.o: $(hdrdir)/ruby/internal/constant_p.h
ripper.o: $(hdrdir)/ruby/internal/core.h
ripper.o: $(hdrdir)/ruby/internal/core/rarray.h
ripper.o: $(hdrdir)/ruby/internal/core/rbasic.h
ripper.o: $(hdrdir)/ruby/internal/core/rbignum.h
ripper.o: $(hdrdir)/ruby/internal/core/rclass.h
ripper.o: $(hdrdir)/ruby/internal/core/rdata.h
ripper.o: $(hdrdir)/ruby/internal/core/rfile.h
ripper.o: $(hdrdir)/ruby/internal/core/rhash.h
ripper.o: $(hdrdir)/ruby/internal/core/robject.h
ripper.o: $(hdrdir)/ruby/internal/core/rregexp.h
ripper.o: $(hdrdir)/ruby/internal/core/rstring.h
ripper.o: $(hdrdir)/ruby/internal/core/rstruct.h
ripper.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
ripper.o: $(hdrdir)/ruby/internal/ctype.h
ripper.o: $(hdrdir)/ruby/internal/dllexport.h
ripper.o: $(hdrdir)/ruby/internal/dosish.h
ripper.o: $(hdrdir)/ruby/internal/error.h
ripper.o: $(hdrdir)/ruby/internal/eval.h
ripper.o: $(hdrdir)/ruby/internal/event.h
ripper.o: $(hdrdir)/ruby/internal/fl_type.h
ripper.o: $(hdrdir)/ruby/internal/gc.h
ripper.o: $(hdrdir)/ruby/internal/glob.h
ripper.o: $(hdrdir)/ruby/internal/globals.h
ripper.o: $(hdrdir)/ruby/internal/has/attribute.h
ripper.o: $(hdrdir)/ruby/internal/has/builtin.h
ripper.o: $(hdrdir)/ruby/internal/has/c_attribute.h
ripper.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
ripper.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
ripper.o: $(hdrdir)/ruby/internal/has/extension.h
ripper.o: $(hdrdir)/ruby/internal/has/feature.h
ripper.o: $(hdrdir)/ruby/internal/has/warning.h
ripper.o: $(hdrdir)/ruby/internal/intern/array.h
ripper.o: $(hdrdir)/ruby/internal/intern/bignum.h
ripper.o: $(hdrdir)/ruby/internal/intern/class.h
ripper.o: $(hdrdir)/ruby/internal/intern/compar.h
ripper.o: $(hdrdir)/ruby/internal/intern/complex.h
ripper.o: $(hdrdir)/ruby/internal/intern/cont.h
ripper.o: $(hdrdir)/ruby/internal/intern/dir.h
ripper.o: $(hdrdir)/ruby/internal/intern/enum.h
ripper.o: $(hdrdir)/ruby/internal/intern/enumerator.h
ripper.o: $(hdrdir)/ruby/internal/intern/error.h
ripper.o: $(hdrdir)/ruby/internal/intern/eval.h
ripper.o: $(hdrdir)/ruby/internal/intern/file.h
ripper.o: $(hdrdir)/ruby/internal/intern/gc.h
ripper.o: $(hdrdir)/ruby/internal/intern/hash.h
ripper.o: $(hdrdir)/ruby/internal/intern/io.h
ripper.o: $(hdrdir)/ruby/internal/intern/load.h
ripper.o: $(hdrdir)/ruby/internal/intern/marshal.h
ripper.o: $(hdrdir)/ruby/internal/intern/numeric.h
ripper.o: $(hdrdir)/ruby/internal/intern/object.h
ripper.o: $(hdrdir)/ruby/internal/intern/parse.h
ripper.o: $(hdrdir)/ruby/internal/intern/proc.h
ripper.o: $(hdrdir)/ruby/internal/intern/process.h
ripper.o: $(hdrdir)/ruby/internal/intern/random.h
ripper.o: $(hdrdir)/ruby/internal/intern/range.h
ripper.o: $(hdrdir)/ruby/internal/intern/rational.h
ripper.o: $(hdrdir)/ruby/internal/intern/re.h
ripper.o: $(hdrdir)/ruby/internal/intern/ruby.h
ripper.o: $(hdrdir)/ruby/internal/intern/select.h
ripper.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
ripper.o: $(hdrdir)/ruby/internal/intern/signal.h
ripper.o: $(hdrdir)/ruby/internal/intern/sprintf.h
ripper.o: $(hdrdir)/ruby/internal/intern/string.h
ripper.o: $(hdrdir)/ruby/internal/intern/struct.h
ripper.o: $(hdrdir)/ruby/internal/intern/thread.h
ripper.o: $(hdrdir)/ruby/internal/intern/time.h
ripper.o: $(hdrdir)/ruby/internal/intern/variable.h
ripper.o: $(hdrdir)/ruby/internal/intern/vm.h
ripper.o: $(hdrdir)/ruby/internal/interpreter.h
ripper.o: $(hdrdir)/ruby/internal/iterator.h
ripper.o: $(hdrdir)/ruby/internal/memory.h
ripper.o: $(hdrdir)/ruby/internal/method.h
ripper.o: $(hdrdir)/ruby/internal/module.h
ripper.o: $(hdrdir)/ruby/internal/newobj.h
ripper.o: $(hdrdir)/ruby/internal/rgengc.h
ripper.o: $(hdrdir)/ruby/internal/scan_args.h
ripper.o: $(hdrdir)/ruby/internal/special_consts.h
ripper.o: $(hdrdir)/ruby/internal/static_assert.h
ripper.o: $(hdrdir)/ruby/internal/stdalign.h
ripper.o: $(hdrdir)/ruby/internal/stdbool.h
ripper.o: $(hdrdir)/ruby/internal/symbol.h
ripper.o: $(hdrdir)/ruby/internal/token_paste.h
ripper.o: $(hdrdir)/ruby/internal/value.h
ripper.o: $(hdrdir)/ruby/internal/value_type.h
ripper.o: $(hdrdir)/ruby/internal/variable.h
ripper.o: $(hdrdir)/ruby/internal/warning_push.h
ripper.o: $(hdrdir)/ruby/internal/xmalloc.h
ripper.o: $(hdrdir)/ruby/io.h
ripper.o: $(hdrdir)/ruby/missing.h
ripper.o: $(hdrdir)/ruby/onigmo.h
ripper.o: $(hdrdir)/ruby/oniguruma.h
ripper.o: $(hdrdir)/ruby/ractor.h
ripper.o: $(hdrdir)/ruby/regex.h
ripper.o: $(hdrdir)/ruby/ruby.h
ripper.o: $(hdrdir)/ruby/st.h
ripper.o: $(hdrdir)/ruby/subst.h
ripper.o: $(hdrdir)/ruby/util.h
ripper.o: $(top_srcdir)/constant.h
ripper.o: $(top_srcdir)/id_table.h
ripper.o: $(top_srcdir)/internal.h
ripper.o: $(top_srcdir)/internal/array.h
ripper.o: $(top_srcdir)/internal/bignum.h
ripper.o: $(top_srcdir)/internal/bits.h
ripper.o: $(top_srcdir)/internal/compile.h
ripper.o: $(top_srcdir)/internal/compilers.h
ripper.o: $(top_srcdir)/internal/complex.h
ripper.o: $(top_srcdir)/internal/error.h
ripper.o: $(top_srcdir)/internal/fixnum.h
ripper.o: $(top_srcdir)/internal/gc.h
ripper.o: $(top_srcdir)/internal/hash.h
ripper.o: $(top_srcdir)/internal/imemo.h
ripper.o: $(top_srcdir)/internal/io.h
ripper.o: $(top_srcdir)/internal/numeric.h
ripper.o: $(top_srcdir)/internal/parse.h
ripper.o: $(top_srcdir)/internal/rational.h
ripper.o: $(top_srcdir)/internal/re.h
ripper.o: $(top_srcdir)/internal/serial.h
ripper.o: $(top_srcdir)/internal/static_assert.h
ripper.o: $(top_srcdir)/internal/string.h
ripper.o: $(top_srcdir)/internal/symbol.h
ripper.o: $(top_srcdir)/internal/thread.h
ripper.o: $(top_srcdir)/internal/util.h
ripper.o: $(top_srcdir)/internal/variable.h
ripper.o: $(top_srcdir)/internal/vm.h
ripper.o: $(top_srcdir)/internal/warnings.h
ripper.o: $(top_srcdir)/node.h
ripper.o: $(top_srcdir)/regenc.h
ripper.o: $(top_srcdir)/ruby_assert.h
ripper.o: $(top_srcdir)/symbol.h
ripper.o: ../../probes.h
ripper.o: eventids2.c
ripper.o: ripper.y
ripper.o: eventids1.c
ripper.o: eventids2table.c
ripper.o: id.h
ripper.o: lex.c
ripper.o: parse.h
ripper.o: probes.dmyh
ripper.o: ripper.c
# AUTOGENERATED DEPENDENCIES END
