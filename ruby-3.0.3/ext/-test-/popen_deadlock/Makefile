
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
srcdir = $(top_srcdir)/ext/-test-/popen_deadlock
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
ldflags  = -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic -ldl
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
target_prefix = /-test-/popen_deadlock
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = infinite_loop_dlsym.c
SRCS = $(ORIG_SRCS) 
OBJS = infinite_loop_dlsym.o
HDRS = 
LOCAL_HDRS = 
TARGET = infinite_loop_dlsym
TARGET_NAME = infinite_loop_dlsym
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.-test-.-.popen_deadlock.time
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
$(TIMESTAMP_DIR)/$(arch)/.-test-.-.popen_deadlock.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.-test-.-.popen_deadlock.time
	$(ECHO) linking shared-object -test-/popen_deadlock/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# AUTOGENERATED DEPENDENCIES START
infinite_loop_dlsym.o: $(RUBY_EXTCONF_H)
infinite_loop_dlsym.o: $(arch_hdrdir)/ruby/config.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/anyargs.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/char.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/double.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/int.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/long.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/short.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/assume.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/artificial.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/cold.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/const.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/constexpr.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/deprecated.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/error.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/forceinline.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/format.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/noalias.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/noexcept.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/noinline.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/nonnull.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/noreturn.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/pure.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/restrict.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/warning.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/attr/weakref.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/cast.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/compiler_since.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/config.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/constant_p.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rarray.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rbasic.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rbignum.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rclass.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rdata.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rfile.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rhash.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/robject.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rregexp.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rstring.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rstruct.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/ctype.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/dllexport.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/dosish.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/error.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/eval.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/event.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/fl_type.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/gc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/glob.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/globals.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/attribute.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/builtin.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/c_attribute.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/extension.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/feature.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/has/warning.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/array.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/bignum.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/class.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/compar.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/complex.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/cont.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/dir.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/enum.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/enumerator.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/error.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/eval.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/file.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/gc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/hash.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/io.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/load.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/marshal.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/numeric.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/object.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/parse.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/proc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/process.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/random.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/range.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/rational.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/re.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/ruby.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/select.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/signal.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/sprintf.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/string.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/struct.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/thread.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/time.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/variable.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/intern/vm.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/interpreter.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/iterator.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/memory.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/method.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/module.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/newobj.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/rgengc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/scan_args.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/special_consts.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/static_assert.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/stdalign.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/stdbool.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/symbol.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/token_paste.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/value.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/value_type.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/variable.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/warning_push.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/internal/xmalloc.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/assert.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/assume.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/attributes.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/bool.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/inttypes.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/limits.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/long_long.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/stdalign.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/backward/2/stdarg.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/defines.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/intern.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/missing.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/ruby.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/st.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/subst.h
infinite_loop_dlsym.o: $(hdrdir)/ruby/thread.h
infinite_loop_dlsym.o: infinite_loop_dlsym.c
# AUTOGENERATED DEPENDENCIES END
