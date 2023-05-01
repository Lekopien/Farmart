
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
srcdir = $(top_srcdir)/ext/-test-/regexp
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
ORIG_SRCS = init.c parse_depth_limit.c
SRCS = $(ORIG_SRCS) 
OBJS = init.o parse_depth_limit.o
HDRS = 
LOCAL_HDRS = 
TARGET = regexp
TARGET_NAME = regexp
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
parse_depth_limit.o: $(RUBY_EXTCONF_H)
parse_depth_limit.o: $(arch_hdrdir)/ruby/config.h
parse_depth_limit.o: $(hdrdir)/ruby.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/anyargs.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/char.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/double.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/int.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/long.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/short.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/assume.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/artificial.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/cold.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/const.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/constexpr.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/deprecated.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/error.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/forceinline.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/format.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/noalias.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/noexcept.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/noinline.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/nonnull.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/noreturn.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/pure.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/restrict.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/warning.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/attr/weakref.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/cast.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/compiler_since.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/config.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/constant_p.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rarray.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rbasic.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rbignum.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rclass.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rdata.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rfile.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rhash.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/robject.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rregexp.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rstring.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rstruct.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/ctype.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/dllexport.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/dosish.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/error.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/eval.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/event.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/fl_type.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/gc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/glob.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/globals.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/attribute.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/builtin.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/c_attribute.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/extension.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/feature.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/has/warning.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/array.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/bignum.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/class.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/compar.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/complex.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/cont.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/dir.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/enum.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/enumerator.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/error.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/eval.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/file.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/gc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/hash.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/io.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/load.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/marshal.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/numeric.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/object.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/parse.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/proc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/process.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/random.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/range.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/rational.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/re.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/ruby.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/select.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/signal.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/sprintf.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/string.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/struct.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/thread.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/time.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/variable.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/intern/vm.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/interpreter.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/iterator.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/memory.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/method.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/module.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/newobj.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/rgengc.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/scan_args.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/special_consts.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/static_assert.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/stdalign.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/stdbool.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/symbol.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/token_paste.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/value.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/value_type.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/variable.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/warning_push.h
parse_depth_limit.o: $(hdrdir)/ruby/internal/xmalloc.h
parse_depth_limit.o: $(hdrdir)/ruby/assert.h
parse_depth_limit.o: $(hdrdir)/ruby/backward.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/assume.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/attributes.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/bool.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/inttypes.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/limits.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/long_long.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/stdalign.h
parse_depth_limit.o: $(hdrdir)/ruby/backward/2/stdarg.h
parse_depth_limit.o: $(hdrdir)/ruby/defines.h
parse_depth_limit.o: $(hdrdir)/ruby/intern.h
parse_depth_limit.o: $(hdrdir)/ruby/missing.h
parse_depth_limit.o: $(hdrdir)/ruby/onigmo.h
parse_depth_limit.o: $(hdrdir)/ruby/ruby.h
parse_depth_limit.o: $(hdrdir)/ruby/st.h
parse_depth_limit.o: $(hdrdir)/ruby/subst.h
parse_depth_limit.o: parse_depth_limit.c
# AUTOGENERATED DEPENDENCIES END
