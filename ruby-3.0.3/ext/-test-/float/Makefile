
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
srcdir = $(top_srcdir)/ext/-test-/float
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
ORIG_SRCS = init.c nextafter.c
SRCS = $(ORIG_SRCS) 
OBJS = init.o nextafter.o
HDRS = 
LOCAL_HDRS = 
TARGET = float
TARGET_NAME = float
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

# for FreeBSD make
nextafter.o: nextafter.c $(top_srcdir)/missing/nextafter.c

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
nextafter.o: $(RUBY_EXTCONF_H)
nextafter.o: $(arch_hdrdir)/ruby/config.h
nextafter.o: $(hdrdir)/ruby.h
nextafter.o: $(hdrdir)/ruby/internal/anyargs.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/char.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/double.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/int.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/long.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/short.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
nextafter.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
nextafter.o: $(hdrdir)/ruby/internal/assume.h
nextafter.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
nextafter.o: $(hdrdir)/ruby/internal/attr/artificial.h
nextafter.o: $(hdrdir)/ruby/internal/attr/cold.h
nextafter.o: $(hdrdir)/ruby/internal/attr/const.h
nextafter.o: $(hdrdir)/ruby/internal/attr/constexpr.h
nextafter.o: $(hdrdir)/ruby/internal/attr/deprecated.h
nextafter.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
nextafter.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
nextafter.o: $(hdrdir)/ruby/internal/attr/error.h
nextafter.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
nextafter.o: $(hdrdir)/ruby/internal/attr/forceinline.h
nextafter.o: $(hdrdir)/ruby/internal/attr/format.h
nextafter.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
nextafter.o: $(hdrdir)/ruby/internal/attr/noalias.h
nextafter.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
nextafter.o: $(hdrdir)/ruby/internal/attr/noexcept.h
nextafter.o: $(hdrdir)/ruby/internal/attr/noinline.h
nextafter.o: $(hdrdir)/ruby/internal/attr/nonnull.h
nextafter.o: $(hdrdir)/ruby/internal/attr/noreturn.h
nextafter.o: $(hdrdir)/ruby/internal/attr/pure.h
nextafter.o: $(hdrdir)/ruby/internal/attr/restrict.h
nextafter.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
nextafter.o: $(hdrdir)/ruby/internal/attr/warning.h
nextafter.o: $(hdrdir)/ruby/internal/attr/weakref.h
nextafter.o: $(hdrdir)/ruby/internal/cast.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
nextafter.o: $(hdrdir)/ruby/internal/compiler_since.h
nextafter.o: $(hdrdir)/ruby/internal/config.h
nextafter.o: $(hdrdir)/ruby/internal/constant_p.h
nextafter.o: $(hdrdir)/ruby/internal/core.h
nextafter.o: $(hdrdir)/ruby/internal/core/rarray.h
nextafter.o: $(hdrdir)/ruby/internal/core/rbasic.h
nextafter.o: $(hdrdir)/ruby/internal/core/rbignum.h
nextafter.o: $(hdrdir)/ruby/internal/core/rclass.h
nextafter.o: $(hdrdir)/ruby/internal/core/rdata.h
nextafter.o: $(hdrdir)/ruby/internal/core/rfile.h
nextafter.o: $(hdrdir)/ruby/internal/core/rhash.h
nextafter.o: $(hdrdir)/ruby/internal/core/robject.h
nextafter.o: $(hdrdir)/ruby/internal/core/rregexp.h
nextafter.o: $(hdrdir)/ruby/internal/core/rstring.h
nextafter.o: $(hdrdir)/ruby/internal/core/rstruct.h
nextafter.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
nextafter.o: $(hdrdir)/ruby/internal/ctype.h
nextafter.o: $(hdrdir)/ruby/internal/dllexport.h
nextafter.o: $(hdrdir)/ruby/internal/dosish.h
nextafter.o: $(hdrdir)/ruby/internal/error.h
nextafter.o: $(hdrdir)/ruby/internal/eval.h
nextafter.o: $(hdrdir)/ruby/internal/event.h
nextafter.o: $(hdrdir)/ruby/internal/fl_type.h
nextafter.o: $(hdrdir)/ruby/internal/gc.h
nextafter.o: $(hdrdir)/ruby/internal/glob.h
nextafter.o: $(hdrdir)/ruby/internal/globals.h
nextafter.o: $(hdrdir)/ruby/internal/has/attribute.h
nextafter.o: $(hdrdir)/ruby/internal/has/builtin.h
nextafter.o: $(hdrdir)/ruby/internal/has/c_attribute.h
nextafter.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
nextafter.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
nextafter.o: $(hdrdir)/ruby/internal/has/extension.h
nextafter.o: $(hdrdir)/ruby/internal/has/feature.h
nextafter.o: $(hdrdir)/ruby/internal/has/warning.h
nextafter.o: $(hdrdir)/ruby/internal/intern/array.h
nextafter.o: $(hdrdir)/ruby/internal/intern/bignum.h
nextafter.o: $(hdrdir)/ruby/internal/intern/class.h
nextafter.o: $(hdrdir)/ruby/internal/intern/compar.h
nextafter.o: $(hdrdir)/ruby/internal/intern/complex.h
nextafter.o: $(hdrdir)/ruby/internal/intern/cont.h
nextafter.o: $(hdrdir)/ruby/internal/intern/dir.h
nextafter.o: $(hdrdir)/ruby/internal/intern/enum.h
nextafter.o: $(hdrdir)/ruby/internal/intern/enumerator.h
nextafter.o: $(hdrdir)/ruby/internal/intern/error.h
nextafter.o: $(hdrdir)/ruby/internal/intern/eval.h
nextafter.o: $(hdrdir)/ruby/internal/intern/file.h
nextafter.o: $(hdrdir)/ruby/internal/intern/gc.h
nextafter.o: $(hdrdir)/ruby/internal/intern/hash.h
nextafter.o: $(hdrdir)/ruby/internal/intern/io.h
nextafter.o: $(hdrdir)/ruby/internal/intern/load.h
nextafter.o: $(hdrdir)/ruby/internal/intern/marshal.h
nextafter.o: $(hdrdir)/ruby/internal/intern/numeric.h
nextafter.o: $(hdrdir)/ruby/internal/intern/object.h
nextafter.o: $(hdrdir)/ruby/internal/intern/parse.h
nextafter.o: $(hdrdir)/ruby/internal/intern/proc.h
nextafter.o: $(hdrdir)/ruby/internal/intern/process.h
nextafter.o: $(hdrdir)/ruby/internal/intern/random.h
nextafter.o: $(hdrdir)/ruby/internal/intern/range.h
nextafter.o: $(hdrdir)/ruby/internal/intern/rational.h
nextafter.o: $(hdrdir)/ruby/internal/intern/re.h
nextafter.o: $(hdrdir)/ruby/internal/intern/ruby.h
nextafter.o: $(hdrdir)/ruby/internal/intern/select.h
nextafter.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
nextafter.o: $(hdrdir)/ruby/internal/intern/signal.h
nextafter.o: $(hdrdir)/ruby/internal/intern/sprintf.h
nextafter.o: $(hdrdir)/ruby/internal/intern/string.h
nextafter.o: $(hdrdir)/ruby/internal/intern/struct.h
nextafter.o: $(hdrdir)/ruby/internal/intern/thread.h
nextafter.o: $(hdrdir)/ruby/internal/intern/time.h
nextafter.o: $(hdrdir)/ruby/internal/intern/variable.h
nextafter.o: $(hdrdir)/ruby/internal/intern/vm.h
nextafter.o: $(hdrdir)/ruby/internal/interpreter.h
nextafter.o: $(hdrdir)/ruby/internal/iterator.h
nextafter.o: $(hdrdir)/ruby/internal/memory.h
nextafter.o: $(hdrdir)/ruby/internal/method.h
nextafter.o: $(hdrdir)/ruby/internal/module.h
nextafter.o: $(hdrdir)/ruby/internal/newobj.h
nextafter.o: $(hdrdir)/ruby/internal/rgengc.h
nextafter.o: $(hdrdir)/ruby/internal/scan_args.h
nextafter.o: $(hdrdir)/ruby/internal/special_consts.h
nextafter.o: $(hdrdir)/ruby/internal/static_assert.h
nextafter.o: $(hdrdir)/ruby/internal/stdalign.h
nextafter.o: $(hdrdir)/ruby/internal/stdbool.h
nextafter.o: $(hdrdir)/ruby/internal/symbol.h
nextafter.o: $(hdrdir)/ruby/internal/token_paste.h
nextafter.o: $(hdrdir)/ruby/internal/value.h
nextafter.o: $(hdrdir)/ruby/internal/value_type.h
nextafter.o: $(hdrdir)/ruby/internal/variable.h
nextafter.o: $(hdrdir)/ruby/internal/warning_push.h
nextafter.o: $(hdrdir)/ruby/internal/xmalloc.h
nextafter.o: $(hdrdir)/ruby/assert.h
nextafter.o: $(hdrdir)/ruby/backward.h
nextafter.o: $(hdrdir)/ruby/backward/2/assume.h
nextafter.o: $(hdrdir)/ruby/backward/2/attributes.h
nextafter.o: $(hdrdir)/ruby/backward/2/bool.h
nextafter.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
nextafter.o: $(hdrdir)/ruby/backward/2/inttypes.h
nextafter.o: $(hdrdir)/ruby/backward/2/limits.h
nextafter.o: $(hdrdir)/ruby/backward/2/long_long.h
nextafter.o: $(hdrdir)/ruby/backward/2/stdalign.h
nextafter.o: $(hdrdir)/ruby/backward/2/stdarg.h
nextafter.o: $(hdrdir)/ruby/defines.h
nextafter.o: $(hdrdir)/ruby/intern.h
nextafter.o: $(hdrdir)/ruby/missing.h
nextafter.o: $(hdrdir)/ruby/ruby.h
nextafter.o: $(hdrdir)/ruby/st.h
nextafter.o: $(hdrdir)/ruby/subst.h
nextafter.o: $(top_srcdir)/missing/nextafter.c
nextafter.o: nextafter.c
# AUTOGENERATED DEPENDENCIES END
