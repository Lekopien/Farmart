
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
srcdir = $(top_srcdir)/ext/-test-/tracepoint
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
ORIG_SRCS = gc_hook.c tracepoint.c
SRCS = $(ORIG_SRCS) 
OBJS = gc_hook.o tracepoint.o
HDRS = 
LOCAL_HDRS = 
TARGET = tracepoint
TARGET_NAME = tracepoint
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
gc_hook.o: $(RUBY_EXTCONF_H)
gc_hook.o: $(arch_hdrdir)/ruby/config.h
gc_hook.o: $(hdrdir)/ruby/internal/anyargs.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/char.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/double.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/int.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/long.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/short.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
gc_hook.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
gc_hook.o: $(hdrdir)/ruby/internal/assume.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/artificial.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/cold.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/const.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/constexpr.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/deprecated.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/error.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/forceinline.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/format.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/noalias.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/noexcept.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/noinline.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/nonnull.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/noreturn.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/pure.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/restrict.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/warning.h
gc_hook.o: $(hdrdir)/ruby/internal/attr/weakref.h
gc_hook.o: $(hdrdir)/ruby/internal/cast.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
gc_hook.o: $(hdrdir)/ruby/internal/compiler_since.h
gc_hook.o: $(hdrdir)/ruby/internal/config.h
gc_hook.o: $(hdrdir)/ruby/internal/constant_p.h
gc_hook.o: $(hdrdir)/ruby/internal/core.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rarray.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rbasic.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rbignum.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rclass.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rdata.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rfile.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rhash.h
gc_hook.o: $(hdrdir)/ruby/internal/core/robject.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rregexp.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rstring.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rstruct.h
gc_hook.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
gc_hook.o: $(hdrdir)/ruby/internal/ctype.h
gc_hook.o: $(hdrdir)/ruby/internal/dllexport.h
gc_hook.o: $(hdrdir)/ruby/internal/dosish.h
gc_hook.o: $(hdrdir)/ruby/internal/error.h
gc_hook.o: $(hdrdir)/ruby/internal/eval.h
gc_hook.o: $(hdrdir)/ruby/internal/event.h
gc_hook.o: $(hdrdir)/ruby/internal/fl_type.h
gc_hook.o: $(hdrdir)/ruby/internal/gc.h
gc_hook.o: $(hdrdir)/ruby/internal/glob.h
gc_hook.o: $(hdrdir)/ruby/internal/globals.h
gc_hook.o: $(hdrdir)/ruby/internal/has/attribute.h
gc_hook.o: $(hdrdir)/ruby/internal/has/builtin.h
gc_hook.o: $(hdrdir)/ruby/internal/has/c_attribute.h
gc_hook.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
gc_hook.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
gc_hook.o: $(hdrdir)/ruby/internal/has/extension.h
gc_hook.o: $(hdrdir)/ruby/internal/has/feature.h
gc_hook.o: $(hdrdir)/ruby/internal/has/warning.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/array.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/bignum.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/class.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/compar.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/complex.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/cont.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/dir.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/enum.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/enumerator.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/error.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/eval.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/file.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/gc.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/hash.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/io.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/load.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/marshal.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/numeric.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/object.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/parse.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/proc.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/process.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/random.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/range.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/rational.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/re.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/ruby.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/select.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/signal.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/sprintf.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/string.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/struct.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/thread.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/time.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/variable.h
gc_hook.o: $(hdrdir)/ruby/internal/intern/vm.h
gc_hook.o: $(hdrdir)/ruby/internal/interpreter.h
gc_hook.o: $(hdrdir)/ruby/internal/iterator.h
gc_hook.o: $(hdrdir)/ruby/internal/memory.h
gc_hook.o: $(hdrdir)/ruby/internal/method.h
gc_hook.o: $(hdrdir)/ruby/internal/module.h
gc_hook.o: $(hdrdir)/ruby/internal/newobj.h
gc_hook.o: $(hdrdir)/ruby/internal/rgengc.h
gc_hook.o: $(hdrdir)/ruby/internal/scan_args.h
gc_hook.o: $(hdrdir)/ruby/internal/special_consts.h
gc_hook.o: $(hdrdir)/ruby/internal/static_assert.h
gc_hook.o: $(hdrdir)/ruby/internal/stdalign.h
gc_hook.o: $(hdrdir)/ruby/internal/stdbool.h
gc_hook.o: $(hdrdir)/ruby/internal/symbol.h
gc_hook.o: $(hdrdir)/ruby/internal/token_paste.h
gc_hook.o: $(hdrdir)/ruby/internal/value.h
gc_hook.o: $(hdrdir)/ruby/internal/value_type.h
gc_hook.o: $(hdrdir)/ruby/internal/variable.h
gc_hook.o: $(hdrdir)/ruby/internal/warning_push.h
gc_hook.o: $(hdrdir)/ruby/internal/xmalloc.h
gc_hook.o: $(hdrdir)/ruby/assert.h
gc_hook.o: $(hdrdir)/ruby/backward.h
gc_hook.o: $(hdrdir)/ruby/backward/2/assume.h
gc_hook.o: $(hdrdir)/ruby/backward/2/attributes.h
gc_hook.o: $(hdrdir)/ruby/backward/2/bool.h
gc_hook.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
gc_hook.o: $(hdrdir)/ruby/backward/2/inttypes.h
gc_hook.o: $(hdrdir)/ruby/backward/2/limits.h
gc_hook.o: $(hdrdir)/ruby/backward/2/long_long.h
gc_hook.o: $(hdrdir)/ruby/backward/2/stdalign.h
gc_hook.o: $(hdrdir)/ruby/backward/2/stdarg.h
gc_hook.o: $(hdrdir)/ruby/debug.h
gc_hook.o: $(hdrdir)/ruby/defines.h
gc_hook.o: $(hdrdir)/ruby/intern.h
gc_hook.o: $(hdrdir)/ruby/missing.h
gc_hook.o: $(hdrdir)/ruby/ruby.h
gc_hook.o: $(hdrdir)/ruby/st.h
gc_hook.o: $(hdrdir)/ruby/subst.h
gc_hook.o: gc_hook.c
tracepoint.o: $(RUBY_EXTCONF_H)
tracepoint.o: $(arch_hdrdir)/ruby/config.h
tracepoint.o: $(hdrdir)/ruby/internal/anyargs.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/char.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/double.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/int.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/long.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/short.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
tracepoint.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
tracepoint.o: $(hdrdir)/ruby/internal/assume.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/artificial.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/cold.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/const.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/constexpr.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/deprecated.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/error.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/forceinline.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/format.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/noalias.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/noexcept.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/noinline.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/nonnull.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/noreturn.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/pure.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/restrict.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/warning.h
tracepoint.o: $(hdrdir)/ruby/internal/attr/weakref.h
tracepoint.o: $(hdrdir)/ruby/internal/cast.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
tracepoint.o: $(hdrdir)/ruby/internal/compiler_since.h
tracepoint.o: $(hdrdir)/ruby/internal/config.h
tracepoint.o: $(hdrdir)/ruby/internal/constant_p.h
tracepoint.o: $(hdrdir)/ruby/internal/core.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rarray.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rbasic.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rbignum.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rclass.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rdata.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rfile.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rhash.h
tracepoint.o: $(hdrdir)/ruby/internal/core/robject.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rregexp.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rstring.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rstruct.h
tracepoint.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
tracepoint.o: $(hdrdir)/ruby/internal/ctype.h
tracepoint.o: $(hdrdir)/ruby/internal/dllexport.h
tracepoint.o: $(hdrdir)/ruby/internal/dosish.h
tracepoint.o: $(hdrdir)/ruby/internal/error.h
tracepoint.o: $(hdrdir)/ruby/internal/eval.h
tracepoint.o: $(hdrdir)/ruby/internal/event.h
tracepoint.o: $(hdrdir)/ruby/internal/fl_type.h
tracepoint.o: $(hdrdir)/ruby/internal/gc.h
tracepoint.o: $(hdrdir)/ruby/internal/glob.h
tracepoint.o: $(hdrdir)/ruby/internal/globals.h
tracepoint.o: $(hdrdir)/ruby/internal/has/attribute.h
tracepoint.o: $(hdrdir)/ruby/internal/has/builtin.h
tracepoint.o: $(hdrdir)/ruby/internal/has/c_attribute.h
tracepoint.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
tracepoint.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
tracepoint.o: $(hdrdir)/ruby/internal/has/extension.h
tracepoint.o: $(hdrdir)/ruby/internal/has/feature.h
tracepoint.o: $(hdrdir)/ruby/internal/has/warning.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/array.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/bignum.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/class.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/compar.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/complex.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/cont.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/dir.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/enum.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/enumerator.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/error.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/eval.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/file.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/gc.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/hash.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/io.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/load.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/marshal.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/numeric.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/object.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/parse.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/proc.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/process.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/random.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/range.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/rational.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/re.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/ruby.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/select.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/signal.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/sprintf.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/string.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/struct.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/thread.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/time.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/variable.h
tracepoint.o: $(hdrdir)/ruby/internal/intern/vm.h
tracepoint.o: $(hdrdir)/ruby/internal/interpreter.h
tracepoint.o: $(hdrdir)/ruby/internal/iterator.h
tracepoint.o: $(hdrdir)/ruby/internal/memory.h
tracepoint.o: $(hdrdir)/ruby/internal/method.h
tracepoint.o: $(hdrdir)/ruby/internal/module.h
tracepoint.o: $(hdrdir)/ruby/internal/newobj.h
tracepoint.o: $(hdrdir)/ruby/internal/rgengc.h
tracepoint.o: $(hdrdir)/ruby/internal/scan_args.h
tracepoint.o: $(hdrdir)/ruby/internal/special_consts.h
tracepoint.o: $(hdrdir)/ruby/internal/static_assert.h
tracepoint.o: $(hdrdir)/ruby/internal/stdalign.h
tracepoint.o: $(hdrdir)/ruby/internal/stdbool.h
tracepoint.o: $(hdrdir)/ruby/internal/symbol.h
tracepoint.o: $(hdrdir)/ruby/internal/token_paste.h
tracepoint.o: $(hdrdir)/ruby/internal/value.h
tracepoint.o: $(hdrdir)/ruby/internal/value_type.h
tracepoint.o: $(hdrdir)/ruby/internal/variable.h
tracepoint.o: $(hdrdir)/ruby/internal/warning_push.h
tracepoint.o: $(hdrdir)/ruby/internal/xmalloc.h
tracepoint.o: $(hdrdir)/ruby/assert.h
tracepoint.o: $(hdrdir)/ruby/backward.h
tracepoint.o: $(hdrdir)/ruby/backward/2/assume.h
tracepoint.o: $(hdrdir)/ruby/backward/2/attributes.h
tracepoint.o: $(hdrdir)/ruby/backward/2/bool.h
tracepoint.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
tracepoint.o: $(hdrdir)/ruby/backward/2/inttypes.h
tracepoint.o: $(hdrdir)/ruby/backward/2/limits.h
tracepoint.o: $(hdrdir)/ruby/backward/2/long_long.h
tracepoint.o: $(hdrdir)/ruby/backward/2/stdalign.h
tracepoint.o: $(hdrdir)/ruby/backward/2/stdarg.h
tracepoint.o: $(hdrdir)/ruby/debug.h
tracepoint.o: $(hdrdir)/ruby/defines.h
tracepoint.o: $(hdrdir)/ruby/intern.h
tracepoint.o: $(hdrdir)/ruby/missing.h
tracepoint.o: $(hdrdir)/ruby/ruby.h
tracepoint.o: $(hdrdir)/ruby/st.h
tracepoint.o: $(hdrdir)/ruby/subst.h
tracepoint.o: tracepoint.c
# AUTOGENERATED DEPENDENCIES END
