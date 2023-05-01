
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
srcdir = $(top_srcdir)/ext/-test-/rational
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
ORIG_SRCS = rat.c
SRCS = $(ORIG_SRCS) 
OBJS = rat.o
HDRS = 
LOCAL_HDRS = 
TARGET = rational
TARGET_NAME = rational
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

$(OBJS): $(HDRS) $(ruby_headers)

rat.o: rat.c $(top_srcdir)/internal.h

# AUTOGENERATED DEPENDENCIES START
rat.o: $(RUBY_EXTCONF_H)
rat.o: $(arch_hdrdir)/ruby/config.h
rat.o: $(hdrdir)/ruby.h
rat.o: $(hdrdir)/ruby/internal/anyargs.h
rat.o: $(hdrdir)/ruby/internal/arithmetic.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/char.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/double.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/int.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/long.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/short.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
rat.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
rat.o: $(hdrdir)/ruby/internal/assume.h
rat.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
rat.o: $(hdrdir)/ruby/internal/attr/artificial.h
rat.o: $(hdrdir)/ruby/internal/attr/cold.h
rat.o: $(hdrdir)/ruby/internal/attr/const.h
rat.o: $(hdrdir)/ruby/internal/attr/constexpr.h
rat.o: $(hdrdir)/ruby/internal/attr/deprecated.h
rat.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
rat.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
rat.o: $(hdrdir)/ruby/internal/attr/error.h
rat.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
rat.o: $(hdrdir)/ruby/internal/attr/forceinline.h
rat.o: $(hdrdir)/ruby/internal/attr/format.h
rat.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
rat.o: $(hdrdir)/ruby/internal/attr/noalias.h
rat.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
rat.o: $(hdrdir)/ruby/internal/attr/noexcept.h
rat.o: $(hdrdir)/ruby/internal/attr/noinline.h
rat.o: $(hdrdir)/ruby/internal/attr/nonnull.h
rat.o: $(hdrdir)/ruby/internal/attr/noreturn.h
rat.o: $(hdrdir)/ruby/internal/attr/pure.h
rat.o: $(hdrdir)/ruby/internal/attr/restrict.h
rat.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
rat.o: $(hdrdir)/ruby/internal/attr/warning.h
rat.o: $(hdrdir)/ruby/internal/attr/weakref.h
rat.o: $(hdrdir)/ruby/internal/cast.h
rat.o: $(hdrdir)/ruby/internal/compiler_is.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
rat.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
rat.o: $(hdrdir)/ruby/internal/compiler_since.h
rat.o: $(hdrdir)/ruby/internal/config.h
rat.o: $(hdrdir)/ruby/internal/constant_p.h
rat.o: $(hdrdir)/ruby/internal/core.h
rat.o: $(hdrdir)/ruby/internal/core/rarray.h
rat.o: $(hdrdir)/ruby/internal/core/rbasic.h
rat.o: $(hdrdir)/ruby/internal/core/rbignum.h
rat.o: $(hdrdir)/ruby/internal/core/rclass.h
rat.o: $(hdrdir)/ruby/internal/core/rdata.h
rat.o: $(hdrdir)/ruby/internal/core/rfile.h
rat.o: $(hdrdir)/ruby/internal/core/rhash.h
rat.o: $(hdrdir)/ruby/internal/core/robject.h
rat.o: $(hdrdir)/ruby/internal/core/rregexp.h
rat.o: $(hdrdir)/ruby/internal/core/rstring.h
rat.o: $(hdrdir)/ruby/internal/core/rstruct.h
rat.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
rat.o: $(hdrdir)/ruby/internal/ctype.h
rat.o: $(hdrdir)/ruby/internal/dllexport.h
rat.o: $(hdrdir)/ruby/internal/dosish.h
rat.o: $(hdrdir)/ruby/internal/error.h
rat.o: $(hdrdir)/ruby/internal/eval.h
rat.o: $(hdrdir)/ruby/internal/event.h
rat.o: $(hdrdir)/ruby/internal/fl_type.h
rat.o: $(hdrdir)/ruby/internal/gc.h
rat.o: $(hdrdir)/ruby/internal/glob.h
rat.o: $(hdrdir)/ruby/internal/globals.h
rat.o: $(hdrdir)/ruby/internal/has/attribute.h
rat.o: $(hdrdir)/ruby/internal/has/builtin.h
rat.o: $(hdrdir)/ruby/internal/has/c_attribute.h
rat.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
rat.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
rat.o: $(hdrdir)/ruby/internal/has/extension.h
rat.o: $(hdrdir)/ruby/internal/has/feature.h
rat.o: $(hdrdir)/ruby/internal/has/warning.h
rat.o: $(hdrdir)/ruby/internal/intern/array.h
rat.o: $(hdrdir)/ruby/internal/intern/bignum.h
rat.o: $(hdrdir)/ruby/internal/intern/class.h
rat.o: $(hdrdir)/ruby/internal/intern/compar.h
rat.o: $(hdrdir)/ruby/internal/intern/complex.h
rat.o: $(hdrdir)/ruby/internal/intern/cont.h
rat.o: $(hdrdir)/ruby/internal/intern/dir.h
rat.o: $(hdrdir)/ruby/internal/intern/enum.h
rat.o: $(hdrdir)/ruby/internal/intern/enumerator.h
rat.o: $(hdrdir)/ruby/internal/intern/error.h
rat.o: $(hdrdir)/ruby/internal/intern/eval.h
rat.o: $(hdrdir)/ruby/internal/intern/file.h
rat.o: $(hdrdir)/ruby/internal/intern/gc.h
rat.o: $(hdrdir)/ruby/internal/intern/hash.h
rat.o: $(hdrdir)/ruby/internal/intern/io.h
rat.o: $(hdrdir)/ruby/internal/intern/load.h
rat.o: $(hdrdir)/ruby/internal/intern/marshal.h
rat.o: $(hdrdir)/ruby/internal/intern/numeric.h
rat.o: $(hdrdir)/ruby/internal/intern/object.h
rat.o: $(hdrdir)/ruby/internal/intern/parse.h
rat.o: $(hdrdir)/ruby/internal/intern/proc.h
rat.o: $(hdrdir)/ruby/internal/intern/process.h
rat.o: $(hdrdir)/ruby/internal/intern/random.h
rat.o: $(hdrdir)/ruby/internal/intern/range.h
rat.o: $(hdrdir)/ruby/internal/intern/rational.h
rat.o: $(hdrdir)/ruby/internal/intern/re.h
rat.o: $(hdrdir)/ruby/internal/intern/ruby.h
rat.o: $(hdrdir)/ruby/internal/intern/select.h
rat.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
rat.o: $(hdrdir)/ruby/internal/intern/signal.h
rat.o: $(hdrdir)/ruby/internal/intern/sprintf.h
rat.o: $(hdrdir)/ruby/internal/intern/string.h
rat.o: $(hdrdir)/ruby/internal/intern/struct.h
rat.o: $(hdrdir)/ruby/internal/intern/thread.h
rat.o: $(hdrdir)/ruby/internal/intern/time.h
rat.o: $(hdrdir)/ruby/internal/intern/variable.h
rat.o: $(hdrdir)/ruby/internal/intern/vm.h
rat.o: $(hdrdir)/ruby/internal/interpreter.h
rat.o: $(hdrdir)/ruby/internal/iterator.h
rat.o: $(hdrdir)/ruby/internal/memory.h
rat.o: $(hdrdir)/ruby/internal/method.h
rat.o: $(hdrdir)/ruby/internal/module.h
rat.o: $(hdrdir)/ruby/internal/newobj.h
rat.o: $(hdrdir)/ruby/internal/rgengc.h
rat.o: $(hdrdir)/ruby/internal/scan_args.h
rat.o: $(hdrdir)/ruby/internal/special_consts.h
rat.o: $(hdrdir)/ruby/internal/static_assert.h
rat.o: $(hdrdir)/ruby/internal/stdalign.h
rat.o: $(hdrdir)/ruby/internal/stdbool.h
rat.o: $(hdrdir)/ruby/internal/symbol.h
rat.o: $(hdrdir)/ruby/internal/token_paste.h
rat.o: $(hdrdir)/ruby/internal/value.h
rat.o: $(hdrdir)/ruby/internal/value_type.h
rat.o: $(hdrdir)/ruby/internal/variable.h
rat.o: $(hdrdir)/ruby/internal/warning_push.h
rat.o: $(hdrdir)/ruby/internal/xmalloc.h
rat.o: $(hdrdir)/ruby/assert.h
rat.o: $(hdrdir)/ruby/backward.h
rat.o: $(hdrdir)/ruby/backward/2/assume.h
rat.o: $(hdrdir)/ruby/backward/2/attributes.h
rat.o: $(hdrdir)/ruby/backward/2/bool.h
rat.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
rat.o: $(hdrdir)/ruby/backward/2/inttypes.h
rat.o: $(hdrdir)/ruby/backward/2/limits.h
rat.o: $(hdrdir)/ruby/backward/2/long_long.h
rat.o: $(hdrdir)/ruby/backward/2/stdalign.h
rat.o: $(hdrdir)/ruby/backward/2/stdarg.h
rat.o: $(hdrdir)/ruby/defines.h
rat.o: $(hdrdir)/ruby/intern.h
rat.o: $(hdrdir)/ruby/missing.h
rat.o: $(hdrdir)/ruby/ruby.h
rat.o: $(hdrdir)/ruby/st.h
rat.o: $(hdrdir)/ruby/subst.h
rat.o: $(top_srcdir)/internal.h
rat.o: $(top_srcdir)/internal/bignum.h
rat.o: $(top_srcdir)/internal/bits.h
rat.o: $(top_srcdir)/internal/compilers.h
rat.o: $(top_srcdir)/internal/fixnum.h
rat.o: $(top_srcdir)/internal/gc.h
rat.o: $(top_srcdir)/internal/numeric.h
rat.o: $(top_srcdir)/internal/rational.h
rat.o: $(top_srcdir)/internal/serial.h
rat.o: $(top_srcdir)/internal/static_assert.h
rat.o: $(top_srcdir)/internal/vm.h
rat.o: $(top_srcdir)/internal/warnings.h
rat.o: $(top_srcdir)/ruby_assert.h
rat.o: rat.c
# AUTOGENERATED DEPENDENCIES END
