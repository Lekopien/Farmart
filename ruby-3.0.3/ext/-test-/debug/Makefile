
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
srcdir = $(top_srcdir)/ext/-test-/debug
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
ORIG_SRCS = init.c inspector.c profile_frames.c
SRCS = $(ORIG_SRCS) 
OBJS = init.o inspector.o profile_frames.o
HDRS = 
LOCAL_HDRS = 
TARGET = debug
TARGET_NAME = debug
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
inspector.o: $(RUBY_EXTCONF_H)
inspector.o: $(arch_hdrdir)/ruby/config.h
inspector.o: $(hdrdir)/ruby/internal/anyargs.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/char.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/double.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/int.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/long.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/short.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
inspector.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
inspector.o: $(hdrdir)/ruby/internal/assume.h
inspector.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
inspector.o: $(hdrdir)/ruby/internal/attr/artificial.h
inspector.o: $(hdrdir)/ruby/internal/attr/cold.h
inspector.o: $(hdrdir)/ruby/internal/attr/const.h
inspector.o: $(hdrdir)/ruby/internal/attr/constexpr.h
inspector.o: $(hdrdir)/ruby/internal/attr/deprecated.h
inspector.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
inspector.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
inspector.o: $(hdrdir)/ruby/internal/attr/error.h
inspector.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
inspector.o: $(hdrdir)/ruby/internal/attr/forceinline.h
inspector.o: $(hdrdir)/ruby/internal/attr/format.h
inspector.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
inspector.o: $(hdrdir)/ruby/internal/attr/noalias.h
inspector.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
inspector.o: $(hdrdir)/ruby/internal/attr/noexcept.h
inspector.o: $(hdrdir)/ruby/internal/attr/noinline.h
inspector.o: $(hdrdir)/ruby/internal/attr/nonnull.h
inspector.o: $(hdrdir)/ruby/internal/attr/noreturn.h
inspector.o: $(hdrdir)/ruby/internal/attr/pure.h
inspector.o: $(hdrdir)/ruby/internal/attr/restrict.h
inspector.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
inspector.o: $(hdrdir)/ruby/internal/attr/warning.h
inspector.o: $(hdrdir)/ruby/internal/attr/weakref.h
inspector.o: $(hdrdir)/ruby/internal/cast.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
inspector.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
inspector.o: $(hdrdir)/ruby/internal/compiler_since.h
inspector.o: $(hdrdir)/ruby/internal/config.h
inspector.o: $(hdrdir)/ruby/internal/constant_p.h
inspector.o: $(hdrdir)/ruby/internal/core.h
inspector.o: $(hdrdir)/ruby/internal/core/rarray.h
inspector.o: $(hdrdir)/ruby/internal/core/rbasic.h
inspector.o: $(hdrdir)/ruby/internal/core/rbignum.h
inspector.o: $(hdrdir)/ruby/internal/core/rclass.h
inspector.o: $(hdrdir)/ruby/internal/core/rdata.h
inspector.o: $(hdrdir)/ruby/internal/core/rfile.h
inspector.o: $(hdrdir)/ruby/internal/core/rhash.h
inspector.o: $(hdrdir)/ruby/internal/core/robject.h
inspector.o: $(hdrdir)/ruby/internal/core/rregexp.h
inspector.o: $(hdrdir)/ruby/internal/core/rstring.h
inspector.o: $(hdrdir)/ruby/internal/core/rstruct.h
inspector.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
inspector.o: $(hdrdir)/ruby/internal/ctype.h
inspector.o: $(hdrdir)/ruby/internal/dllexport.h
inspector.o: $(hdrdir)/ruby/internal/dosish.h
inspector.o: $(hdrdir)/ruby/internal/error.h
inspector.o: $(hdrdir)/ruby/internal/eval.h
inspector.o: $(hdrdir)/ruby/internal/event.h
inspector.o: $(hdrdir)/ruby/internal/fl_type.h
inspector.o: $(hdrdir)/ruby/internal/gc.h
inspector.o: $(hdrdir)/ruby/internal/glob.h
inspector.o: $(hdrdir)/ruby/internal/globals.h
inspector.o: $(hdrdir)/ruby/internal/has/attribute.h
inspector.o: $(hdrdir)/ruby/internal/has/builtin.h
inspector.o: $(hdrdir)/ruby/internal/has/c_attribute.h
inspector.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
inspector.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
inspector.o: $(hdrdir)/ruby/internal/has/extension.h
inspector.o: $(hdrdir)/ruby/internal/has/feature.h
inspector.o: $(hdrdir)/ruby/internal/has/warning.h
inspector.o: $(hdrdir)/ruby/internal/intern/array.h
inspector.o: $(hdrdir)/ruby/internal/intern/bignum.h
inspector.o: $(hdrdir)/ruby/internal/intern/class.h
inspector.o: $(hdrdir)/ruby/internal/intern/compar.h
inspector.o: $(hdrdir)/ruby/internal/intern/complex.h
inspector.o: $(hdrdir)/ruby/internal/intern/cont.h
inspector.o: $(hdrdir)/ruby/internal/intern/dir.h
inspector.o: $(hdrdir)/ruby/internal/intern/enum.h
inspector.o: $(hdrdir)/ruby/internal/intern/enumerator.h
inspector.o: $(hdrdir)/ruby/internal/intern/error.h
inspector.o: $(hdrdir)/ruby/internal/intern/eval.h
inspector.o: $(hdrdir)/ruby/internal/intern/file.h
inspector.o: $(hdrdir)/ruby/internal/intern/gc.h
inspector.o: $(hdrdir)/ruby/internal/intern/hash.h
inspector.o: $(hdrdir)/ruby/internal/intern/io.h
inspector.o: $(hdrdir)/ruby/internal/intern/load.h
inspector.o: $(hdrdir)/ruby/internal/intern/marshal.h
inspector.o: $(hdrdir)/ruby/internal/intern/numeric.h
inspector.o: $(hdrdir)/ruby/internal/intern/object.h
inspector.o: $(hdrdir)/ruby/internal/intern/parse.h
inspector.o: $(hdrdir)/ruby/internal/intern/proc.h
inspector.o: $(hdrdir)/ruby/internal/intern/process.h
inspector.o: $(hdrdir)/ruby/internal/intern/random.h
inspector.o: $(hdrdir)/ruby/internal/intern/range.h
inspector.o: $(hdrdir)/ruby/internal/intern/rational.h
inspector.o: $(hdrdir)/ruby/internal/intern/re.h
inspector.o: $(hdrdir)/ruby/internal/intern/ruby.h
inspector.o: $(hdrdir)/ruby/internal/intern/select.h
inspector.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
inspector.o: $(hdrdir)/ruby/internal/intern/signal.h
inspector.o: $(hdrdir)/ruby/internal/intern/sprintf.h
inspector.o: $(hdrdir)/ruby/internal/intern/string.h
inspector.o: $(hdrdir)/ruby/internal/intern/struct.h
inspector.o: $(hdrdir)/ruby/internal/intern/thread.h
inspector.o: $(hdrdir)/ruby/internal/intern/time.h
inspector.o: $(hdrdir)/ruby/internal/intern/variable.h
inspector.o: $(hdrdir)/ruby/internal/intern/vm.h
inspector.o: $(hdrdir)/ruby/internal/interpreter.h
inspector.o: $(hdrdir)/ruby/internal/iterator.h
inspector.o: $(hdrdir)/ruby/internal/memory.h
inspector.o: $(hdrdir)/ruby/internal/method.h
inspector.o: $(hdrdir)/ruby/internal/module.h
inspector.o: $(hdrdir)/ruby/internal/newobj.h
inspector.o: $(hdrdir)/ruby/internal/rgengc.h
inspector.o: $(hdrdir)/ruby/internal/scan_args.h
inspector.o: $(hdrdir)/ruby/internal/special_consts.h
inspector.o: $(hdrdir)/ruby/internal/static_assert.h
inspector.o: $(hdrdir)/ruby/internal/stdalign.h
inspector.o: $(hdrdir)/ruby/internal/stdbool.h
inspector.o: $(hdrdir)/ruby/internal/symbol.h
inspector.o: $(hdrdir)/ruby/internal/token_paste.h
inspector.o: $(hdrdir)/ruby/internal/value.h
inspector.o: $(hdrdir)/ruby/internal/value_type.h
inspector.o: $(hdrdir)/ruby/internal/variable.h
inspector.o: $(hdrdir)/ruby/internal/warning_push.h
inspector.o: $(hdrdir)/ruby/internal/xmalloc.h
inspector.o: $(hdrdir)/ruby/assert.h
inspector.o: $(hdrdir)/ruby/backward.h
inspector.o: $(hdrdir)/ruby/backward/2/assume.h
inspector.o: $(hdrdir)/ruby/backward/2/attributes.h
inspector.o: $(hdrdir)/ruby/backward/2/bool.h
inspector.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
inspector.o: $(hdrdir)/ruby/backward/2/inttypes.h
inspector.o: $(hdrdir)/ruby/backward/2/limits.h
inspector.o: $(hdrdir)/ruby/backward/2/long_long.h
inspector.o: $(hdrdir)/ruby/backward/2/stdalign.h
inspector.o: $(hdrdir)/ruby/backward/2/stdarg.h
inspector.o: $(hdrdir)/ruby/debug.h
inspector.o: $(hdrdir)/ruby/defines.h
inspector.o: $(hdrdir)/ruby/intern.h
inspector.o: $(hdrdir)/ruby/missing.h
inspector.o: $(hdrdir)/ruby/ruby.h
inspector.o: $(hdrdir)/ruby/st.h
inspector.o: $(hdrdir)/ruby/subst.h
inspector.o: inspector.c
profile_frames.o: $(RUBY_EXTCONF_H)
profile_frames.o: $(arch_hdrdir)/ruby/config.h
profile_frames.o: $(hdrdir)/ruby/internal/anyargs.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/char.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/double.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/int.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/long.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/short.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
profile_frames.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
profile_frames.o: $(hdrdir)/ruby/internal/assume.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/artificial.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/cold.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/const.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/constexpr.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/deprecated.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/error.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/forceinline.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/format.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/noalias.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/noexcept.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/noinline.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/nonnull.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/noreturn.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/pure.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/restrict.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/warning.h
profile_frames.o: $(hdrdir)/ruby/internal/attr/weakref.h
profile_frames.o: $(hdrdir)/ruby/internal/cast.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
profile_frames.o: $(hdrdir)/ruby/internal/compiler_since.h
profile_frames.o: $(hdrdir)/ruby/internal/config.h
profile_frames.o: $(hdrdir)/ruby/internal/constant_p.h
profile_frames.o: $(hdrdir)/ruby/internal/core.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rarray.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rbasic.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rbignum.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rclass.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rdata.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rfile.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rhash.h
profile_frames.o: $(hdrdir)/ruby/internal/core/robject.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rregexp.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rstring.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rstruct.h
profile_frames.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
profile_frames.o: $(hdrdir)/ruby/internal/ctype.h
profile_frames.o: $(hdrdir)/ruby/internal/dllexport.h
profile_frames.o: $(hdrdir)/ruby/internal/dosish.h
profile_frames.o: $(hdrdir)/ruby/internal/error.h
profile_frames.o: $(hdrdir)/ruby/internal/eval.h
profile_frames.o: $(hdrdir)/ruby/internal/event.h
profile_frames.o: $(hdrdir)/ruby/internal/fl_type.h
profile_frames.o: $(hdrdir)/ruby/internal/gc.h
profile_frames.o: $(hdrdir)/ruby/internal/glob.h
profile_frames.o: $(hdrdir)/ruby/internal/globals.h
profile_frames.o: $(hdrdir)/ruby/internal/has/attribute.h
profile_frames.o: $(hdrdir)/ruby/internal/has/builtin.h
profile_frames.o: $(hdrdir)/ruby/internal/has/c_attribute.h
profile_frames.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
profile_frames.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
profile_frames.o: $(hdrdir)/ruby/internal/has/extension.h
profile_frames.o: $(hdrdir)/ruby/internal/has/feature.h
profile_frames.o: $(hdrdir)/ruby/internal/has/warning.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/array.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/bignum.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/class.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/compar.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/complex.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/cont.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/dir.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/enum.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/enumerator.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/error.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/eval.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/file.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/gc.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/hash.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/io.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/load.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/marshal.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/numeric.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/object.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/parse.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/proc.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/process.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/random.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/range.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/rational.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/re.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/ruby.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/select.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/signal.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/sprintf.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/string.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/struct.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/thread.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/time.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/variable.h
profile_frames.o: $(hdrdir)/ruby/internal/intern/vm.h
profile_frames.o: $(hdrdir)/ruby/internal/interpreter.h
profile_frames.o: $(hdrdir)/ruby/internal/iterator.h
profile_frames.o: $(hdrdir)/ruby/internal/memory.h
profile_frames.o: $(hdrdir)/ruby/internal/method.h
profile_frames.o: $(hdrdir)/ruby/internal/module.h
profile_frames.o: $(hdrdir)/ruby/internal/newobj.h
profile_frames.o: $(hdrdir)/ruby/internal/rgengc.h
profile_frames.o: $(hdrdir)/ruby/internal/scan_args.h
profile_frames.o: $(hdrdir)/ruby/internal/special_consts.h
profile_frames.o: $(hdrdir)/ruby/internal/static_assert.h
profile_frames.o: $(hdrdir)/ruby/internal/stdalign.h
profile_frames.o: $(hdrdir)/ruby/internal/stdbool.h
profile_frames.o: $(hdrdir)/ruby/internal/symbol.h
profile_frames.o: $(hdrdir)/ruby/internal/token_paste.h
profile_frames.o: $(hdrdir)/ruby/internal/value.h
profile_frames.o: $(hdrdir)/ruby/internal/value_type.h
profile_frames.o: $(hdrdir)/ruby/internal/variable.h
profile_frames.o: $(hdrdir)/ruby/internal/warning_push.h
profile_frames.o: $(hdrdir)/ruby/internal/xmalloc.h
profile_frames.o: $(hdrdir)/ruby/assert.h
profile_frames.o: $(hdrdir)/ruby/backward.h
profile_frames.o: $(hdrdir)/ruby/backward/2/assume.h
profile_frames.o: $(hdrdir)/ruby/backward/2/attributes.h
profile_frames.o: $(hdrdir)/ruby/backward/2/bool.h
profile_frames.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
profile_frames.o: $(hdrdir)/ruby/backward/2/inttypes.h
profile_frames.o: $(hdrdir)/ruby/backward/2/limits.h
profile_frames.o: $(hdrdir)/ruby/backward/2/long_long.h
profile_frames.o: $(hdrdir)/ruby/backward/2/stdalign.h
profile_frames.o: $(hdrdir)/ruby/backward/2/stdarg.h
profile_frames.o: $(hdrdir)/ruby/debug.h
profile_frames.o: $(hdrdir)/ruby/defines.h
profile_frames.o: $(hdrdir)/ruby/intern.h
profile_frames.o: $(hdrdir)/ruby/missing.h
profile_frames.o: $(hdrdir)/ruby/ruby.h
profile_frames.o: $(hdrdir)/ruby/st.h
profile_frames.o: $(hdrdir)/ruby/subst.h
profile_frames.o: profile_frames.c
# AUTOGENERATED DEPENDENCIES END
