
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
srcdir = $(top_srcdir)/ext/io/wait
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
target_prefix = /io
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = wait.c
SRCS = $(ORIG_SRCS) 
OBJS = wait.o
HDRS = 
LOCAL_HDRS = 
TARGET = wait
TARGET_NAME = wait
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.io.time
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
$(TIMESTAMP_DIR)/$(arch)/.io.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.io.time
	$(ECHO) linking shared-object io/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# AUTOGENERATED DEPENDENCIES START
wait.o: $(RUBY_EXTCONF_H)
wait.o: $(arch_hdrdir)/ruby/config.h
wait.o: $(hdrdir)/ruby.h
wait.o: $(hdrdir)/ruby/internal/anyargs.h
wait.o: $(hdrdir)/ruby/internal/arithmetic.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/char.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/double.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/int.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/long.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/short.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
wait.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
wait.o: $(hdrdir)/ruby/internal/assume.h
wait.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
wait.o: $(hdrdir)/ruby/internal/attr/artificial.h
wait.o: $(hdrdir)/ruby/internal/attr/cold.h
wait.o: $(hdrdir)/ruby/internal/attr/const.h
wait.o: $(hdrdir)/ruby/internal/attr/constexpr.h
wait.o: $(hdrdir)/ruby/internal/attr/deprecated.h
wait.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
wait.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
wait.o: $(hdrdir)/ruby/internal/attr/error.h
wait.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
wait.o: $(hdrdir)/ruby/internal/attr/forceinline.h
wait.o: $(hdrdir)/ruby/internal/attr/format.h
wait.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
wait.o: $(hdrdir)/ruby/internal/attr/noalias.h
wait.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
wait.o: $(hdrdir)/ruby/internal/attr/noexcept.h
wait.o: $(hdrdir)/ruby/internal/attr/noinline.h
wait.o: $(hdrdir)/ruby/internal/attr/nonnull.h
wait.o: $(hdrdir)/ruby/internal/attr/noreturn.h
wait.o: $(hdrdir)/ruby/internal/attr/pure.h
wait.o: $(hdrdir)/ruby/internal/attr/restrict.h
wait.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
wait.o: $(hdrdir)/ruby/internal/attr/warning.h
wait.o: $(hdrdir)/ruby/internal/attr/weakref.h
wait.o: $(hdrdir)/ruby/internal/cast.h
wait.o: $(hdrdir)/ruby/internal/compiler_is.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
wait.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
wait.o: $(hdrdir)/ruby/internal/compiler_since.h
wait.o: $(hdrdir)/ruby/internal/config.h
wait.o: $(hdrdir)/ruby/internal/constant_p.h
wait.o: $(hdrdir)/ruby/internal/core.h
wait.o: $(hdrdir)/ruby/internal/core/rarray.h
wait.o: $(hdrdir)/ruby/internal/core/rbasic.h
wait.o: $(hdrdir)/ruby/internal/core/rbignum.h
wait.o: $(hdrdir)/ruby/internal/core/rclass.h
wait.o: $(hdrdir)/ruby/internal/core/rdata.h
wait.o: $(hdrdir)/ruby/internal/core/rfile.h
wait.o: $(hdrdir)/ruby/internal/core/rhash.h
wait.o: $(hdrdir)/ruby/internal/core/robject.h
wait.o: $(hdrdir)/ruby/internal/core/rregexp.h
wait.o: $(hdrdir)/ruby/internal/core/rstring.h
wait.o: $(hdrdir)/ruby/internal/core/rstruct.h
wait.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
wait.o: $(hdrdir)/ruby/internal/ctype.h
wait.o: $(hdrdir)/ruby/internal/dllexport.h
wait.o: $(hdrdir)/ruby/internal/dosish.h
wait.o: $(hdrdir)/ruby/internal/error.h
wait.o: $(hdrdir)/ruby/internal/eval.h
wait.o: $(hdrdir)/ruby/internal/event.h
wait.o: $(hdrdir)/ruby/internal/fl_type.h
wait.o: $(hdrdir)/ruby/internal/gc.h
wait.o: $(hdrdir)/ruby/internal/glob.h
wait.o: $(hdrdir)/ruby/internal/globals.h
wait.o: $(hdrdir)/ruby/internal/has/attribute.h
wait.o: $(hdrdir)/ruby/internal/has/builtin.h
wait.o: $(hdrdir)/ruby/internal/has/c_attribute.h
wait.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
wait.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
wait.o: $(hdrdir)/ruby/internal/has/extension.h
wait.o: $(hdrdir)/ruby/internal/has/feature.h
wait.o: $(hdrdir)/ruby/internal/has/warning.h
wait.o: $(hdrdir)/ruby/internal/intern/array.h
wait.o: $(hdrdir)/ruby/internal/intern/bignum.h
wait.o: $(hdrdir)/ruby/internal/intern/class.h
wait.o: $(hdrdir)/ruby/internal/intern/compar.h
wait.o: $(hdrdir)/ruby/internal/intern/complex.h
wait.o: $(hdrdir)/ruby/internal/intern/cont.h
wait.o: $(hdrdir)/ruby/internal/intern/dir.h
wait.o: $(hdrdir)/ruby/internal/intern/enum.h
wait.o: $(hdrdir)/ruby/internal/intern/enumerator.h
wait.o: $(hdrdir)/ruby/internal/intern/error.h
wait.o: $(hdrdir)/ruby/internal/intern/eval.h
wait.o: $(hdrdir)/ruby/internal/intern/file.h
wait.o: $(hdrdir)/ruby/internal/intern/gc.h
wait.o: $(hdrdir)/ruby/internal/intern/hash.h
wait.o: $(hdrdir)/ruby/internal/intern/io.h
wait.o: $(hdrdir)/ruby/internal/intern/load.h
wait.o: $(hdrdir)/ruby/internal/intern/marshal.h
wait.o: $(hdrdir)/ruby/internal/intern/numeric.h
wait.o: $(hdrdir)/ruby/internal/intern/object.h
wait.o: $(hdrdir)/ruby/internal/intern/parse.h
wait.o: $(hdrdir)/ruby/internal/intern/proc.h
wait.o: $(hdrdir)/ruby/internal/intern/process.h
wait.o: $(hdrdir)/ruby/internal/intern/random.h
wait.o: $(hdrdir)/ruby/internal/intern/range.h
wait.o: $(hdrdir)/ruby/internal/intern/rational.h
wait.o: $(hdrdir)/ruby/internal/intern/re.h
wait.o: $(hdrdir)/ruby/internal/intern/ruby.h
wait.o: $(hdrdir)/ruby/internal/intern/select.h
wait.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
wait.o: $(hdrdir)/ruby/internal/intern/signal.h
wait.o: $(hdrdir)/ruby/internal/intern/sprintf.h
wait.o: $(hdrdir)/ruby/internal/intern/string.h
wait.o: $(hdrdir)/ruby/internal/intern/struct.h
wait.o: $(hdrdir)/ruby/internal/intern/thread.h
wait.o: $(hdrdir)/ruby/internal/intern/time.h
wait.o: $(hdrdir)/ruby/internal/intern/variable.h
wait.o: $(hdrdir)/ruby/internal/intern/vm.h
wait.o: $(hdrdir)/ruby/internal/interpreter.h
wait.o: $(hdrdir)/ruby/internal/iterator.h
wait.o: $(hdrdir)/ruby/internal/memory.h
wait.o: $(hdrdir)/ruby/internal/method.h
wait.o: $(hdrdir)/ruby/internal/module.h
wait.o: $(hdrdir)/ruby/internal/newobj.h
wait.o: $(hdrdir)/ruby/internal/rgengc.h
wait.o: $(hdrdir)/ruby/internal/scan_args.h
wait.o: $(hdrdir)/ruby/internal/special_consts.h
wait.o: $(hdrdir)/ruby/internal/static_assert.h
wait.o: $(hdrdir)/ruby/internal/stdalign.h
wait.o: $(hdrdir)/ruby/internal/stdbool.h
wait.o: $(hdrdir)/ruby/internal/symbol.h
wait.o: $(hdrdir)/ruby/internal/token_paste.h
wait.o: $(hdrdir)/ruby/internal/value.h
wait.o: $(hdrdir)/ruby/internal/value_type.h
wait.o: $(hdrdir)/ruby/internal/variable.h
wait.o: $(hdrdir)/ruby/internal/warning_push.h
wait.o: $(hdrdir)/ruby/internal/xmalloc.h
wait.o: $(hdrdir)/ruby/assert.h
wait.o: $(hdrdir)/ruby/backward.h
wait.o: $(hdrdir)/ruby/backward/2/assume.h
wait.o: $(hdrdir)/ruby/backward/2/attributes.h
wait.o: $(hdrdir)/ruby/backward/2/bool.h
wait.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
wait.o: $(hdrdir)/ruby/backward/2/inttypes.h
wait.o: $(hdrdir)/ruby/backward/2/limits.h
wait.o: $(hdrdir)/ruby/backward/2/long_long.h
wait.o: $(hdrdir)/ruby/backward/2/stdalign.h
wait.o: $(hdrdir)/ruby/backward/2/stdarg.h
wait.o: $(hdrdir)/ruby/defines.h
wait.o: $(hdrdir)/ruby/encoding.h
wait.o: $(hdrdir)/ruby/intern.h
wait.o: $(hdrdir)/ruby/io.h
wait.o: $(hdrdir)/ruby/missing.h
wait.o: $(hdrdir)/ruby/onigmo.h
wait.o: $(hdrdir)/ruby/oniguruma.h
wait.o: $(hdrdir)/ruby/ruby.h
wait.o: $(hdrdir)/ruby/st.h
wait.o: $(hdrdir)/ruby/subst.h
wait.o: wait.c
# AUTOGENERATED DEPENDENCIES END
