
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
srcdir = $(top_srcdir)/ext/-test-/exception
topdir = ../../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
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
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir)
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

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = /-test-
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = dataerror.c enc_raise.c ensured.c init.c
SRCS = $(ORIG_SRCS) 
OBJS = dataerror.o enc_raise.o ensured.o init.o
HDRS = 
LOCAL_HDRS = 
TARGET = exception
TARGET_NAME = exception
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.-test-.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR) 2> /dev/null || true
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default:
	@$(NULLCMD)
$(TIMESTAMP_DIR)/$(arch)/.-test-.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.-test-.time
	$(ECHO) linking shared-object -test-/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# AUTOGENERATED DEPENDENCIES START
dataerror.o: $(RUBY_EXTCONF_H)
dataerror.o: $(arch_hdrdir)/ruby/config.h
dataerror.o: $(hdrdir)/ruby/internal/anyargs.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/char.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/double.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/int.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/long.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/short.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
dataerror.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
dataerror.o: $(hdrdir)/ruby/internal/assume.h
dataerror.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
dataerror.o: $(hdrdir)/ruby/internal/attr/artificial.h
dataerror.o: $(hdrdir)/ruby/internal/attr/cold.h
dataerror.o: $(hdrdir)/ruby/internal/attr/const.h
dataerror.o: $(hdrdir)/ruby/internal/attr/constexpr.h
dataerror.o: $(hdrdir)/ruby/internal/attr/deprecated.h
dataerror.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
dataerror.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
dataerror.o: $(hdrdir)/ruby/internal/attr/error.h
dataerror.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
dataerror.o: $(hdrdir)/ruby/internal/attr/forceinline.h
dataerror.o: $(hdrdir)/ruby/internal/attr/format.h
dataerror.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
dataerror.o: $(hdrdir)/ruby/internal/attr/noalias.h
dataerror.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
dataerror.o: $(hdrdir)/ruby/internal/attr/noexcept.h
dataerror.o: $(hdrdir)/ruby/internal/attr/noinline.h
dataerror.o: $(hdrdir)/ruby/internal/attr/nonnull.h
dataerror.o: $(hdrdir)/ruby/internal/attr/noreturn.h
dataerror.o: $(hdrdir)/ruby/internal/attr/pure.h
dataerror.o: $(hdrdir)/ruby/internal/attr/restrict.h
dataerror.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
dataerror.o: $(hdrdir)/ruby/internal/attr/warning.h
dataerror.o: $(hdrdir)/ruby/internal/attr/weakref.h
dataerror.o: $(hdrdir)/ruby/internal/cast.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
dataerror.o: $(hdrdir)/ruby/internal/compiler_since.h
dataerror.o: $(hdrdir)/ruby/internal/config.h
dataerror.o: $(hdrdir)/ruby/internal/constant_p.h
dataerror.o: $(hdrdir)/ruby/internal/core.h
dataerror.o: $(hdrdir)/ruby/internal/core/rarray.h
dataerror.o: $(hdrdir)/ruby/internal/core/rbasic.h
dataerror.o: $(hdrdir)/ruby/internal/core/rbignum.h
dataerror.o: $(hdrdir)/ruby/internal/core/rclass.h
dataerror.o: $(hdrdir)/ruby/internal/core/rdata.h
dataerror.o: $(hdrdir)/ruby/internal/core/rfile.h
dataerror.o: $(hdrdir)/ruby/internal/core/rhash.h
dataerror.o: $(hdrdir)/ruby/internal/core/robject.h
dataerror.o: $(hdrdir)/ruby/internal/core/rregexp.h
dataerror.o: $(hdrdir)/ruby/internal/core/rstring.h
dataerror.o: $(hdrdir)/ruby/internal/core/rstruct.h
dataerror.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
dataerror.o: $(hdrdir)/ruby/internal/ctype.h
dataerror.o: $(hdrdir)/ruby/internal/dllexport.h
dataerror.o: $(hdrdir)/ruby/internal/dosish.h
dataerror.o: $(hdrdir)/ruby/internal/error.h
dataerror.o: $(hdrdir)/ruby/internal/eval.h
dataerror.o: $(hdrdir)/ruby/internal/event.h
dataerror.o: $(hdrdir)/ruby/internal/fl_type.h
dataerror.o: $(hdrdir)/ruby/internal/gc.h
dataerror.o: $(hdrdir)/ruby/internal/glob.h
dataerror.o: $(hdrdir)/ruby/internal/globals.h
dataerror.o: $(hdrdir)/ruby/internal/has/attribute.h
dataerror.o: $(hdrdir)/ruby/internal/has/builtin.h
dataerror.o: $(hdrdir)/ruby/internal/has/c_attribute.h
dataerror.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
dataerror.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
dataerror.o: $(hdrdir)/ruby/internal/has/extension.h
dataerror.o: $(hdrdir)/ruby/internal/has/feature.h
dataerror.o: $(hdrdir)/ruby/internal/has/warning.h
dataerror.o: $(hdrdir)/ruby/internal/intern/array.h
dataerror.o: $(hdrdir)/ruby/internal/intern/bignum.h
dataerror.o: $(hdrdir)/ruby/internal/intern/class.h
dataerror.o: $(hdrdir)/ruby/internal/intern/compar.h
dataerror.o: $(hdrdir)/ruby/internal/intern/complex.h
dataerror.o: $(hdrdir)/ruby/internal/intern/cont.h
dataerror.o: $(hdrdir)/ruby/internal/intern/dir.h
dataerror.o: $(hdrdir)/ruby/internal/intern/enum.h
dataerror.o: $(hdrdir)/ruby/internal/intern/enumerator.h
dataerror.o: $(hdrdir)/ruby/internal/intern/error.h
dataerror.o: $(hdrdir)/ruby/internal/intern/eval.h
dataerror.o: $(hdrdir)/ruby/internal/intern/file.h
dataerror.o: $(hdrdir)/ruby/internal/intern/gc.h
dataerror.o: $(hdrdir)/ruby/internal/intern/hash.h
dataerror.o: $(hdrdir)/ruby/internal/intern/io.h
dataerror.o: $(hdrdir)/ruby/internal/intern/load.h
dataerror.o: $(hdrdir)/ruby/internal/intern/marshal.h
dataerror.o: $(hdrdir)/ruby/internal/intern/numeric.h
dataerror.o: $(hdrdir)/ruby/internal/intern/object.h
dataerror.o: $(hdrdir)/ruby/internal/intern/parse.h
dataerror.o: $(hdrdir)/ruby/internal/intern/proc.h
dataerror.o: $(hdrdir)/ruby/internal/intern/process.h
dataerror.o: $(hdrdir)/ruby/internal/intern/random.h
dataerror.o: $(hdrdir)/ruby/internal/intern/range.h
dataerror.o: $(hdrdir)/ruby/internal/intern/rational.h
dataerror.o: $(hdrdir)/ruby/internal/intern/re.h
dataerror.o: $(hdrdir)/ruby/internal/intern/ruby.h
dataerror.o: $(hdrdir)/ruby/internal/intern/select.h
dataerror.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
dataerror.o: $(hdrdir)/ruby/internal/intern/signal.h
dataerror.o: $(hdrdir)/ruby/internal/intern/sprintf.h
dataerror.o: $(hdrdir)/ruby/internal/intern/string.h
dataerror.o: $(hdrdir)/ruby/internal/intern/struct.h
dataerror.o: $(hdrdir)/ruby/internal/intern/thread.h
dataerror.o: $(hdrdir)/ruby/internal/intern/time.h
dataerror.o: $(hdrdir)/ruby/internal/intern/variable.h
dataerror.o: $(hdrdir)/ruby/internal/intern/vm.h
dataerror.o: $(hdrdir)/ruby/internal/interpreter.h
dataerror.o: $(hdrdir)/ruby/internal/iterator.h
dataerror.o: $(hdrdir)/ruby/internal/memory.h
dataerror.o: $(hdrdir)/ruby/internal/method.h
dataerror.o: $(hdrdir)/ruby/internal/module.h
dataerror.o: $(hdrdir)/ruby/internal/newobj.h
dataerror.o: $(hdrdir)/ruby/internal/rgengc.h
dataerror.o: $(hdrdir)/ruby/internal/scan_args.h
dataerror.o: $(hdrdir)/ruby/internal/special_consts.h
dataerror.o: $(hdrdir)/ruby/internal/static_assert.h
dataerror.o: $(hdrdir)/ruby/internal/stdalign.h
dataerror.o: $(hdrdir)/ruby/internal/stdbool.h
dataerror.o: $(hdrdir)/ruby/internal/symbol.h
dataerror.o: $(hdrdir)/ruby/internal/token_paste.h
dataerror.o: $(hdrdir)/ruby/internal/value.h
dataerror.o: $(hdrdir)/ruby/internal/value_type.h
dataerror.o: $(hdrdir)/ruby/internal/variable.h
dataerror.o: $(hdrdir)/ruby/internal/warning_push.h
dataerror.o: $(hdrdir)/ruby/internal/xmalloc.h
dataerror.o: $(hdrdir)/ruby/assert.h
dataerror.o: $(hdrdir)/ruby/backward.h
dataerror.o: $(hdrdir)/ruby/backward/2/assume.h
dataerror.o: $(hdrdir)/ruby/backward/2/attributes.h
dataerror.o: $(hdrdir)/ruby/backward/2/bool.h
dataerror.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
dataerror.o: $(hdrdir)/ruby/backward/2/inttypes.h
dataerror.o: $(hdrdir)/ruby/backward/2/limits.h
dataerror.o: $(hdrdir)/ruby/backward/2/long_long.h
dataerror.o: $(hdrdir)/ruby/backward/2/stdalign.h
dataerror.o: $(hdrdir)/ruby/backward/2/stdarg.h
dataerror.o: $(hdrdir)/ruby/defines.h
dataerror.o: $(hdrdir)/ruby/intern.h
dataerror.o: $(hdrdir)/ruby/missing.h
dataerror.o: $(hdrdir)/ruby/ruby.h
dataerror.o: $(hdrdir)/ruby/st.h
dataerror.o: $(hdrdir)/ruby/subst.h
dataerror.o: dataerror.c
enc_raise.o: $(RUBY_EXTCONF_H)
enc_raise.o: $(arch_hdrdir)/ruby/config.h
enc_raise.o: $(hdrdir)/ruby.h
enc_raise.o: $(hdrdir)/ruby/internal/anyargs.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/char.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/double.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/int.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/long.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/short.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
enc_raise.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
enc_raise.o: $(hdrdir)/ruby/internal/assume.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/artificial.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/cold.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/const.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/constexpr.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/deprecated.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/error.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/forceinline.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/format.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/noalias.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/noexcept.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/noinline.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/nonnull.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/noreturn.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/pure.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/restrict.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/warning.h
enc_raise.o: $(hdrdir)/ruby/internal/attr/weakref.h
enc_raise.o: $(hdrdir)/ruby/internal/cast.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
enc_raise.o: $(hdrdir)/ruby/internal/compiler_since.h
enc_raise.o: $(hdrdir)/ruby/internal/config.h
enc_raise.o: $(hdrdir)/ruby/internal/constant_p.h
enc_raise.o: $(hdrdir)/ruby/internal/core.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rarray.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rbasic.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rbignum.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rclass.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rdata.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rfile.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rhash.h
enc_raise.o: $(hdrdir)/ruby/internal/core/robject.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rregexp.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rstring.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rstruct.h
enc_raise.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
enc_raise.o: $(hdrdir)/ruby/internal/ctype.h
enc_raise.o: $(hdrdir)/ruby/internal/dllexport.h
enc_raise.o: $(hdrdir)/ruby/internal/dosish.h
enc_raise.o: $(hdrdir)/ruby/internal/error.h
enc_raise.o: $(hdrdir)/ruby/internal/eval.h
enc_raise.o: $(hdrdir)/ruby/internal/event.h
enc_raise.o: $(hdrdir)/ruby/internal/fl_type.h
enc_raise.o: $(hdrdir)/ruby/internal/gc.h
enc_raise.o: $(hdrdir)/ruby/internal/glob.h
enc_raise.o: $(hdrdir)/ruby/internal/globals.h
enc_raise.o: $(hdrdir)/ruby/internal/has/attribute.h
enc_raise.o: $(hdrdir)/ruby/internal/has/builtin.h
enc_raise.o: $(hdrdir)/ruby/internal/has/c_attribute.h
enc_raise.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
enc_raise.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
enc_raise.o: $(hdrdir)/ruby/internal/has/extension.h
enc_raise.o: $(hdrdir)/ruby/internal/has/feature.h
enc_raise.o: $(hdrdir)/ruby/internal/has/warning.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/array.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/bignum.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/class.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/compar.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/complex.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/cont.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/dir.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/enum.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/enumerator.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/error.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/eval.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/file.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/gc.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/hash.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/io.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/load.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/marshal.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/numeric.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/object.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/parse.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/proc.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/process.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/random.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/range.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/rational.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/re.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/ruby.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/select.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/signal.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/sprintf.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/string.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/struct.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/thread.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/time.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/variable.h
enc_raise.o: $(hdrdir)/ruby/internal/intern/vm.h
enc_raise.o: $(hdrdir)/ruby/internal/interpreter.h
enc_raise.o: $(hdrdir)/ruby/internal/iterator.h
enc_raise.o: $(hdrdir)/ruby/internal/memory.h
enc_raise.o: $(hdrdir)/ruby/internal/method.h
enc_raise.o: $(hdrdir)/ruby/internal/module.h
enc_raise.o: $(hdrdir)/ruby/internal/newobj.h
enc_raise.o: $(hdrdir)/ruby/internal/rgengc.h
enc_raise.o: $(hdrdir)/ruby/internal/scan_args.h
enc_raise.o: $(hdrdir)/ruby/internal/special_consts.h
enc_raise.o: $(hdrdir)/ruby/internal/static_assert.h
enc_raise.o: $(hdrdir)/ruby/internal/stdalign.h
enc_raise.o: $(hdrdir)/ruby/internal/stdbool.h
enc_raise.o: $(hdrdir)/ruby/internal/symbol.h
enc_raise.o: $(hdrdir)/ruby/internal/token_paste.h
enc_raise.o: $(hdrdir)/ruby/internal/value.h
enc_raise.o: $(hdrdir)/ruby/internal/value_type.h
enc_raise.o: $(hdrdir)/ruby/internal/variable.h
enc_raise.o: $(hdrdir)/ruby/internal/warning_push.h
enc_raise.o: $(hdrdir)/ruby/internal/xmalloc.h
enc_raise.o: $(hdrdir)/ruby/assert.h
enc_raise.o: $(hdrdir)/ruby/backward.h
enc_raise.o: $(hdrdir)/ruby/backward/2/assume.h
enc_raise.o: $(hdrdir)/ruby/backward/2/attributes.h
enc_raise.o: $(hdrdir)/ruby/backward/2/bool.h
enc_raise.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
enc_raise.o: $(hdrdir)/ruby/backward/2/inttypes.h
enc_raise.o: $(hdrdir)/ruby/backward/2/limits.h
enc_raise.o: $(hdrdir)/ruby/backward/2/long_long.h
enc_raise.o: $(hdrdir)/ruby/backward/2/stdalign.h
enc_raise.o: $(hdrdir)/ruby/backward/2/stdarg.h
enc_raise.o: $(hdrdir)/ruby/defines.h
enc_raise.o: $(hdrdir)/ruby/encoding.h
enc_raise.o: $(hdrdir)/ruby/intern.h
enc_raise.o: $(hdrdir)/ruby/missing.h
enc_raise.o: $(hdrdir)/ruby/onigmo.h
enc_raise.o: $(hdrdir)/ruby/oniguruma.h
enc_raise.o: $(hdrdir)/ruby/ruby.h
enc_raise.o: $(hdrdir)/ruby/st.h
enc_raise.o: $(hdrdir)/ruby/subst.h
enc_raise.o: enc_raise.c
ensured.o: $(RUBY_EXTCONF_H)
ensured.o: $(arch_hdrdir)/ruby/config.h
ensured.o: $(hdrdir)/ruby.h
ensured.o: $(hdrdir)/ruby/internal/anyargs.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/char.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/double.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/int.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/long.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/short.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
ensured.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
ensured.o: $(hdrdir)/ruby/internal/assume.h
ensured.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
ensured.o: $(hdrdir)/ruby/internal/attr/artificial.h
ensured.o: $(hdrdir)/ruby/internal/attr/cold.h
ensured.o: $(hdrdir)/ruby/internal/attr/const.h
ensured.o: $(hdrdir)/ruby/internal/attr/constexpr.h
ensured.o: $(hdrdir)/ruby/internal/attr/deprecated.h
ensured.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
ensured.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
ensured.o: $(hdrdir)/ruby/internal/attr/error.h
ensured.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
ensured.o: $(hdrdir)/ruby/internal/attr/forceinline.h
ensured.o: $(hdrdir)/ruby/internal/attr/format.h
ensured.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
ensured.o: $(hdrdir)/ruby/internal/attr/noalias.h
ensured.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
ensured.o: $(hdrdir)/ruby/internal/attr/noexcept.h
ensured.o: $(hdrdir)/ruby/internal/attr/noinline.h
ensured.o: $(hdrdir)/ruby/internal/attr/nonnull.h
ensured.o: $(hdrdir)/ruby/internal/attr/noreturn.h
ensured.o: $(hdrdir)/ruby/internal/attr/pure.h
ensured.o: $(hdrdir)/ruby/internal/attr/restrict.h
ensured.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
ensured.o: $(hdrdir)/ruby/internal/attr/warning.h
ensured.o: $(hdrdir)/ruby/internal/attr/weakref.h
ensured.o: $(hdrdir)/ruby/internal/cast.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
ensured.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
ensured.o: $(hdrdir)/ruby/internal/compiler_since.h
ensured.o: $(hdrdir)/ruby/internal/config.h
ensured.o: $(hdrdir)/ruby/internal/constant_p.h
ensured.o: $(hdrdir)/ruby/internal/core.h
ensured.o: $(hdrdir)/ruby/internal/core/rarray.h
ensured.o: $(hdrdir)/ruby/internal/core/rbasic.h
ensured.o: $(hdrdir)/ruby/internal/core/rbignum.h
ensured.o: $(hdrdir)/ruby/internal/core/rclass.h
ensured.o: $(hdrdir)/ruby/internal/core/rdata.h
ensured.o: $(hdrdir)/ruby/internal/core/rfile.h
ensured.o: $(hdrdir)/ruby/internal/core/rhash.h
ensured.o: $(hdrdir)/ruby/internal/core/robject.h
ensured.o: $(hdrdir)/ruby/internal/core/rregexp.h
ensured.o: $(hdrdir)/ruby/internal/core/rstring.h
ensured.o: $(hdrdir)/ruby/internal/core/rstruct.h
ensured.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
ensured.o: $(hdrdir)/ruby/internal/ctype.h
ensured.o: $(hdrdir)/ruby/internal/dllexport.h
ensured.o: $(hdrdir)/ruby/internal/dosish.h
ensured.o: $(hdrdir)/ruby/internal/error.h
ensured.o: $(hdrdir)/ruby/internal/eval.h
ensured.o: $(hdrdir)/ruby/internal/event.h
ensured.o: $(hdrdir)/ruby/internal/fl_type.h
ensured.o: $(hdrdir)/ruby/internal/gc.h
ensured.o: $(hdrdir)/ruby/internal/glob.h
ensured.o: $(hdrdir)/ruby/internal/globals.h
ensured.o: $(hdrdir)/ruby/internal/has/attribute.h
ensured.o: $(hdrdir)/ruby/internal/has/builtin.h
ensured.o: $(hdrdir)/ruby/internal/has/c_attribute.h
ensured.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
ensured.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
ensured.o: $(hdrdir)/ruby/internal/has/extension.h
ensured.o: $(hdrdir)/ruby/internal/has/feature.h
ensured.o: $(hdrdir)/ruby/internal/has/warning.h
ensured.o: $(hdrdir)/ruby/internal/intern/array.h
ensured.o: $(hdrdir)/ruby/internal/intern/bignum.h
ensured.o: $(hdrdir)/ruby/internal/intern/class.h
ensured.o: $(hdrdir)/ruby/internal/intern/compar.h
ensured.o: $(hdrdir)/ruby/internal/intern/complex.h
ensured.o: $(hdrdir)/ruby/internal/intern/cont.h
ensured.o: $(hdrdir)/ruby/internal/intern/dir.h
ensured.o: $(hdrdir)/ruby/internal/intern/enum.h
ensured.o: $(hdrdir)/ruby/internal/intern/enumerator.h
ensured.o: $(hdrdir)/ruby/internal/intern/error.h
ensured.o: $(hdrdir)/ruby/internal/intern/eval.h
ensured.o: $(hdrdir)/ruby/internal/intern/file.h
ensured.o: $(hdrdir)/ruby/internal/intern/gc.h
ensured.o: $(hdrdir)/ruby/internal/intern/hash.h
ensured.o: $(hdrdir)/ruby/internal/intern/io.h
ensured.o: $(hdrdir)/ruby/internal/intern/load.h
ensured.o: $(hdrdir)/ruby/internal/intern/marshal.h
ensured.o: $(hdrdir)/ruby/internal/intern/numeric.h
ensured.o: $(hdrdir)/ruby/internal/intern/object.h
ensured.o: $(hdrdir)/ruby/internal/intern/parse.h
ensured.o: $(hdrdir)/ruby/internal/intern/proc.h
ensured.o: $(hdrdir)/ruby/internal/intern/process.h
ensured.o: $(hdrdir)/ruby/internal/intern/random.h
ensured.o: $(hdrdir)/ruby/internal/intern/range.h
ensured.o: $(hdrdir)/ruby/internal/intern/rational.h
ensured.o: $(hdrdir)/ruby/internal/intern/re.h
ensured.o: $(hdrdir)/ruby/internal/intern/ruby.h
ensured.o: $(hdrdir)/ruby/internal/intern/select.h
ensured.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
ensured.o: $(hdrdir)/ruby/internal/intern/signal.h
ensured.o: $(hdrdir)/ruby/internal/intern/sprintf.h
ensured.o: $(hdrdir)/ruby/internal/intern/string.h
ensured.o: $(hdrdir)/ruby/internal/intern/struct.h
ensured.o: $(hdrdir)/ruby/internal/intern/thread.h
ensured.o: $(hdrdir)/ruby/internal/intern/time.h
ensured.o: $(hdrdir)/ruby/internal/intern/variable.h
ensured.o: $(hdrdir)/ruby/internal/intern/vm.h
ensured.o: $(hdrdir)/ruby/internal/interpreter.h
ensured.o: $(hdrdir)/ruby/internal/iterator.h
ensured.o: $(hdrdir)/ruby/internal/memory.h
ensured.o: $(hdrdir)/ruby/internal/method.h
ensured.o: $(hdrdir)/ruby/internal/module.h
ensured.o: $(hdrdir)/ruby/internal/newobj.h
ensured.o: $(hdrdir)/ruby/internal/rgengc.h
ensured.o: $(hdrdir)/ruby/internal/scan_args.h
ensured.o: $(hdrdir)/ruby/internal/special_consts.h
ensured.o: $(hdrdir)/ruby/internal/static_assert.h
ensured.o: $(hdrdir)/ruby/internal/stdalign.h
ensured.o: $(hdrdir)/ruby/internal/stdbool.h
ensured.o: $(hdrdir)/ruby/internal/symbol.h
ensured.o: $(hdrdir)/ruby/internal/token_paste.h
ensured.o: $(hdrdir)/ruby/internal/value.h
ensured.o: $(hdrdir)/ruby/internal/value_type.h
ensured.o: $(hdrdir)/ruby/internal/variable.h
ensured.o: $(hdrdir)/ruby/internal/warning_push.h
ensured.o: $(hdrdir)/ruby/internal/xmalloc.h
ensured.o: $(hdrdir)/ruby/assert.h
ensured.o: $(hdrdir)/ruby/backward.h
ensured.o: $(hdrdir)/ruby/backward/2/assume.h
ensured.o: $(hdrdir)/ruby/backward/2/attributes.h
ensured.o: $(hdrdir)/ruby/backward/2/bool.h
ensured.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
ensured.o: $(hdrdir)/ruby/backward/2/inttypes.h
ensured.o: $(hdrdir)/ruby/backward/2/limits.h
ensured.o: $(hdrdir)/ruby/backward/2/long_long.h
ensured.o: $(hdrdir)/ruby/backward/2/stdalign.h
ensured.o: $(hdrdir)/ruby/backward/2/stdarg.h
ensured.o: $(hdrdir)/ruby/defines.h
ensured.o: $(hdrdir)/ruby/intern.h
ensured.o: $(hdrdir)/ruby/missing.h
ensured.o: $(hdrdir)/ruby/ruby.h
ensured.o: $(hdrdir)/ruby/st.h
ensured.o: $(hdrdir)/ruby/subst.h
ensured.o: ensured.c
init.o: $(RUBY_EXTCONF_H)
init.o: $(arch_hdrdir)/ruby/config.h
init.o: $(hdrdir)/ruby.h
init.o: $(hdrdir)/ruby/internal/anyargs.h
init.o: $(hdrdir)/ruby/internal/arithmetic.h
init.o: $(hdrdir)/ruby/internal/arithmetic/char.h
init.o: $(hdrdir)/ruby/internal/arithmetic/double.h
init.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
init.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/int.h
init.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/long.h
init.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
init.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/short.h
init.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
init.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
init.o: $(hdrdir)/ruby/internal/assume.h
init.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
init.o: $(hdrdir)/ruby/internal/attr/artificial.h
init.o: $(hdrdir)/ruby/internal/attr/cold.h
init.o: $(hdrdir)/ruby/internal/attr/const.h
init.o: $(hdrdir)/ruby/internal/attr/constexpr.h
init.o: $(hdrdir)/ruby/internal/attr/deprecated.h
init.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
init.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
init.o: $(hdrdir)/ruby/internal/attr/error.h
init.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
init.o: $(hdrdir)/ruby/internal/attr/forceinline.h
init.o: $(hdrdir)/ruby/internal/attr/format.h
init.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
init.o: $(hdrdir)/ruby/internal/attr/noalias.h
init.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
init.o: $(hdrdir)/ruby/internal/attr/noexcept.h
init.o: $(hdrdir)/ruby/internal/attr/noinline.h
init.o: $(hdrdir)/ruby/internal/attr/nonnull.h
init.o: $(hdrdir)/ruby/internal/attr/noreturn.h
init.o: $(hdrdir)/ruby/internal/attr/pure.h
init.o: $(hdrdir)/ruby/internal/attr/restrict.h
init.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
init.o: $(hdrdir)/ruby/internal/attr/warning.h
init.o: $(hdrdir)/ruby/internal/attr/weakref.h
init.o: $(hdrdir)/ruby/internal/cast.h
init.o: $(hdrdir)/ruby/internal/compiler_is.h
init.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
init.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
init.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
init.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
init.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
init.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
init.o: $(hdrdir)/ruby/internal/compiler_since.h
init.o: $(hdrdir)/ruby/internal/config.h
init.o: $(hdrdir)/ruby/internal/constant_p.h
init.o: $(hdrdir)/ruby/internal/core.h
init.o: $(hdrdir)/ruby/internal/core/rarray.h
init.o: $(hdrdir)/ruby/internal/core/rbasic.h
init.o: $(hdrdir)/ruby/internal/core/rbignum.h
init.o: $(hdrdir)/ruby/internal/core/rclass.h
init.o: $(hdrdir)/ruby/internal/core/rdata.h
init.o: $(hdrdir)/ruby/internal/core/rfile.h
init.o: $(hdrdir)/ruby/internal/core/rhash.h
init.o: $(hdrdir)/ruby/internal/core/robject.h
init.o: $(hdrdir)/ruby/internal/core/rregexp.h
init.o: $(hdrdir)/ruby/internal/core/rstring.h
init.o: $(hdrdir)/ruby/internal/core/rstruct.h
init.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
init.o: $(hdrdir)/ruby/internal/ctype.h
init.o: $(hdrdir)/ruby/internal/dllexport.h
init.o: $(hdrdir)/ruby/internal/dosish.h
init.o: $(hdrdir)/ruby/internal/error.h
init.o: $(hdrdir)/ruby/internal/eval.h
init.o: $(hdrdir)/ruby/internal/event.h
init.o: $(hdrdir)/ruby/internal/fl_type.h
init.o: $(hdrdir)/ruby/internal/gc.h
init.o: $(hdrdir)/ruby/internal/glob.h
init.o: $(hdrdir)/ruby/internal/globals.h
init.o: $(hdrdir)/ruby/internal/has/attribute.h
init.o: $(hdrdir)/ruby/internal/has/builtin.h
init.o: $(hdrdir)/ruby/internal/has/c_attribute.h
init.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
init.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
init.o: $(hdrdir)/ruby/internal/has/extension.h
init.o: $(hdrdir)/ruby/internal/has/feature.h
init.o: $(hdrdir)/ruby/internal/has/warning.h
init.o: $(hdrdir)/ruby/internal/intern/array.h
init.o: $(hdrdir)/ruby/internal/intern/bignum.h
init.o: $(hdrdir)/ruby/internal/intern/class.h
init.o: $(hdrdir)/ruby/internal/intern/compar.h
init.o: $(hdrdir)/ruby/internal/intern/complex.h
init.o: $(hdrdir)/ruby/internal/intern/cont.h
init.o: $(hdrdir)/ruby/internal/intern/dir.h
init.o: $(hdrdir)/ruby/internal/intern/enum.h
init.o: $(hdrdir)/ruby/internal/intern/enumerator.h
init.o: $(hdrdir)/ruby/internal/intern/error.h
init.o: $(hdrdir)/ruby/internal/intern/eval.h
init.o: $(hdrdir)/ruby/internal/intern/file.h
init.o: $(hdrdir)/ruby/internal/intern/gc.h
init.o: $(hdrdir)/ruby/internal/intern/hash.h
init.o: $(hdrdir)/ruby/internal/intern/io.h
init.o: $(hdrdir)/ruby/internal/intern/load.h
init.o: $(hdrdir)/ruby/internal/intern/marshal.h
init.o: $(hdrdir)/ruby/internal/intern/numeric.h
init.o: $(hdrdir)/ruby/internal/intern/object.h
init.o: $(hdrdir)/ruby/internal/intern/parse.h
init.o: $(hdrdir)/ruby/internal/intern/proc.h
init.o: $(hdrdir)/ruby/internal/intern/process.h
init.o: $(hdrdir)/ruby/internal/intern/random.h
init.o: $(hdrdir)/ruby/internal/intern/range.h
init.o: $(hdrdir)/ruby/internal/intern/rational.h
init.o: $(hdrdir)/ruby/internal/intern/re.h
init.o: $(hdrdir)/ruby/internal/intern/ruby.h
init.o: $(hdrdir)/ruby/internal/intern/select.h
init.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
init.o: $(hdrdir)/ruby/internal/intern/signal.h
init.o: $(hdrdir)/ruby/internal/intern/sprintf.h
init.o: $(hdrdir)/ruby/internal/intern/string.h
init.o: $(hdrdir)/ruby/internal/intern/struct.h
init.o: $(hdrdir)/ruby/internal/intern/thread.h
init.o: $(hdrdir)/ruby/internal/intern/time.h
init.o: $(hdrdir)/ruby/internal/intern/variable.h
init.o: $(hdrdir)/ruby/internal/intern/vm.h
init.o: $(hdrdir)/ruby/internal/interpreter.h
init.o: $(hdrdir)/ruby/internal/iterator.h
init.o: $(hdrdir)/ruby/internal/memory.h
init.o: $(hdrdir)/ruby/internal/method.h
init.o: $(hdrdir)/ruby/internal/module.h
init.o: $(hdrdir)/ruby/internal/newobj.h
init.o: $(hdrdir)/ruby/internal/rgengc.h
init.o: $(hdrdir)/ruby/internal/scan_args.h
init.o: $(hdrdir)/ruby/internal/special_consts.h
init.o: $(hdrdir)/ruby/internal/static_assert.h
init.o: $(hdrdir)/ruby/internal/stdalign.h
init.o: $(hdrdir)/ruby/internal/stdbool.h
init.o: $(hdrdir)/ruby/internal/symbol.h
init.o: $(hdrdir)/ruby/internal/token_paste.h
init.o: $(hdrdir)/ruby/internal/value.h
init.o: $(hdrdir)/ruby/internal/value_type.h
init.o: $(hdrdir)/ruby/internal/variable.h
init.o: $(hdrdir)/ruby/internal/warning_push.h
init.o: $(hdrdir)/ruby/internal/xmalloc.h
init.o: $(hdrdir)/ruby/assert.h
init.o: $(hdrdir)/ruby/backward.h
init.o: $(hdrdir)/ruby/backward/2/assume.h
init.o: $(hdrdir)/ruby/backward/2/attributes.h
init.o: $(hdrdir)/ruby/backward/2/bool.h
init.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
init.o: $(hdrdir)/ruby/backward/2/inttypes.h
init.o: $(hdrdir)/ruby/backward/2/limits.h
init.o: $(hdrdir)/ruby/backward/2/long_long.h
init.o: $(hdrdir)/ruby/backward/2/stdalign.h
init.o: $(hdrdir)/ruby/backward/2/stdarg.h
init.o: $(hdrdir)/ruby/defines.h
init.o: $(hdrdir)/ruby/intern.h
init.o: $(hdrdir)/ruby/missing.h
init.o: $(hdrdir)/ruby/ruby.h
init.o: $(hdrdir)/ruby/st.h
init.o: $(hdrdir)/ruby/subst.h
init.o: init.c
# AUTOGENERATED DEPENDENCIES END
