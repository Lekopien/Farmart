
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
srcdir = $(top_srcdir)/ext/-test-/integer
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

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = /-test-
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = core_ext.c init.c my_integer.c
SRCS = $(ORIG_SRCS) 
OBJS = core_ext.o init.o my_integer.o
HDRS = 
LOCAL_HDRS = 
TARGET = integer
TARGET_NAME = integer
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
core_ext.o: $(RUBY_EXTCONF_H)
core_ext.o: $(arch_hdrdir)/ruby/config.h
core_ext.o: $(hdrdir)/ruby.h
core_ext.o: $(hdrdir)/ruby/internal/anyargs.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/char.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/double.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/int.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/long.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/short.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
core_ext.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
core_ext.o: $(hdrdir)/ruby/internal/assume.h
core_ext.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
core_ext.o: $(hdrdir)/ruby/internal/attr/artificial.h
core_ext.o: $(hdrdir)/ruby/internal/attr/cold.h
core_ext.o: $(hdrdir)/ruby/internal/attr/const.h
core_ext.o: $(hdrdir)/ruby/internal/attr/constexpr.h
core_ext.o: $(hdrdir)/ruby/internal/attr/deprecated.h
core_ext.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
core_ext.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
core_ext.o: $(hdrdir)/ruby/internal/attr/error.h
core_ext.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
core_ext.o: $(hdrdir)/ruby/internal/attr/forceinline.h
core_ext.o: $(hdrdir)/ruby/internal/attr/format.h
core_ext.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
core_ext.o: $(hdrdir)/ruby/internal/attr/noalias.h
core_ext.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
core_ext.o: $(hdrdir)/ruby/internal/attr/noexcept.h
core_ext.o: $(hdrdir)/ruby/internal/attr/noinline.h
core_ext.o: $(hdrdir)/ruby/internal/attr/nonnull.h
core_ext.o: $(hdrdir)/ruby/internal/attr/noreturn.h
core_ext.o: $(hdrdir)/ruby/internal/attr/pure.h
core_ext.o: $(hdrdir)/ruby/internal/attr/restrict.h
core_ext.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
core_ext.o: $(hdrdir)/ruby/internal/attr/warning.h
core_ext.o: $(hdrdir)/ruby/internal/attr/weakref.h
core_ext.o: $(hdrdir)/ruby/internal/cast.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
core_ext.o: $(hdrdir)/ruby/internal/compiler_since.h
core_ext.o: $(hdrdir)/ruby/internal/config.h
core_ext.o: $(hdrdir)/ruby/internal/constant_p.h
core_ext.o: $(hdrdir)/ruby/internal/core.h
core_ext.o: $(hdrdir)/ruby/internal/core/rarray.h
core_ext.o: $(hdrdir)/ruby/internal/core/rbasic.h
core_ext.o: $(hdrdir)/ruby/internal/core/rbignum.h
core_ext.o: $(hdrdir)/ruby/internal/core/rclass.h
core_ext.o: $(hdrdir)/ruby/internal/core/rdata.h
core_ext.o: $(hdrdir)/ruby/internal/core/rfile.h
core_ext.o: $(hdrdir)/ruby/internal/core/rhash.h
core_ext.o: $(hdrdir)/ruby/internal/core/robject.h
core_ext.o: $(hdrdir)/ruby/internal/core/rregexp.h
core_ext.o: $(hdrdir)/ruby/internal/core/rstring.h
core_ext.o: $(hdrdir)/ruby/internal/core/rstruct.h
core_ext.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
core_ext.o: $(hdrdir)/ruby/internal/ctype.h
core_ext.o: $(hdrdir)/ruby/internal/dllexport.h
core_ext.o: $(hdrdir)/ruby/internal/dosish.h
core_ext.o: $(hdrdir)/ruby/internal/error.h
core_ext.o: $(hdrdir)/ruby/internal/eval.h
core_ext.o: $(hdrdir)/ruby/internal/event.h
core_ext.o: $(hdrdir)/ruby/internal/fl_type.h
core_ext.o: $(hdrdir)/ruby/internal/gc.h
core_ext.o: $(hdrdir)/ruby/internal/glob.h
core_ext.o: $(hdrdir)/ruby/internal/globals.h
core_ext.o: $(hdrdir)/ruby/internal/has/attribute.h
core_ext.o: $(hdrdir)/ruby/internal/has/builtin.h
core_ext.o: $(hdrdir)/ruby/internal/has/c_attribute.h
core_ext.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
core_ext.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
core_ext.o: $(hdrdir)/ruby/internal/has/extension.h
core_ext.o: $(hdrdir)/ruby/internal/has/feature.h
core_ext.o: $(hdrdir)/ruby/internal/has/warning.h
core_ext.o: $(hdrdir)/ruby/internal/intern/array.h
core_ext.o: $(hdrdir)/ruby/internal/intern/bignum.h
core_ext.o: $(hdrdir)/ruby/internal/intern/class.h
core_ext.o: $(hdrdir)/ruby/internal/intern/compar.h
core_ext.o: $(hdrdir)/ruby/internal/intern/complex.h
core_ext.o: $(hdrdir)/ruby/internal/intern/cont.h
core_ext.o: $(hdrdir)/ruby/internal/intern/dir.h
core_ext.o: $(hdrdir)/ruby/internal/intern/enum.h
core_ext.o: $(hdrdir)/ruby/internal/intern/enumerator.h
core_ext.o: $(hdrdir)/ruby/internal/intern/error.h
core_ext.o: $(hdrdir)/ruby/internal/intern/eval.h
core_ext.o: $(hdrdir)/ruby/internal/intern/file.h
core_ext.o: $(hdrdir)/ruby/internal/intern/gc.h
core_ext.o: $(hdrdir)/ruby/internal/intern/hash.h
core_ext.o: $(hdrdir)/ruby/internal/intern/io.h
core_ext.o: $(hdrdir)/ruby/internal/intern/load.h
core_ext.o: $(hdrdir)/ruby/internal/intern/marshal.h
core_ext.o: $(hdrdir)/ruby/internal/intern/numeric.h
core_ext.o: $(hdrdir)/ruby/internal/intern/object.h
core_ext.o: $(hdrdir)/ruby/internal/intern/parse.h
core_ext.o: $(hdrdir)/ruby/internal/intern/proc.h
core_ext.o: $(hdrdir)/ruby/internal/intern/process.h
core_ext.o: $(hdrdir)/ruby/internal/intern/random.h
core_ext.o: $(hdrdir)/ruby/internal/intern/range.h
core_ext.o: $(hdrdir)/ruby/internal/intern/rational.h
core_ext.o: $(hdrdir)/ruby/internal/intern/re.h
core_ext.o: $(hdrdir)/ruby/internal/intern/ruby.h
core_ext.o: $(hdrdir)/ruby/internal/intern/select.h
core_ext.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
core_ext.o: $(hdrdir)/ruby/internal/intern/signal.h
core_ext.o: $(hdrdir)/ruby/internal/intern/sprintf.h
core_ext.o: $(hdrdir)/ruby/internal/intern/string.h
core_ext.o: $(hdrdir)/ruby/internal/intern/struct.h
core_ext.o: $(hdrdir)/ruby/internal/intern/thread.h
core_ext.o: $(hdrdir)/ruby/internal/intern/time.h
core_ext.o: $(hdrdir)/ruby/internal/intern/variable.h
core_ext.o: $(hdrdir)/ruby/internal/intern/vm.h
core_ext.o: $(hdrdir)/ruby/internal/interpreter.h
core_ext.o: $(hdrdir)/ruby/internal/iterator.h
core_ext.o: $(hdrdir)/ruby/internal/memory.h
core_ext.o: $(hdrdir)/ruby/internal/method.h
core_ext.o: $(hdrdir)/ruby/internal/module.h
core_ext.o: $(hdrdir)/ruby/internal/newobj.h
core_ext.o: $(hdrdir)/ruby/internal/rgengc.h
core_ext.o: $(hdrdir)/ruby/internal/scan_args.h
core_ext.o: $(hdrdir)/ruby/internal/special_consts.h
core_ext.o: $(hdrdir)/ruby/internal/static_assert.h
core_ext.o: $(hdrdir)/ruby/internal/stdalign.h
core_ext.o: $(hdrdir)/ruby/internal/stdbool.h
core_ext.o: $(hdrdir)/ruby/internal/symbol.h
core_ext.o: $(hdrdir)/ruby/internal/token_paste.h
core_ext.o: $(hdrdir)/ruby/internal/value.h
core_ext.o: $(hdrdir)/ruby/internal/value_type.h
core_ext.o: $(hdrdir)/ruby/internal/variable.h
core_ext.o: $(hdrdir)/ruby/internal/warning_push.h
core_ext.o: $(hdrdir)/ruby/internal/xmalloc.h
core_ext.o: $(hdrdir)/ruby/assert.h
core_ext.o: $(hdrdir)/ruby/backward.h
core_ext.o: $(hdrdir)/ruby/backward/2/assume.h
core_ext.o: $(hdrdir)/ruby/backward/2/attributes.h
core_ext.o: $(hdrdir)/ruby/backward/2/bool.h
core_ext.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
core_ext.o: $(hdrdir)/ruby/backward/2/inttypes.h
core_ext.o: $(hdrdir)/ruby/backward/2/limits.h
core_ext.o: $(hdrdir)/ruby/backward/2/long_long.h
core_ext.o: $(hdrdir)/ruby/backward/2/stdalign.h
core_ext.o: $(hdrdir)/ruby/backward/2/stdarg.h
core_ext.o: $(hdrdir)/ruby/defines.h
core_ext.o: $(hdrdir)/ruby/intern.h
core_ext.o: $(hdrdir)/ruby/missing.h
core_ext.o: $(hdrdir)/ruby/ruby.h
core_ext.o: $(hdrdir)/ruby/st.h
core_ext.o: $(hdrdir)/ruby/subst.h
core_ext.o: $(top_srcdir)/internal.h
core_ext.o: $(top_srcdir)/internal/bignum.h
core_ext.o: $(top_srcdir)/internal/bits.h
core_ext.o: $(top_srcdir)/internal/compilers.h
core_ext.o: $(top_srcdir)/internal/fixnum.h
core_ext.o: $(top_srcdir)/internal/numeric.h
core_ext.o: $(top_srcdir)/internal/serial.h
core_ext.o: $(top_srcdir)/internal/static_assert.h
core_ext.o: $(top_srcdir)/internal/vm.h
core_ext.o: core_ext.c
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
my_integer.o: $(RUBY_EXTCONF_H)
my_integer.o: $(arch_hdrdir)/ruby/config.h
my_integer.o: $(hdrdir)/ruby.h
my_integer.o: $(hdrdir)/ruby/internal/anyargs.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/char.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/double.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/int.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/long.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/short.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
my_integer.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
my_integer.o: $(hdrdir)/ruby/internal/assume.h
my_integer.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
my_integer.o: $(hdrdir)/ruby/internal/attr/artificial.h
my_integer.o: $(hdrdir)/ruby/internal/attr/cold.h
my_integer.o: $(hdrdir)/ruby/internal/attr/const.h
my_integer.o: $(hdrdir)/ruby/internal/attr/constexpr.h
my_integer.o: $(hdrdir)/ruby/internal/attr/deprecated.h
my_integer.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
my_integer.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
my_integer.o: $(hdrdir)/ruby/internal/attr/error.h
my_integer.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
my_integer.o: $(hdrdir)/ruby/internal/attr/forceinline.h
my_integer.o: $(hdrdir)/ruby/internal/attr/format.h
my_integer.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
my_integer.o: $(hdrdir)/ruby/internal/attr/noalias.h
my_integer.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
my_integer.o: $(hdrdir)/ruby/internal/attr/noexcept.h
my_integer.o: $(hdrdir)/ruby/internal/attr/noinline.h
my_integer.o: $(hdrdir)/ruby/internal/attr/nonnull.h
my_integer.o: $(hdrdir)/ruby/internal/attr/noreturn.h
my_integer.o: $(hdrdir)/ruby/internal/attr/pure.h
my_integer.o: $(hdrdir)/ruby/internal/attr/restrict.h
my_integer.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
my_integer.o: $(hdrdir)/ruby/internal/attr/warning.h
my_integer.o: $(hdrdir)/ruby/internal/attr/weakref.h
my_integer.o: $(hdrdir)/ruby/internal/cast.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
my_integer.o: $(hdrdir)/ruby/internal/compiler_since.h
my_integer.o: $(hdrdir)/ruby/internal/config.h
my_integer.o: $(hdrdir)/ruby/internal/constant_p.h
my_integer.o: $(hdrdir)/ruby/internal/core.h
my_integer.o: $(hdrdir)/ruby/internal/core/rarray.h
my_integer.o: $(hdrdir)/ruby/internal/core/rbasic.h
my_integer.o: $(hdrdir)/ruby/internal/core/rbignum.h
my_integer.o: $(hdrdir)/ruby/internal/core/rclass.h
my_integer.o: $(hdrdir)/ruby/internal/core/rdata.h
my_integer.o: $(hdrdir)/ruby/internal/core/rfile.h
my_integer.o: $(hdrdir)/ruby/internal/core/rhash.h
my_integer.o: $(hdrdir)/ruby/internal/core/robject.h
my_integer.o: $(hdrdir)/ruby/internal/core/rregexp.h
my_integer.o: $(hdrdir)/ruby/internal/core/rstring.h
my_integer.o: $(hdrdir)/ruby/internal/core/rstruct.h
my_integer.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
my_integer.o: $(hdrdir)/ruby/internal/ctype.h
my_integer.o: $(hdrdir)/ruby/internal/dllexport.h
my_integer.o: $(hdrdir)/ruby/internal/dosish.h
my_integer.o: $(hdrdir)/ruby/internal/error.h
my_integer.o: $(hdrdir)/ruby/internal/eval.h
my_integer.o: $(hdrdir)/ruby/internal/event.h
my_integer.o: $(hdrdir)/ruby/internal/fl_type.h
my_integer.o: $(hdrdir)/ruby/internal/gc.h
my_integer.o: $(hdrdir)/ruby/internal/glob.h
my_integer.o: $(hdrdir)/ruby/internal/globals.h
my_integer.o: $(hdrdir)/ruby/internal/has/attribute.h
my_integer.o: $(hdrdir)/ruby/internal/has/builtin.h
my_integer.o: $(hdrdir)/ruby/internal/has/c_attribute.h
my_integer.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
my_integer.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
my_integer.o: $(hdrdir)/ruby/internal/has/extension.h
my_integer.o: $(hdrdir)/ruby/internal/has/feature.h
my_integer.o: $(hdrdir)/ruby/internal/has/warning.h
my_integer.o: $(hdrdir)/ruby/internal/intern/array.h
my_integer.o: $(hdrdir)/ruby/internal/intern/bignum.h
my_integer.o: $(hdrdir)/ruby/internal/intern/class.h
my_integer.o: $(hdrdir)/ruby/internal/intern/compar.h
my_integer.o: $(hdrdir)/ruby/internal/intern/complex.h
my_integer.o: $(hdrdir)/ruby/internal/intern/cont.h
my_integer.o: $(hdrdir)/ruby/internal/intern/dir.h
my_integer.o: $(hdrdir)/ruby/internal/intern/enum.h
my_integer.o: $(hdrdir)/ruby/internal/intern/enumerator.h
my_integer.o: $(hdrdir)/ruby/internal/intern/error.h
my_integer.o: $(hdrdir)/ruby/internal/intern/eval.h
my_integer.o: $(hdrdir)/ruby/internal/intern/file.h
my_integer.o: $(hdrdir)/ruby/internal/intern/gc.h
my_integer.o: $(hdrdir)/ruby/internal/intern/hash.h
my_integer.o: $(hdrdir)/ruby/internal/intern/io.h
my_integer.o: $(hdrdir)/ruby/internal/intern/load.h
my_integer.o: $(hdrdir)/ruby/internal/intern/marshal.h
my_integer.o: $(hdrdir)/ruby/internal/intern/numeric.h
my_integer.o: $(hdrdir)/ruby/internal/intern/object.h
my_integer.o: $(hdrdir)/ruby/internal/intern/parse.h
my_integer.o: $(hdrdir)/ruby/internal/intern/proc.h
my_integer.o: $(hdrdir)/ruby/internal/intern/process.h
my_integer.o: $(hdrdir)/ruby/internal/intern/random.h
my_integer.o: $(hdrdir)/ruby/internal/intern/range.h
my_integer.o: $(hdrdir)/ruby/internal/intern/rational.h
my_integer.o: $(hdrdir)/ruby/internal/intern/re.h
my_integer.o: $(hdrdir)/ruby/internal/intern/ruby.h
my_integer.o: $(hdrdir)/ruby/internal/intern/select.h
my_integer.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
my_integer.o: $(hdrdir)/ruby/internal/intern/signal.h
my_integer.o: $(hdrdir)/ruby/internal/intern/sprintf.h
my_integer.o: $(hdrdir)/ruby/internal/intern/string.h
my_integer.o: $(hdrdir)/ruby/internal/intern/struct.h
my_integer.o: $(hdrdir)/ruby/internal/intern/thread.h
my_integer.o: $(hdrdir)/ruby/internal/intern/time.h
my_integer.o: $(hdrdir)/ruby/internal/intern/variable.h
my_integer.o: $(hdrdir)/ruby/internal/intern/vm.h
my_integer.o: $(hdrdir)/ruby/internal/interpreter.h
my_integer.o: $(hdrdir)/ruby/internal/iterator.h
my_integer.o: $(hdrdir)/ruby/internal/memory.h
my_integer.o: $(hdrdir)/ruby/internal/method.h
my_integer.o: $(hdrdir)/ruby/internal/module.h
my_integer.o: $(hdrdir)/ruby/internal/newobj.h
my_integer.o: $(hdrdir)/ruby/internal/rgengc.h
my_integer.o: $(hdrdir)/ruby/internal/scan_args.h
my_integer.o: $(hdrdir)/ruby/internal/special_consts.h
my_integer.o: $(hdrdir)/ruby/internal/static_assert.h
my_integer.o: $(hdrdir)/ruby/internal/stdalign.h
my_integer.o: $(hdrdir)/ruby/internal/stdbool.h
my_integer.o: $(hdrdir)/ruby/internal/symbol.h
my_integer.o: $(hdrdir)/ruby/internal/token_paste.h
my_integer.o: $(hdrdir)/ruby/internal/value.h
my_integer.o: $(hdrdir)/ruby/internal/value_type.h
my_integer.o: $(hdrdir)/ruby/internal/variable.h
my_integer.o: $(hdrdir)/ruby/internal/warning_push.h
my_integer.o: $(hdrdir)/ruby/internal/xmalloc.h
my_integer.o: $(hdrdir)/ruby/assert.h
my_integer.o: $(hdrdir)/ruby/backward.h
my_integer.o: $(hdrdir)/ruby/backward/2/assume.h
my_integer.o: $(hdrdir)/ruby/backward/2/attributes.h
my_integer.o: $(hdrdir)/ruby/backward/2/bool.h
my_integer.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
my_integer.o: $(hdrdir)/ruby/backward/2/inttypes.h
my_integer.o: $(hdrdir)/ruby/backward/2/limits.h
my_integer.o: $(hdrdir)/ruby/backward/2/long_long.h
my_integer.o: $(hdrdir)/ruby/backward/2/stdalign.h
my_integer.o: $(hdrdir)/ruby/backward/2/stdarg.h
my_integer.o: $(hdrdir)/ruby/defines.h
my_integer.o: $(hdrdir)/ruby/intern.h
my_integer.o: $(hdrdir)/ruby/missing.h
my_integer.o: $(hdrdir)/ruby/ruby.h
my_integer.o: $(hdrdir)/ruby/st.h
my_integer.o: $(hdrdir)/ruby/subst.h
my_integer.o: my_integer.c
# AUTOGENERATED DEPENDENCIES END
