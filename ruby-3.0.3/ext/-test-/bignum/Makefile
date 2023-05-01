
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
srcdir = $(top_srcdir)/ext/-test-/bignum
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
ORIG_SRCS = big2str.c bigzero.c div.c init.c intpack.c mul.c str2big.c
SRCS = $(ORIG_SRCS) 
OBJS = big2str.o bigzero.o div.o init.o intpack.o mul.o str2big.o
HDRS = 
LOCAL_HDRS = 
TARGET = bignum
TARGET_NAME = bignum
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
big2str.o: $(RUBY_EXTCONF_H)
big2str.o: $(arch_hdrdir)/ruby/config.h
big2str.o: $(hdrdir)/ruby.h
big2str.o: $(hdrdir)/ruby/internal/anyargs.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/char.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/double.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/int.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/long.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/short.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
big2str.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
big2str.o: $(hdrdir)/ruby/internal/assume.h
big2str.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
big2str.o: $(hdrdir)/ruby/internal/attr/artificial.h
big2str.o: $(hdrdir)/ruby/internal/attr/cold.h
big2str.o: $(hdrdir)/ruby/internal/attr/const.h
big2str.o: $(hdrdir)/ruby/internal/attr/constexpr.h
big2str.o: $(hdrdir)/ruby/internal/attr/deprecated.h
big2str.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
big2str.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
big2str.o: $(hdrdir)/ruby/internal/attr/error.h
big2str.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
big2str.o: $(hdrdir)/ruby/internal/attr/forceinline.h
big2str.o: $(hdrdir)/ruby/internal/attr/format.h
big2str.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
big2str.o: $(hdrdir)/ruby/internal/attr/noalias.h
big2str.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
big2str.o: $(hdrdir)/ruby/internal/attr/noexcept.h
big2str.o: $(hdrdir)/ruby/internal/attr/noinline.h
big2str.o: $(hdrdir)/ruby/internal/attr/nonnull.h
big2str.o: $(hdrdir)/ruby/internal/attr/noreturn.h
big2str.o: $(hdrdir)/ruby/internal/attr/pure.h
big2str.o: $(hdrdir)/ruby/internal/attr/restrict.h
big2str.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
big2str.o: $(hdrdir)/ruby/internal/attr/warning.h
big2str.o: $(hdrdir)/ruby/internal/attr/weakref.h
big2str.o: $(hdrdir)/ruby/internal/cast.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
big2str.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
big2str.o: $(hdrdir)/ruby/internal/compiler_since.h
big2str.o: $(hdrdir)/ruby/internal/config.h
big2str.o: $(hdrdir)/ruby/internal/constant_p.h
big2str.o: $(hdrdir)/ruby/internal/core.h
big2str.o: $(hdrdir)/ruby/internal/core/rarray.h
big2str.o: $(hdrdir)/ruby/internal/core/rbasic.h
big2str.o: $(hdrdir)/ruby/internal/core/rbignum.h
big2str.o: $(hdrdir)/ruby/internal/core/rclass.h
big2str.o: $(hdrdir)/ruby/internal/core/rdata.h
big2str.o: $(hdrdir)/ruby/internal/core/rfile.h
big2str.o: $(hdrdir)/ruby/internal/core/rhash.h
big2str.o: $(hdrdir)/ruby/internal/core/robject.h
big2str.o: $(hdrdir)/ruby/internal/core/rregexp.h
big2str.o: $(hdrdir)/ruby/internal/core/rstring.h
big2str.o: $(hdrdir)/ruby/internal/core/rstruct.h
big2str.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
big2str.o: $(hdrdir)/ruby/internal/ctype.h
big2str.o: $(hdrdir)/ruby/internal/dllexport.h
big2str.o: $(hdrdir)/ruby/internal/dosish.h
big2str.o: $(hdrdir)/ruby/internal/error.h
big2str.o: $(hdrdir)/ruby/internal/eval.h
big2str.o: $(hdrdir)/ruby/internal/event.h
big2str.o: $(hdrdir)/ruby/internal/fl_type.h
big2str.o: $(hdrdir)/ruby/internal/gc.h
big2str.o: $(hdrdir)/ruby/internal/glob.h
big2str.o: $(hdrdir)/ruby/internal/globals.h
big2str.o: $(hdrdir)/ruby/internal/has/attribute.h
big2str.o: $(hdrdir)/ruby/internal/has/builtin.h
big2str.o: $(hdrdir)/ruby/internal/has/c_attribute.h
big2str.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
big2str.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
big2str.o: $(hdrdir)/ruby/internal/has/extension.h
big2str.o: $(hdrdir)/ruby/internal/has/feature.h
big2str.o: $(hdrdir)/ruby/internal/has/warning.h
big2str.o: $(hdrdir)/ruby/internal/intern/array.h
big2str.o: $(hdrdir)/ruby/internal/intern/bignum.h
big2str.o: $(hdrdir)/ruby/internal/intern/class.h
big2str.o: $(hdrdir)/ruby/internal/intern/compar.h
big2str.o: $(hdrdir)/ruby/internal/intern/complex.h
big2str.o: $(hdrdir)/ruby/internal/intern/cont.h
big2str.o: $(hdrdir)/ruby/internal/intern/dir.h
big2str.o: $(hdrdir)/ruby/internal/intern/enum.h
big2str.o: $(hdrdir)/ruby/internal/intern/enumerator.h
big2str.o: $(hdrdir)/ruby/internal/intern/error.h
big2str.o: $(hdrdir)/ruby/internal/intern/eval.h
big2str.o: $(hdrdir)/ruby/internal/intern/file.h
big2str.o: $(hdrdir)/ruby/internal/intern/gc.h
big2str.o: $(hdrdir)/ruby/internal/intern/hash.h
big2str.o: $(hdrdir)/ruby/internal/intern/io.h
big2str.o: $(hdrdir)/ruby/internal/intern/load.h
big2str.o: $(hdrdir)/ruby/internal/intern/marshal.h
big2str.o: $(hdrdir)/ruby/internal/intern/numeric.h
big2str.o: $(hdrdir)/ruby/internal/intern/object.h
big2str.o: $(hdrdir)/ruby/internal/intern/parse.h
big2str.o: $(hdrdir)/ruby/internal/intern/proc.h
big2str.o: $(hdrdir)/ruby/internal/intern/process.h
big2str.o: $(hdrdir)/ruby/internal/intern/random.h
big2str.o: $(hdrdir)/ruby/internal/intern/range.h
big2str.o: $(hdrdir)/ruby/internal/intern/rational.h
big2str.o: $(hdrdir)/ruby/internal/intern/re.h
big2str.o: $(hdrdir)/ruby/internal/intern/ruby.h
big2str.o: $(hdrdir)/ruby/internal/intern/select.h
big2str.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
big2str.o: $(hdrdir)/ruby/internal/intern/signal.h
big2str.o: $(hdrdir)/ruby/internal/intern/sprintf.h
big2str.o: $(hdrdir)/ruby/internal/intern/string.h
big2str.o: $(hdrdir)/ruby/internal/intern/struct.h
big2str.o: $(hdrdir)/ruby/internal/intern/thread.h
big2str.o: $(hdrdir)/ruby/internal/intern/time.h
big2str.o: $(hdrdir)/ruby/internal/intern/variable.h
big2str.o: $(hdrdir)/ruby/internal/intern/vm.h
big2str.o: $(hdrdir)/ruby/internal/interpreter.h
big2str.o: $(hdrdir)/ruby/internal/iterator.h
big2str.o: $(hdrdir)/ruby/internal/memory.h
big2str.o: $(hdrdir)/ruby/internal/method.h
big2str.o: $(hdrdir)/ruby/internal/module.h
big2str.o: $(hdrdir)/ruby/internal/newobj.h
big2str.o: $(hdrdir)/ruby/internal/rgengc.h
big2str.o: $(hdrdir)/ruby/internal/scan_args.h
big2str.o: $(hdrdir)/ruby/internal/special_consts.h
big2str.o: $(hdrdir)/ruby/internal/static_assert.h
big2str.o: $(hdrdir)/ruby/internal/stdalign.h
big2str.o: $(hdrdir)/ruby/internal/stdbool.h
big2str.o: $(hdrdir)/ruby/internal/symbol.h
big2str.o: $(hdrdir)/ruby/internal/token_paste.h
big2str.o: $(hdrdir)/ruby/internal/value.h
big2str.o: $(hdrdir)/ruby/internal/value_type.h
big2str.o: $(hdrdir)/ruby/internal/variable.h
big2str.o: $(hdrdir)/ruby/internal/warning_push.h
big2str.o: $(hdrdir)/ruby/internal/xmalloc.h
big2str.o: $(hdrdir)/ruby/assert.h
big2str.o: $(hdrdir)/ruby/backward.h
big2str.o: $(hdrdir)/ruby/backward/2/assume.h
big2str.o: $(hdrdir)/ruby/backward/2/attributes.h
big2str.o: $(hdrdir)/ruby/backward/2/bool.h
big2str.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
big2str.o: $(hdrdir)/ruby/backward/2/inttypes.h
big2str.o: $(hdrdir)/ruby/backward/2/limits.h
big2str.o: $(hdrdir)/ruby/backward/2/long_long.h
big2str.o: $(hdrdir)/ruby/backward/2/stdalign.h
big2str.o: $(hdrdir)/ruby/backward/2/stdarg.h
big2str.o: $(hdrdir)/ruby/defines.h
big2str.o: $(hdrdir)/ruby/intern.h
big2str.o: $(hdrdir)/ruby/missing.h
big2str.o: $(hdrdir)/ruby/ruby.h
big2str.o: $(hdrdir)/ruby/st.h
big2str.o: $(hdrdir)/ruby/subst.h
big2str.o: $(top_srcdir)/internal.h
big2str.o: $(top_srcdir)/internal/bignum.h
big2str.o: big2str.c
bigzero.o: $(RUBY_EXTCONF_H)
bigzero.o: $(arch_hdrdir)/ruby/config.h
bigzero.o: $(hdrdir)/ruby.h
bigzero.o: $(hdrdir)/ruby/internal/anyargs.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/char.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/double.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/int.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/long.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/short.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
bigzero.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
bigzero.o: $(hdrdir)/ruby/internal/assume.h
bigzero.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
bigzero.o: $(hdrdir)/ruby/internal/attr/artificial.h
bigzero.o: $(hdrdir)/ruby/internal/attr/cold.h
bigzero.o: $(hdrdir)/ruby/internal/attr/const.h
bigzero.o: $(hdrdir)/ruby/internal/attr/constexpr.h
bigzero.o: $(hdrdir)/ruby/internal/attr/deprecated.h
bigzero.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
bigzero.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
bigzero.o: $(hdrdir)/ruby/internal/attr/error.h
bigzero.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
bigzero.o: $(hdrdir)/ruby/internal/attr/forceinline.h
bigzero.o: $(hdrdir)/ruby/internal/attr/format.h
bigzero.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
bigzero.o: $(hdrdir)/ruby/internal/attr/noalias.h
bigzero.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
bigzero.o: $(hdrdir)/ruby/internal/attr/noexcept.h
bigzero.o: $(hdrdir)/ruby/internal/attr/noinline.h
bigzero.o: $(hdrdir)/ruby/internal/attr/nonnull.h
bigzero.o: $(hdrdir)/ruby/internal/attr/noreturn.h
bigzero.o: $(hdrdir)/ruby/internal/attr/pure.h
bigzero.o: $(hdrdir)/ruby/internal/attr/restrict.h
bigzero.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
bigzero.o: $(hdrdir)/ruby/internal/attr/warning.h
bigzero.o: $(hdrdir)/ruby/internal/attr/weakref.h
bigzero.o: $(hdrdir)/ruby/internal/cast.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
bigzero.o: $(hdrdir)/ruby/internal/compiler_since.h
bigzero.o: $(hdrdir)/ruby/internal/config.h
bigzero.o: $(hdrdir)/ruby/internal/constant_p.h
bigzero.o: $(hdrdir)/ruby/internal/core.h
bigzero.o: $(hdrdir)/ruby/internal/core/rarray.h
bigzero.o: $(hdrdir)/ruby/internal/core/rbasic.h
bigzero.o: $(hdrdir)/ruby/internal/core/rbignum.h
bigzero.o: $(hdrdir)/ruby/internal/core/rclass.h
bigzero.o: $(hdrdir)/ruby/internal/core/rdata.h
bigzero.o: $(hdrdir)/ruby/internal/core/rfile.h
bigzero.o: $(hdrdir)/ruby/internal/core/rhash.h
bigzero.o: $(hdrdir)/ruby/internal/core/robject.h
bigzero.o: $(hdrdir)/ruby/internal/core/rregexp.h
bigzero.o: $(hdrdir)/ruby/internal/core/rstring.h
bigzero.o: $(hdrdir)/ruby/internal/core/rstruct.h
bigzero.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
bigzero.o: $(hdrdir)/ruby/internal/ctype.h
bigzero.o: $(hdrdir)/ruby/internal/dllexport.h
bigzero.o: $(hdrdir)/ruby/internal/dosish.h
bigzero.o: $(hdrdir)/ruby/internal/error.h
bigzero.o: $(hdrdir)/ruby/internal/eval.h
bigzero.o: $(hdrdir)/ruby/internal/event.h
bigzero.o: $(hdrdir)/ruby/internal/fl_type.h
bigzero.o: $(hdrdir)/ruby/internal/gc.h
bigzero.o: $(hdrdir)/ruby/internal/glob.h
bigzero.o: $(hdrdir)/ruby/internal/globals.h
bigzero.o: $(hdrdir)/ruby/internal/has/attribute.h
bigzero.o: $(hdrdir)/ruby/internal/has/builtin.h
bigzero.o: $(hdrdir)/ruby/internal/has/c_attribute.h
bigzero.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
bigzero.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
bigzero.o: $(hdrdir)/ruby/internal/has/extension.h
bigzero.o: $(hdrdir)/ruby/internal/has/feature.h
bigzero.o: $(hdrdir)/ruby/internal/has/warning.h
bigzero.o: $(hdrdir)/ruby/internal/intern/array.h
bigzero.o: $(hdrdir)/ruby/internal/intern/bignum.h
bigzero.o: $(hdrdir)/ruby/internal/intern/class.h
bigzero.o: $(hdrdir)/ruby/internal/intern/compar.h
bigzero.o: $(hdrdir)/ruby/internal/intern/complex.h
bigzero.o: $(hdrdir)/ruby/internal/intern/cont.h
bigzero.o: $(hdrdir)/ruby/internal/intern/dir.h
bigzero.o: $(hdrdir)/ruby/internal/intern/enum.h
bigzero.o: $(hdrdir)/ruby/internal/intern/enumerator.h
bigzero.o: $(hdrdir)/ruby/internal/intern/error.h
bigzero.o: $(hdrdir)/ruby/internal/intern/eval.h
bigzero.o: $(hdrdir)/ruby/internal/intern/file.h
bigzero.o: $(hdrdir)/ruby/internal/intern/gc.h
bigzero.o: $(hdrdir)/ruby/internal/intern/hash.h
bigzero.o: $(hdrdir)/ruby/internal/intern/io.h
bigzero.o: $(hdrdir)/ruby/internal/intern/load.h
bigzero.o: $(hdrdir)/ruby/internal/intern/marshal.h
bigzero.o: $(hdrdir)/ruby/internal/intern/numeric.h
bigzero.o: $(hdrdir)/ruby/internal/intern/object.h
bigzero.o: $(hdrdir)/ruby/internal/intern/parse.h
bigzero.o: $(hdrdir)/ruby/internal/intern/proc.h
bigzero.o: $(hdrdir)/ruby/internal/intern/process.h
bigzero.o: $(hdrdir)/ruby/internal/intern/random.h
bigzero.o: $(hdrdir)/ruby/internal/intern/range.h
bigzero.o: $(hdrdir)/ruby/internal/intern/rational.h
bigzero.o: $(hdrdir)/ruby/internal/intern/re.h
bigzero.o: $(hdrdir)/ruby/internal/intern/ruby.h
bigzero.o: $(hdrdir)/ruby/internal/intern/select.h
bigzero.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
bigzero.o: $(hdrdir)/ruby/internal/intern/signal.h
bigzero.o: $(hdrdir)/ruby/internal/intern/sprintf.h
bigzero.o: $(hdrdir)/ruby/internal/intern/string.h
bigzero.o: $(hdrdir)/ruby/internal/intern/struct.h
bigzero.o: $(hdrdir)/ruby/internal/intern/thread.h
bigzero.o: $(hdrdir)/ruby/internal/intern/time.h
bigzero.o: $(hdrdir)/ruby/internal/intern/variable.h
bigzero.o: $(hdrdir)/ruby/internal/intern/vm.h
bigzero.o: $(hdrdir)/ruby/internal/interpreter.h
bigzero.o: $(hdrdir)/ruby/internal/iterator.h
bigzero.o: $(hdrdir)/ruby/internal/memory.h
bigzero.o: $(hdrdir)/ruby/internal/method.h
bigzero.o: $(hdrdir)/ruby/internal/module.h
bigzero.o: $(hdrdir)/ruby/internal/newobj.h
bigzero.o: $(hdrdir)/ruby/internal/rgengc.h
bigzero.o: $(hdrdir)/ruby/internal/scan_args.h
bigzero.o: $(hdrdir)/ruby/internal/special_consts.h
bigzero.o: $(hdrdir)/ruby/internal/static_assert.h
bigzero.o: $(hdrdir)/ruby/internal/stdalign.h
bigzero.o: $(hdrdir)/ruby/internal/stdbool.h
bigzero.o: $(hdrdir)/ruby/internal/symbol.h
bigzero.o: $(hdrdir)/ruby/internal/token_paste.h
bigzero.o: $(hdrdir)/ruby/internal/value.h
bigzero.o: $(hdrdir)/ruby/internal/value_type.h
bigzero.o: $(hdrdir)/ruby/internal/variable.h
bigzero.o: $(hdrdir)/ruby/internal/warning_push.h
bigzero.o: $(hdrdir)/ruby/internal/xmalloc.h
bigzero.o: $(hdrdir)/ruby/assert.h
bigzero.o: $(hdrdir)/ruby/backward.h
bigzero.o: $(hdrdir)/ruby/backward/2/assume.h
bigzero.o: $(hdrdir)/ruby/backward/2/attributes.h
bigzero.o: $(hdrdir)/ruby/backward/2/bool.h
bigzero.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
bigzero.o: $(hdrdir)/ruby/backward/2/inttypes.h
bigzero.o: $(hdrdir)/ruby/backward/2/limits.h
bigzero.o: $(hdrdir)/ruby/backward/2/long_long.h
bigzero.o: $(hdrdir)/ruby/backward/2/stdalign.h
bigzero.o: $(hdrdir)/ruby/backward/2/stdarg.h
bigzero.o: $(hdrdir)/ruby/defines.h
bigzero.o: $(hdrdir)/ruby/intern.h
bigzero.o: $(hdrdir)/ruby/missing.h
bigzero.o: $(hdrdir)/ruby/ruby.h
bigzero.o: $(hdrdir)/ruby/st.h
bigzero.o: $(hdrdir)/ruby/subst.h
bigzero.o: $(top_srcdir)/internal.h
bigzero.o: $(top_srcdir)/internal/bignum.h
bigzero.o: bigzero.c
div.o: $(RUBY_EXTCONF_H)
div.o: $(arch_hdrdir)/ruby/config.h
div.o: $(hdrdir)/ruby.h
div.o: $(hdrdir)/ruby/internal/anyargs.h
div.o: $(hdrdir)/ruby/internal/arithmetic.h
div.o: $(hdrdir)/ruby/internal/arithmetic/char.h
div.o: $(hdrdir)/ruby/internal/arithmetic/double.h
div.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
div.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/int.h
div.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/long.h
div.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
div.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/short.h
div.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
div.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
div.o: $(hdrdir)/ruby/internal/assume.h
div.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
div.o: $(hdrdir)/ruby/internal/attr/artificial.h
div.o: $(hdrdir)/ruby/internal/attr/cold.h
div.o: $(hdrdir)/ruby/internal/attr/const.h
div.o: $(hdrdir)/ruby/internal/attr/constexpr.h
div.o: $(hdrdir)/ruby/internal/attr/deprecated.h
div.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
div.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
div.o: $(hdrdir)/ruby/internal/attr/error.h
div.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
div.o: $(hdrdir)/ruby/internal/attr/forceinline.h
div.o: $(hdrdir)/ruby/internal/attr/format.h
div.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
div.o: $(hdrdir)/ruby/internal/attr/noalias.h
div.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
div.o: $(hdrdir)/ruby/internal/attr/noexcept.h
div.o: $(hdrdir)/ruby/internal/attr/noinline.h
div.o: $(hdrdir)/ruby/internal/attr/nonnull.h
div.o: $(hdrdir)/ruby/internal/attr/noreturn.h
div.o: $(hdrdir)/ruby/internal/attr/pure.h
div.o: $(hdrdir)/ruby/internal/attr/restrict.h
div.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
div.o: $(hdrdir)/ruby/internal/attr/warning.h
div.o: $(hdrdir)/ruby/internal/attr/weakref.h
div.o: $(hdrdir)/ruby/internal/cast.h
div.o: $(hdrdir)/ruby/internal/compiler_is.h
div.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
div.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
div.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
div.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
div.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
div.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
div.o: $(hdrdir)/ruby/internal/compiler_since.h
div.o: $(hdrdir)/ruby/internal/config.h
div.o: $(hdrdir)/ruby/internal/constant_p.h
div.o: $(hdrdir)/ruby/internal/core.h
div.o: $(hdrdir)/ruby/internal/core/rarray.h
div.o: $(hdrdir)/ruby/internal/core/rbasic.h
div.o: $(hdrdir)/ruby/internal/core/rbignum.h
div.o: $(hdrdir)/ruby/internal/core/rclass.h
div.o: $(hdrdir)/ruby/internal/core/rdata.h
div.o: $(hdrdir)/ruby/internal/core/rfile.h
div.o: $(hdrdir)/ruby/internal/core/rhash.h
div.o: $(hdrdir)/ruby/internal/core/robject.h
div.o: $(hdrdir)/ruby/internal/core/rregexp.h
div.o: $(hdrdir)/ruby/internal/core/rstring.h
div.o: $(hdrdir)/ruby/internal/core/rstruct.h
div.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
div.o: $(hdrdir)/ruby/internal/ctype.h
div.o: $(hdrdir)/ruby/internal/dllexport.h
div.o: $(hdrdir)/ruby/internal/dosish.h
div.o: $(hdrdir)/ruby/internal/error.h
div.o: $(hdrdir)/ruby/internal/eval.h
div.o: $(hdrdir)/ruby/internal/event.h
div.o: $(hdrdir)/ruby/internal/fl_type.h
div.o: $(hdrdir)/ruby/internal/gc.h
div.o: $(hdrdir)/ruby/internal/glob.h
div.o: $(hdrdir)/ruby/internal/globals.h
div.o: $(hdrdir)/ruby/internal/has/attribute.h
div.o: $(hdrdir)/ruby/internal/has/builtin.h
div.o: $(hdrdir)/ruby/internal/has/c_attribute.h
div.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
div.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
div.o: $(hdrdir)/ruby/internal/has/extension.h
div.o: $(hdrdir)/ruby/internal/has/feature.h
div.o: $(hdrdir)/ruby/internal/has/warning.h
div.o: $(hdrdir)/ruby/internal/intern/array.h
div.o: $(hdrdir)/ruby/internal/intern/bignum.h
div.o: $(hdrdir)/ruby/internal/intern/class.h
div.o: $(hdrdir)/ruby/internal/intern/compar.h
div.o: $(hdrdir)/ruby/internal/intern/complex.h
div.o: $(hdrdir)/ruby/internal/intern/cont.h
div.o: $(hdrdir)/ruby/internal/intern/dir.h
div.o: $(hdrdir)/ruby/internal/intern/enum.h
div.o: $(hdrdir)/ruby/internal/intern/enumerator.h
div.o: $(hdrdir)/ruby/internal/intern/error.h
div.o: $(hdrdir)/ruby/internal/intern/eval.h
div.o: $(hdrdir)/ruby/internal/intern/file.h
div.o: $(hdrdir)/ruby/internal/intern/gc.h
div.o: $(hdrdir)/ruby/internal/intern/hash.h
div.o: $(hdrdir)/ruby/internal/intern/io.h
div.o: $(hdrdir)/ruby/internal/intern/load.h
div.o: $(hdrdir)/ruby/internal/intern/marshal.h
div.o: $(hdrdir)/ruby/internal/intern/numeric.h
div.o: $(hdrdir)/ruby/internal/intern/object.h
div.o: $(hdrdir)/ruby/internal/intern/parse.h
div.o: $(hdrdir)/ruby/internal/intern/proc.h
div.o: $(hdrdir)/ruby/internal/intern/process.h
div.o: $(hdrdir)/ruby/internal/intern/random.h
div.o: $(hdrdir)/ruby/internal/intern/range.h
div.o: $(hdrdir)/ruby/internal/intern/rational.h
div.o: $(hdrdir)/ruby/internal/intern/re.h
div.o: $(hdrdir)/ruby/internal/intern/ruby.h
div.o: $(hdrdir)/ruby/internal/intern/select.h
div.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
div.o: $(hdrdir)/ruby/internal/intern/signal.h
div.o: $(hdrdir)/ruby/internal/intern/sprintf.h
div.o: $(hdrdir)/ruby/internal/intern/string.h
div.o: $(hdrdir)/ruby/internal/intern/struct.h
div.o: $(hdrdir)/ruby/internal/intern/thread.h
div.o: $(hdrdir)/ruby/internal/intern/time.h
div.o: $(hdrdir)/ruby/internal/intern/variable.h
div.o: $(hdrdir)/ruby/internal/intern/vm.h
div.o: $(hdrdir)/ruby/internal/interpreter.h
div.o: $(hdrdir)/ruby/internal/iterator.h
div.o: $(hdrdir)/ruby/internal/memory.h
div.o: $(hdrdir)/ruby/internal/method.h
div.o: $(hdrdir)/ruby/internal/module.h
div.o: $(hdrdir)/ruby/internal/newobj.h
div.o: $(hdrdir)/ruby/internal/rgengc.h
div.o: $(hdrdir)/ruby/internal/scan_args.h
div.o: $(hdrdir)/ruby/internal/special_consts.h
div.o: $(hdrdir)/ruby/internal/static_assert.h
div.o: $(hdrdir)/ruby/internal/stdalign.h
div.o: $(hdrdir)/ruby/internal/stdbool.h
div.o: $(hdrdir)/ruby/internal/symbol.h
div.o: $(hdrdir)/ruby/internal/token_paste.h
div.o: $(hdrdir)/ruby/internal/value.h
div.o: $(hdrdir)/ruby/internal/value_type.h
div.o: $(hdrdir)/ruby/internal/variable.h
div.o: $(hdrdir)/ruby/internal/warning_push.h
div.o: $(hdrdir)/ruby/internal/xmalloc.h
div.o: $(hdrdir)/ruby/assert.h
div.o: $(hdrdir)/ruby/backward.h
div.o: $(hdrdir)/ruby/backward/2/assume.h
div.o: $(hdrdir)/ruby/backward/2/attributes.h
div.o: $(hdrdir)/ruby/backward/2/bool.h
div.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
div.o: $(hdrdir)/ruby/backward/2/inttypes.h
div.o: $(hdrdir)/ruby/backward/2/limits.h
div.o: $(hdrdir)/ruby/backward/2/long_long.h
div.o: $(hdrdir)/ruby/backward/2/stdalign.h
div.o: $(hdrdir)/ruby/backward/2/stdarg.h
div.o: $(hdrdir)/ruby/defines.h
div.o: $(hdrdir)/ruby/intern.h
div.o: $(hdrdir)/ruby/missing.h
div.o: $(hdrdir)/ruby/ruby.h
div.o: $(hdrdir)/ruby/st.h
div.o: $(hdrdir)/ruby/subst.h
div.o: $(top_srcdir)/internal.h
div.o: $(top_srcdir)/internal/bignum.h
div.o: div.c
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
intpack.o: $(RUBY_EXTCONF_H)
intpack.o: $(arch_hdrdir)/ruby/config.h
intpack.o: $(hdrdir)/ruby.h
intpack.o: $(hdrdir)/ruby/internal/anyargs.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/char.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/double.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/int.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/long.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/short.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
intpack.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
intpack.o: $(hdrdir)/ruby/internal/assume.h
intpack.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
intpack.o: $(hdrdir)/ruby/internal/attr/artificial.h
intpack.o: $(hdrdir)/ruby/internal/attr/cold.h
intpack.o: $(hdrdir)/ruby/internal/attr/const.h
intpack.o: $(hdrdir)/ruby/internal/attr/constexpr.h
intpack.o: $(hdrdir)/ruby/internal/attr/deprecated.h
intpack.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
intpack.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
intpack.o: $(hdrdir)/ruby/internal/attr/error.h
intpack.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
intpack.o: $(hdrdir)/ruby/internal/attr/forceinline.h
intpack.o: $(hdrdir)/ruby/internal/attr/format.h
intpack.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
intpack.o: $(hdrdir)/ruby/internal/attr/noalias.h
intpack.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
intpack.o: $(hdrdir)/ruby/internal/attr/noexcept.h
intpack.o: $(hdrdir)/ruby/internal/attr/noinline.h
intpack.o: $(hdrdir)/ruby/internal/attr/nonnull.h
intpack.o: $(hdrdir)/ruby/internal/attr/noreturn.h
intpack.o: $(hdrdir)/ruby/internal/attr/pure.h
intpack.o: $(hdrdir)/ruby/internal/attr/restrict.h
intpack.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
intpack.o: $(hdrdir)/ruby/internal/attr/warning.h
intpack.o: $(hdrdir)/ruby/internal/attr/weakref.h
intpack.o: $(hdrdir)/ruby/internal/cast.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
intpack.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
intpack.o: $(hdrdir)/ruby/internal/compiler_since.h
intpack.o: $(hdrdir)/ruby/internal/config.h
intpack.o: $(hdrdir)/ruby/internal/constant_p.h
intpack.o: $(hdrdir)/ruby/internal/core.h
intpack.o: $(hdrdir)/ruby/internal/core/rarray.h
intpack.o: $(hdrdir)/ruby/internal/core/rbasic.h
intpack.o: $(hdrdir)/ruby/internal/core/rbignum.h
intpack.o: $(hdrdir)/ruby/internal/core/rclass.h
intpack.o: $(hdrdir)/ruby/internal/core/rdata.h
intpack.o: $(hdrdir)/ruby/internal/core/rfile.h
intpack.o: $(hdrdir)/ruby/internal/core/rhash.h
intpack.o: $(hdrdir)/ruby/internal/core/robject.h
intpack.o: $(hdrdir)/ruby/internal/core/rregexp.h
intpack.o: $(hdrdir)/ruby/internal/core/rstring.h
intpack.o: $(hdrdir)/ruby/internal/core/rstruct.h
intpack.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
intpack.o: $(hdrdir)/ruby/internal/ctype.h
intpack.o: $(hdrdir)/ruby/internal/dllexport.h
intpack.o: $(hdrdir)/ruby/internal/dosish.h
intpack.o: $(hdrdir)/ruby/internal/error.h
intpack.o: $(hdrdir)/ruby/internal/eval.h
intpack.o: $(hdrdir)/ruby/internal/event.h
intpack.o: $(hdrdir)/ruby/internal/fl_type.h
intpack.o: $(hdrdir)/ruby/internal/gc.h
intpack.o: $(hdrdir)/ruby/internal/glob.h
intpack.o: $(hdrdir)/ruby/internal/globals.h
intpack.o: $(hdrdir)/ruby/internal/has/attribute.h
intpack.o: $(hdrdir)/ruby/internal/has/builtin.h
intpack.o: $(hdrdir)/ruby/internal/has/c_attribute.h
intpack.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
intpack.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
intpack.o: $(hdrdir)/ruby/internal/has/extension.h
intpack.o: $(hdrdir)/ruby/internal/has/feature.h
intpack.o: $(hdrdir)/ruby/internal/has/warning.h
intpack.o: $(hdrdir)/ruby/internal/intern/array.h
intpack.o: $(hdrdir)/ruby/internal/intern/bignum.h
intpack.o: $(hdrdir)/ruby/internal/intern/class.h
intpack.o: $(hdrdir)/ruby/internal/intern/compar.h
intpack.o: $(hdrdir)/ruby/internal/intern/complex.h
intpack.o: $(hdrdir)/ruby/internal/intern/cont.h
intpack.o: $(hdrdir)/ruby/internal/intern/dir.h
intpack.o: $(hdrdir)/ruby/internal/intern/enum.h
intpack.o: $(hdrdir)/ruby/internal/intern/enumerator.h
intpack.o: $(hdrdir)/ruby/internal/intern/error.h
intpack.o: $(hdrdir)/ruby/internal/intern/eval.h
intpack.o: $(hdrdir)/ruby/internal/intern/file.h
intpack.o: $(hdrdir)/ruby/internal/intern/gc.h
intpack.o: $(hdrdir)/ruby/internal/intern/hash.h
intpack.o: $(hdrdir)/ruby/internal/intern/io.h
intpack.o: $(hdrdir)/ruby/internal/intern/load.h
intpack.o: $(hdrdir)/ruby/internal/intern/marshal.h
intpack.o: $(hdrdir)/ruby/internal/intern/numeric.h
intpack.o: $(hdrdir)/ruby/internal/intern/object.h
intpack.o: $(hdrdir)/ruby/internal/intern/parse.h
intpack.o: $(hdrdir)/ruby/internal/intern/proc.h
intpack.o: $(hdrdir)/ruby/internal/intern/process.h
intpack.o: $(hdrdir)/ruby/internal/intern/random.h
intpack.o: $(hdrdir)/ruby/internal/intern/range.h
intpack.o: $(hdrdir)/ruby/internal/intern/rational.h
intpack.o: $(hdrdir)/ruby/internal/intern/re.h
intpack.o: $(hdrdir)/ruby/internal/intern/ruby.h
intpack.o: $(hdrdir)/ruby/internal/intern/select.h
intpack.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
intpack.o: $(hdrdir)/ruby/internal/intern/signal.h
intpack.o: $(hdrdir)/ruby/internal/intern/sprintf.h
intpack.o: $(hdrdir)/ruby/internal/intern/string.h
intpack.o: $(hdrdir)/ruby/internal/intern/struct.h
intpack.o: $(hdrdir)/ruby/internal/intern/thread.h
intpack.o: $(hdrdir)/ruby/internal/intern/time.h
intpack.o: $(hdrdir)/ruby/internal/intern/variable.h
intpack.o: $(hdrdir)/ruby/internal/intern/vm.h
intpack.o: $(hdrdir)/ruby/internal/interpreter.h
intpack.o: $(hdrdir)/ruby/internal/iterator.h
intpack.o: $(hdrdir)/ruby/internal/memory.h
intpack.o: $(hdrdir)/ruby/internal/method.h
intpack.o: $(hdrdir)/ruby/internal/module.h
intpack.o: $(hdrdir)/ruby/internal/newobj.h
intpack.o: $(hdrdir)/ruby/internal/rgengc.h
intpack.o: $(hdrdir)/ruby/internal/scan_args.h
intpack.o: $(hdrdir)/ruby/internal/special_consts.h
intpack.o: $(hdrdir)/ruby/internal/static_assert.h
intpack.o: $(hdrdir)/ruby/internal/stdalign.h
intpack.o: $(hdrdir)/ruby/internal/stdbool.h
intpack.o: $(hdrdir)/ruby/internal/symbol.h
intpack.o: $(hdrdir)/ruby/internal/token_paste.h
intpack.o: $(hdrdir)/ruby/internal/value.h
intpack.o: $(hdrdir)/ruby/internal/value_type.h
intpack.o: $(hdrdir)/ruby/internal/variable.h
intpack.o: $(hdrdir)/ruby/internal/warning_push.h
intpack.o: $(hdrdir)/ruby/internal/xmalloc.h
intpack.o: $(hdrdir)/ruby/assert.h
intpack.o: $(hdrdir)/ruby/backward.h
intpack.o: $(hdrdir)/ruby/backward/2/assume.h
intpack.o: $(hdrdir)/ruby/backward/2/attributes.h
intpack.o: $(hdrdir)/ruby/backward/2/bool.h
intpack.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
intpack.o: $(hdrdir)/ruby/backward/2/inttypes.h
intpack.o: $(hdrdir)/ruby/backward/2/limits.h
intpack.o: $(hdrdir)/ruby/backward/2/long_long.h
intpack.o: $(hdrdir)/ruby/backward/2/stdalign.h
intpack.o: $(hdrdir)/ruby/backward/2/stdarg.h
intpack.o: $(hdrdir)/ruby/defines.h
intpack.o: $(hdrdir)/ruby/intern.h
intpack.o: $(hdrdir)/ruby/missing.h
intpack.o: $(hdrdir)/ruby/ruby.h
intpack.o: $(hdrdir)/ruby/st.h
intpack.o: $(hdrdir)/ruby/subst.h
intpack.o: $(top_srcdir)/internal.h
intpack.o: $(top_srcdir)/internal/bignum.h
intpack.o: intpack.c
mul.o: $(RUBY_EXTCONF_H)
mul.o: $(arch_hdrdir)/ruby/config.h
mul.o: $(hdrdir)/ruby.h
mul.o: $(hdrdir)/ruby/internal/anyargs.h
mul.o: $(hdrdir)/ruby/internal/arithmetic.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/char.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/double.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/int.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/long.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/short.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
mul.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
mul.o: $(hdrdir)/ruby/internal/assume.h
mul.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
mul.o: $(hdrdir)/ruby/internal/attr/artificial.h
mul.o: $(hdrdir)/ruby/internal/attr/cold.h
mul.o: $(hdrdir)/ruby/internal/attr/const.h
mul.o: $(hdrdir)/ruby/internal/attr/constexpr.h
mul.o: $(hdrdir)/ruby/internal/attr/deprecated.h
mul.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
mul.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
mul.o: $(hdrdir)/ruby/internal/attr/error.h
mul.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
mul.o: $(hdrdir)/ruby/internal/attr/forceinline.h
mul.o: $(hdrdir)/ruby/internal/attr/format.h
mul.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
mul.o: $(hdrdir)/ruby/internal/attr/noalias.h
mul.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
mul.o: $(hdrdir)/ruby/internal/attr/noexcept.h
mul.o: $(hdrdir)/ruby/internal/attr/noinline.h
mul.o: $(hdrdir)/ruby/internal/attr/nonnull.h
mul.o: $(hdrdir)/ruby/internal/attr/noreturn.h
mul.o: $(hdrdir)/ruby/internal/attr/pure.h
mul.o: $(hdrdir)/ruby/internal/attr/restrict.h
mul.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
mul.o: $(hdrdir)/ruby/internal/attr/warning.h
mul.o: $(hdrdir)/ruby/internal/attr/weakref.h
mul.o: $(hdrdir)/ruby/internal/cast.h
mul.o: $(hdrdir)/ruby/internal/compiler_is.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
mul.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
mul.o: $(hdrdir)/ruby/internal/compiler_since.h
mul.o: $(hdrdir)/ruby/internal/config.h
mul.o: $(hdrdir)/ruby/internal/constant_p.h
mul.o: $(hdrdir)/ruby/internal/core.h
mul.o: $(hdrdir)/ruby/internal/core/rarray.h
mul.o: $(hdrdir)/ruby/internal/core/rbasic.h
mul.o: $(hdrdir)/ruby/internal/core/rbignum.h
mul.o: $(hdrdir)/ruby/internal/core/rclass.h
mul.o: $(hdrdir)/ruby/internal/core/rdata.h
mul.o: $(hdrdir)/ruby/internal/core/rfile.h
mul.o: $(hdrdir)/ruby/internal/core/rhash.h
mul.o: $(hdrdir)/ruby/internal/core/robject.h
mul.o: $(hdrdir)/ruby/internal/core/rregexp.h
mul.o: $(hdrdir)/ruby/internal/core/rstring.h
mul.o: $(hdrdir)/ruby/internal/core/rstruct.h
mul.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
mul.o: $(hdrdir)/ruby/internal/ctype.h
mul.o: $(hdrdir)/ruby/internal/dllexport.h
mul.o: $(hdrdir)/ruby/internal/dosish.h
mul.o: $(hdrdir)/ruby/internal/error.h
mul.o: $(hdrdir)/ruby/internal/eval.h
mul.o: $(hdrdir)/ruby/internal/event.h
mul.o: $(hdrdir)/ruby/internal/fl_type.h
mul.o: $(hdrdir)/ruby/internal/gc.h
mul.o: $(hdrdir)/ruby/internal/glob.h
mul.o: $(hdrdir)/ruby/internal/globals.h
mul.o: $(hdrdir)/ruby/internal/has/attribute.h
mul.o: $(hdrdir)/ruby/internal/has/builtin.h
mul.o: $(hdrdir)/ruby/internal/has/c_attribute.h
mul.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
mul.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
mul.o: $(hdrdir)/ruby/internal/has/extension.h
mul.o: $(hdrdir)/ruby/internal/has/feature.h
mul.o: $(hdrdir)/ruby/internal/has/warning.h
mul.o: $(hdrdir)/ruby/internal/intern/array.h
mul.o: $(hdrdir)/ruby/internal/intern/bignum.h
mul.o: $(hdrdir)/ruby/internal/intern/class.h
mul.o: $(hdrdir)/ruby/internal/intern/compar.h
mul.o: $(hdrdir)/ruby/internal/intern/complex.h
mul.o: $(hdrdir)/ruby/internal/intern/cont.h
mul.o: $(hdrdir)/ruby/internal/intern/dir.h
mul.o: $(hdrdir)/ruby/internal/intern/enum.h
mul.o: $(hdrdir)/ruby/internal/intern/enumerator.h
mul.o: $(hdrdir)/ruby/internal/intern/error.h
mul.o: $(hdrdir)/ruby/internal/intern/eval.h
mul.o: $(hdrdir)/ruby/internal/intern/file.h
mul.o: $(hdrdir)/ruby/internal/intern/gc.h
mul.o: $(hdrdir)/ruby/internal/intern/hash.h
mul.o: $(hdrdir)/ruby/internal/intern/io.h
mul.o: $(hdrdir)/ruby/internal/intern/load.h
mul.o: $(hdrdir)/ruby/internal/intern/marshal.h
mul.o: $(hdrdir)/ruby/internal/intern/numeric.h
mul.o: $(hdrdir)/ruby/internal/intern/object.h
mul.o: $(hdrdir)/ruby/internal/intern/parse.h
mul.o: $(hdrdir)/ruby/internal/intern/proc.h
mul.o: $(hdrdir)/ruby/internal/intern/process.h
mul.o: $(hdrdir)/ruby/internal/intern/random.h
mul.o: $(hdrdir)/ruby/internal/intern/range.h
mul.o: $(hdrdir)/ruby/internal/intern/rational.h
mul.o: $(hdrdir)/ruby/internal/intern/re.h
mul.o: $(hdrdir)/ruby/internal/intern/ruby.h
mul.o: $(hdrdir)/ruby/internal/intern/select.h
mul.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
mul.o: $(hdrdir)/ruby/internal/intern/signal.h
mul.o: $(hdrdir)/ruby/internal/intern/sprintf.h
mul.o: $(hdrdir)/ruby/internal/intern/string.h
mul.o: $(hdrdir)/ruby/internal/intern/struct.h
mul.o: $(hdrdir)/ruby/internal/intern/thread.h
mul.o: $(hdrdir)/ruby/internal/intern/time.h
mul.o: $(hdrdir)/ruby/internal/intern/variable.h
mul.o: $(hdrdir)/ruby/internal/intern/vm.h
mul.o: $(hdrdir)/ruby/internal/interpreter.h
mul.o: $(hdrdir)/ruby/internal/iterator.h
mul.o: $(hdrdir)/ruby/internal/memory.h
mul.o: $(hdrdir)/ruby/internal/method.h
mul.o: $(hdrdir)/ruby/internal/module.h
mul.o: $(hdrdir)/ruby/internal/newobj.h
mul.o: $(hdrdir)/ruby/internal/rgengc.h
mul.o: $(hdrdir)/ruby/internal/scan_args.h
mul.o: $(hdrdir)/ruby/internal/special_consts.h
mul.o: $(hdrdir)/ruby/internal/static_assert.h
mul.o: $(hdrdir)/ruby/internal/stdalign.h
mul.o: $(hdrdir)/ruby/internal/stdbool.h
mul.o: $(hdrdir)/ruby/internal/symbol.h
mul.o: $(hdrdir)/ruby/internal/token_paste.h
mul.o: $(hdrdir)/ruby/internal/value.h
mul.o: $(hdrdir)/ruby/internal/value_type.h
mul.o: $(hdrdir)/ruby/internal/variable.h
mul.o: $(hdrdir)/ruby/internal/warning_push.h
mul.o: $(hdrdir)/ruby/internal/xmalloc.h
mul.o: $(hdrdir)/ruby/assert.h
mul.o: $(hdrdir)/ruby/backward.h
mul.o: $(hdrdir)/ruby/backward/2/assume.h
mul.o: $(hdrdir)/ruby/backward/2/attributes.h
mul.o: $(hdrdir)/ruby/backward/2/bool.h
mul.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
mul.o: $(hdrdir)/ruby/backward/2/inttypes.h
mul.o: $(hdrdir)/ruby/backward/2/limits.h
mul.o: $(hdrdir)/ruby/backward/2/long_long.h
mul.o: $(hdrdir)/ruby/backward/2/stdalign.h
mul.o: $(hdrdir)/ruby/backward/2/stdarg.h
mul.o: $(hdrdir)/ruby/defines.h
mul.o: $(hdrdir)/ruby/intern.h
mul.o: $(hdrdir)/ruby/missing.h
mul.o: $(hdrdir)/ruby/ruby.h
mul.o: $(hdrdir)/ruby/st.h
mul.o: $(hdrdir)/ruby/subst.h
mul.o: $(top_srcdir)/internal.h
mul.o: $(top_srcdir)/internal/bignum.h
mul.o: mul.c
str2big.o: $(RUBY_EXTCONF_H)
str2big.o: $(arch_hdrdir)/ruby/config.h
str2big.o: $(hdrdir)/ruby.h
str2big.o: $(hdrdir)/ruby/internal/anyargs.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/char.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/double.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/int.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/long.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/short.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
str2big.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
str2big.o: $(hdrdir)/ruby/internal/assume.h
str2big.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
str2big.o: $(hdrdir)/ruby/internal/attr/artificial.h
str2big.o: $(hdrdir)/ruby/internal/attr/cold.h
str2big.o: $(hdrdir)/ruby/internal/attr/const.h
str2big.o: $(hdrdir)/ruby/internal/attr/constexpr.h
str2big.o: $(hdrdir)/ruby/internal/attr/deprecated.h
str2big.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
str2big.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
str2big.o: $(hdrdir)/ruby/internal/attr/error.h
str2big.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
str2big.o: $(hdrdir)/ruby/internal/attr/forceinline.h
str2big.o: $(hdrdir)/ruby/internal/attr/format.h
str2big.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
str2big.o: $(hdrdir)/ruby/internal/attr/noalias.h
str2big.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
str2big.o: $(hdrdir)/ruby/internal/attr/noexcept.h
str2big.o: $(hdrdir)/ruby/internal/attr/noinline.h
str2big.o: $(hdrdir)/ruby/internal/attr/nonnull.h
str2big.o: $(hdrdir)/ruby/internal/attr/noreturn.h
str2big.o: $(hdrdir)/ruby/internal/attr/pure.h
str2big.o: $(hdrdir)/ruby/internal/attr/restrict.h
str2big.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
str2big.o: $(hdrdir)/ruby/internal/attr/warning.h
str2big.o: $(hdrdir)/ruby/internal/attr/weakref.h
str2big.o: $(hdrdir)/ruby/internal/cast.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
str2big.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
str2big.o: $(hdrdir)/ruby/internal/compiler_since.h
str2big.o: $(hdrdir)/ruby/internal/config.h
str2big.o: $(hdrdir)/ruby/internal/constant_p.h
str2big.o: $(hdrdir)/ruby/internal/core.h
str2big.o: $(hdrdir)/ruby/internal/core/rarray.h
str2big.o: $(hdrdir)/ruby/internal/core/rbasic.h
str2big.o: $(hdrdir)/ruby/internal/core/rbignum.h
str2big.o: $(hdrdir)/ruby/internal/core/rclass.h
str2big.o: $(hdrdir)/ruby/internal/core/rdata.h
str2big.o: $(hdrdir)/ruby/internal/core/rfile.h
str2big.o: $(hdrdir)/ruby/internal/core/rhash.h
str2big.o: $(hdrdir)/ruby/internal/core/robject.h
str2big.o: $(hdrdir)/ruby/internal/core/rregexp.h
str2big.o: $(hdrdir)/ruby/internal/core/rstring.h
str2big.o: $(hdrdir)/ruby/internal/core/rstruct.h
str2big.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
str2big.o: $(hdrdir)/ruby/internal/ctype.h
str2big.o: $(hdrdir)/ruby/internal/dllexport.h
str2big.o: $(hdrdir)/ruby/internal/dosish.h
str2big.o: $(hdrdir)/ruby/internal/error.h
str2big.o: $(hdrdir)/ruby/internal/eval.h
str2big.o: $(hdrdir)/ruby/internal/event.h
str2big.o: $(hdrdir)/ruby/internal/fl_type.h
str2big.o: $(hdrdir)/ruby/internal/gc.h
str2big.o: $(hdrdir)/ruby/internal/glob.h
str2big.o: $(hdrdir)/ruby/internal/globals.h
str2big.o: $(hdrdir)/ruby/internal/has/attribute.h
str2big.o: $(hdrdir)/ruby/internal/has/builtin.h
str2big.o: $(hdrdir)/ruby/internal/has/c_attribute.h
str2big.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
str2big.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
str2big.o: $(hdrdir)/ruby/internal/has/extension.h
str2big.o: $(hdrdir)/ruby/internal/has/feature.h
str2big.o: $(hdrdir)/ruby/internal/has/warning.h
str2big.o: $(hdrdir)/ruby/internal/intern/array.h
str2big.o: $(hdrdir)/ruby/internal/intern/bignum.h
str2big.o: $(hdrdir)/ruby/internal/intern/class.h
str2big.o: $(hdrdir)/ruby/internal/intern/compar.h
str2big.o: $(hdrdir)/ruby/internal/intern/complex.h
str2big.o: $(hdrdir)/ruby/internal/intern/cont.h
str2big.o: $(hdrdir)/ruby/internal/intern/dir.h
str2big.o: $(hdrdir)/ruby/internal/intern/enum.h
str2big.o: $(hdrdir)/ruby/internal/intern/enumerator.h
str2big.o: $(hdrdir)/ruby/internal/intern/error.h
str2big.o: $(hdrdir)/ruby/internal/intern/eval.h
str2big.o: $(hdrdir)/ruby/internal/intern/file.h
str2big.o: $(hdrdir)/ruby/internal/intern/gc.h
str2big.o: $(hdrdir)/ruby/internal/intern/hash.h
str2big.o: $(hdrdir)/ruby/internal/intern/io.h
str2big.o: $(hdrdir)/ruby/internal/intern/load.h
str2big.o: $(hdrdir)/ruby/internal/intern/marshal.h
str2big.o: $(hdrdir)/ruby/internal/intern/numeric.h
str2big.o: $(hdrdir)/ruby/internal/intern/object.h
str2big.o: $(hdrdir)/ruby/internal/intern/parse.h
str2big.o: $(hdrdir)/ruby/internal/intern/proc.h
str2big.o: $(hdrdir)/ruby/internal/intern/process.h
str2big.o: $(hdrdir)/ruby/internal/intern/random.h
str2big.o: $(hdrdir)/ruby/internal/intern/range.h
str2big.o: $(hdrdir)/ruby/internal/intern/rational.h
str2big.o: $(hdrdir)/ruby/internal/intern/re.h
str2big.o: $(hdrdir)/ruby/internal/intern/ruby.h
str2big.o: $(hdrdir)/ruby/internal/intern/select.h
str2big.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
str2big.o: $(hdrdir)/ruby/internal/intern/signal.h
str2big.o: $(hdrdir)/ruby/internal/intern/sprintf.h
str2big.o: $(hdrdir)/ruby/internal/intern/string.h
str2big.o: $(hdrdir)/ruby/internal/intern/struct.h
str2big.o: $(hdrdir)/ruby/internal/intern/thread.h
str2big.o: $(hdrdir)/ruby/internal/intern/time.h
str2big.o: $(hdrdir)/ruby/internal/intern/variable.h
str2big.o: $(hdrdir)/ruby/internal/intern/vm.h
str2big.o: $(hdrdir)/ruby/internal/interpreter.h
str2big.o: $(hdrdir)/ruby/internal/iterator.h
str2big.o: $(hdrdir)/ruby/internal/memory.h
str2big.o: $(hdrdir)/ruby/internal/method.h
str2big.o: $(hdrdir)/ruby/internal/module.h
str2big.o: $(hdrdir)/ruby/internal/newobj.h
str2big.o: $(hdrdir)/ruby/internal/rgengc.h
str2big.o: $(hdrdir)/ruby/internal/scan_args.h
str2big.o: $(hdrdir)/ruby/internal/special_consts.h
str2big.o: $(hdrdir)/ruby/internal/static_assert.h
str2big.o: $(hdrdir)/ruby/internal/stdalign.h
str2big.o: $(hdrdir)/ruby/internal/stdbool.h
str2big.o: $(hdrdir)/ruby/internal/symbol.h
str2big.o: $(hdrdir)/ruby/internal/token_paste.h
str2big.o: $(hdrdir)/ruby/internal/value.h
str2big.o: $(hdrdir)/ruby/internal/value_type.h
str2big.o: $(hdrdir)/ruby/internal/variable.h
str2big.o: $(hdrdir)/ruby/internal/warning_push.h
str2big.o: $(hdrdir)/ruby/internal/xmalloc.h
str2big.o: $(hdrdir)/ruby/assert.h
str2big.o: $(hdrdir)/ruby/backward.h
str2big.o: $(hdrdir)/ruby/backward/2/assume.h
str2big.o: $(hdrdir)/ruby/backward/2/attributes.h
str2big.o: $(hdrdir)/ruby/backward/2/bool.h
str2big.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
str2big.o: $(hdrdir)/ruby/backward/2/inttypes.h
str2big.o: $(hdrdir)/ruby/backward/2/limits.h
str2big.o: $(hdrdir)/ruby/backward/2/long_long.h
str2big.o: $(hdrdir)/ruby/backward/2/stdalign.h
str2big.o: $(hdrdir)/ruby/backward/2/stdarg.h
str2big.o: $(hdrdir)/ruby/defines.h
str2big.o: $(hdrdir)/ruby/intern.h
str2big.o: $(hdrdir)/ruby/missing.h
str2big.o: $(hdrdir)/ruby/ruby.h
str2big.o: $(hdrdir)/ruby/st.h
str2big.o: $(hdrdir)/ruby/subst.h
str2big.o: $(top_srcdir)/internal.h
str2big.o: $(top_srcdir)/internal/bignum.h
str2big.o: str2big.c
# AUTOGENERATED DEPENDENCIES END
