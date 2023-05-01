
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
srcdir = $(top_srcdir)/ext/date
topdir = ../..
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
warnflags = -Wall -Wextra -Wdeprecated-declarations -Wduplicated-cond -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wwrite-strings -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable -std=gnu99
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
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = date_core.c date_parse.c date_strftime.c date_strptime.c
SRCS = $(ORIG_SRCS) 
OBJS = date_core.o date_parse.o date_strftime.o date_strptime.o
HDRS = $(srcdir)/date_tmx.h $(srcdir)/zonetab.h
LOCAL_HDRS = 
TARGET = date_core
TARGET_NAME = date_core
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR) 2> /dev/null || true
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/date.rb
$(RUBYLIBDIR)/date.rb: $(srcdir)/lib/date.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/date.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/date.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default date_core libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/$(arch)/.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.time
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# AUTOGENERATED DEPENDENCIES START
date_core.o: $(RUBY_EXTCONF_H)
date_core.o: $(arch_hdrdir)/ruby/config.h
date_core.o: $(hdrdir)/ruby.h
date_core.o: $(hdrdir)/ruby/internal/anyargs.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/char.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/double.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/int.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/long.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/short.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
date_core.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
date_core.o: $(hdrdir)/ruby/internal/assume.h
date_core.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
date_core.o: $(hdrdir)/ruby/internal/attr/artificial.h
date_core.o: $(hdrdir)/ruby/internal/attr/cold.h
date_core.o: $(hdrdir)/ruby/internal/attr/const.h
date_core.o: $(hdrdir)/ruby/internal/attr/constexpr.h
date_core.o: $(hdrdir)/ruby/internal/attr/deprecated.h
date_core.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
date_core.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
date_core.o: $(hdrdir)/ruby/internal/attr/error.h
date_core.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
date_core.o: $(hdrdir)/ruby/internal/attr/forceinline.h
date_core.o: $(hdrdir)/ruby/internal/attr/format.h
date_core.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
date_core.o: $(hdrdir)/ruby/internal/attr/noalias.h
date_core.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
date_core.o: $(hdrdir)/ruby/internal/attr/noexcept.h
date_core.o: $(hdrdir)/ruby/internal/attr/noinline.h
date_core.o: $(hdrdir)/ruby/internal/attr/nonnull.h
date_core.o: $(hdrdir)/ruby/internal/attr/noreturn.h
date_core.o: $(hdrdir)/ruby/internal/attr/pure.h
date_core.o: $(hdrdir)/ruby/internal/attr/restrict.h
date_core.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
date_core.o: $(hdrdir)/ruby/internal/attr/warning.h
date_core.o: $(hdrdir)/ruby/internal/attr/weakref.h
date_core.o: $(hdrdir)/ruby/internal/cast.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
date_core.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
date_core.o: $(hdrdir)/ruby/internal/compiler_since.h
date_core.o: $(hdrdir)/ruby/internal/config.h
date_core.o: $(hdrdir)/ruby/internal/constant_p.h
date_core.o: $(hdrdir)/ruby/internal/core.h
date_core.o: $(hdrdir)/ruby/internal/core/rarray.h
date_core.o: $(hdrdir)/ruby/internal/core/rbasic.h
date_core.o: $(hdrdir)/ruby/internal/core/rbignum.h
date_core.o: $(hdrdir)/ruby/internal/core/rclass.h
date_core.o: $(hdrdir)/ruby/internal/core/rdata.h
date_core.o: $(hdrdir)/ruby/internal/core/rfile.h
date_core.o: $(hdrdir)/ruby/internal/core/rhash.h
date_core.o: $(hdrdir)/ruby/internal/core/robject.h
date_core.o: $(hdrdir)/ruby/internal/core/rregexp.h
date_core.o: $(hdrdir)/ruby/internal/core/rstring.h
date_core.o: $(hdrdir)/ruby/internal/core/rstruct.h
date_core.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
date_core.o: $(hdrdir)/ruby/internal/ctype.h
date_core.o: $(hdrdir)/ruby/internal/dllexport.h
date_core.o: $(hdrdir)/ruby/internal/dosish.h
date_core.o: $(hdrdir)/ruby/internal/error.h
date_core.o: $(hdrdir)/ruby/internal/eval.h
date_core.o: $(hdrdir)/ruby/internal/event.h
date_core.o: $(hdrdir)/ruby/internal/fl_type.h
date_core.o: $(hdrdir)/ruby/internal/gc.h
date_core.o: $(hdrdir)/ruby/internal/glob.h
date_core.o: $(hdrdir)/ruby/internal/globals.h
date_core.o: $(hdrdir)/ruby/internal/has/attribute.h
date_core.o: $(hdrdir)/ruby/internal/has/builtin.h
date_core.o: $(hdrdir)/ruby/internal/has/c_attribute.h
date_core.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
date_core.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
date_core.o: $(hdrdir)/ruby/internal/has/extension.h
date_core.o: $(hdrdir)/ruby/internal/has/feature.h
date_core.o: $(hdrdir)/ruby/internal/has/warning.h
date_core.o: $(hdrdir)/ruby/internal/intern/array.h
date_core.o: $(hdrdir)/ruby/internal/intern/bignum.h
date_core.o: $(hdrdir)/ruby/internal/intern/class.h
date_core.o: $(hdrdir)/ruby/internal/intern/compar.h
date_core.o: $(hdrdir)/ruby/internal/intern/complex.h
date_core.o: $(hdrdir)/ruby/internal/intern/cont.h
date_core.o: $(hdrdir)/ruby/internal/intern/dir.h
date_core.o: $(hdrdir)/ruby/internal/intern/enum.h
date_core.o: $(hdrdir)/ruby/internal/intern/enumerator.h
date_core.o: $(hdrdir)/ruby/internal/intern/error.h
date_core.o: $(hdrdir)/ruby/internal/intern/eval.h
date_core.o: $(hdrdir)/ruby/internal/intern/file.h
date_core.o: $(hdrdir)/ruby/internal/intern/gc.h
date_core.o: $(hdrdir)/ruby/internal/intern/hash.h
date_core.o: $(hdrdir)/ruby/internal/intern/io.h
date_core.o: $(hdrdir)/ruby/internal/intern/load.h
date_core.o: $(hdrdir)/ruby/internal/intern/marshal.h
date_core.o: $(hdrdir)/ruby/internal/intern/numeric.h
date_core.o: $(hdrdir)/ruby/internal/intern/object.h
date_core.o: $(hdrdir)/ruby/internal/intern/parse.h
date_core.o: $(hdrdir)/ruby/internal/intern/proc.h
date_core.o: $(hdrdir)/ruby/internal/intern/process.h
date_core.o: $(hdrdir)/ruby/internal/intern/random.h
date_core.o: $(hdrdir)/ruby/internal/intern/range.h
date_core.o: $(hdrdir)/ruby/internal/intern/rational.h
date_core.o: $(hdrdir)/ruby/internal/intern/re.h
date_core.o: $(hdrdir)/ruby/internal/intern/ruby.h
date_core.o: $(hdrdir)/ruby/internal/intern/select.h
date_core.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
date_core.o: $(hdrdir)/ruby/internal/intern/signal.h
date_core.o: $(hdrdir)/ruby/internal/intern/sprintf.h
date_core.o: $(hdrdir)/ruby/internal/intern/string.h
date_core.o: $(hdrdir)/ruby/internal/intern/struct.h
date_core.o: $(hdrdir)/ruby/internal/intern/thread.h
date_core.o: $(hdrdir)/ruby/internal/intern/time.h
date_core.o: $(hdrdir)/ruby/internal/intern/variable.h
date_core.o: $(hdrdir)/ruby/internal/intern/vm.h
date_core.o: $(hdrdir)/ruby/internal/interpreter.h
date_core.o: $(hdrdir)/ruby/internal/iterator.h
date_core.o: $(hdrdir)/ruby/internal/memory.h
date_core.o: $(hdrdir)/ruby/internal/method.h
date_core.o: $(hdrdir)/ruby/internal/module.h
date_core.o: $(hdrdir)/ruby/internal/newobj.h
date_core.o: $(hdrdir)/ruby/internal/rgengc.h
date_core.o: $(hdrdir)/ruby/internal/scan_args.h
date_core.o: $(hdrdir)/ruby/internal/special_consts.h
date_core.o: $(hdrdir)/ruby/internal/static_assert.h
date_core.o: $(hdrdir)/ruby/internal/stdalign.h
date_core.o: $(hdrdir)/ruby/internal/stdbool.h
date_core.o: $(hdrdir)/ruby/internal/symbol.h
date_core.o: $(hdrdir)/ruby/internal/token_paste.h
date_core.o: $(hdrdir)/ruby/internal/value.h
date_core.o: $(hdrdir)/ruby/internal/value_type.h
date_core.o: $(hdrdir)/ruby/internal/variable.h
date_core.o: $(hdrdir)/ruby/internal/warning_push.h
date_core.o: $(hdrdir)/ruby/internal/xmalloc.h
date_core.o: $(hdrdir)/ruby/assert.h
date_core.o: $(hdrdir)/ruby/backward.h
date_core.o: $(hdrdir)/ruby/backward/2/assume.h
date_core.o: $(hdrdir)/ruby/backward/2/attributes.h
date_core.o: $(hdrdir)/ruby/backward/2/bool.h
date_core.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
date_core.o: $(hdrdir)/ruby/backward/2/inttypes.h
date_core.o: $(hdrdir)/ruby/backward/2/limits.h
date_core.o: $(hdrdir)/ruby/backward/2/long_long.h
date_core.o: $(hdrdir)/ruby/backward/2/stdalign.h
date_core.o: $(hdrdir)/ruby/backward/2/stdarg.h
date_core.o: $(hdrdir)/ruby/defines.h
date_core.o: $(hdrdir)/ruby/encoding.h
date_core.o: $(hdrdir)/ruby/intern.h
date_core.o: $(hdrdir)/ruby/missing.h
date_core.o: $(hdrdir)/ruby/onigmo.h
date_core.o: $(hdrdir)/ruby/oniguruma.h
date_core.o: $(hdrdir)/ruby/ruby.h
date_core.o: $(hdrdir)/ruby/st.h
date_core.o: $(hdrdir)/ruby/subst.h
date_core.o: $(hdrdir)/ruby/util.h
date_core.o: date_core.c
date_core.o: date_tmx.h
date_parse.o: $(RUBY_EXTCONF_H)
date_parse.o: $(arch_hdrdir)/ruby/config.h
date_parse.o: $(hdrdir)/ruby.h
date_parse.o: $(hdrdir)/ruby/internal/anyargs.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/char.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/double.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/int.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/long.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/short.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
date_parse.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
date_parse.o: $(hdrdir)/ruby/internal/assume.h
date_parse.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
date_parse.o: $(hdrdir)/ruby/internal/attr/artificial.h
date_parse.o: $(hdrdir)/ruby/internal/attr/cold.h
date_parse.o: $(hdrdir)/ruby/internal/attr/const.h
date_parse.o: $(hdrdir)/ruby/internal/attr/constexpr.h
date_parse.o: $(hdrdir)/ruby/internal/attr/deprecated.h
date_parse.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
date_parse.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
date_parse.o: $(hdrdir)/ruby/internal/attr/error.h
date_parse.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
date_parse.o: $(hdrdir)/ruby/internal/attr/forceinline.h
date_parse.o: $(hdrdir)/ruby/internal/attr/format.h
date_parse.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
date_parse.o: $(hdrdir)/ruby/internal/attr/noalias.h
date_parse.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
date_parse.o: $(hdrdir)/ruby/internal/attr/noexcept.h
date_parse.o: $(hdrdir)/ruby/internal/attr/noinline.h
date_parse.o: $(hdrdir)/ruby/internal/attr/nonnull.h
date_parse.o: $(hdrdir)/ruby/internal/attr/noreturn.h
date_parse.o: $(hdrdir)/ruby/internal/attr/pure.h
date_parse.o: $(hdrdir)/ruby/internal/attr/restrict.h
date_parse.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
date_parse.o: $(hdrdir)/ruby/internal/attr/warning.h
date_parse.o: $(hdrdir)/ruby/internal/attr/weakref.h
date_parse.o: $(hdrdir)/ruby/internal/cast.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
date_parse.o: $(hdrdir)/ruby/internal/compiler_since.h
date_parse.o: $(hdrdir)/ruby/internal/config.h
date_parse.o: $(hdrdir)/ruby/internal/constant_p.h
date_parse.o: $(hdrdir)/ruby/internal/core.h
date_parse.o: $(hdrdir)/ruby/internal/core/rarray.h
date_parse.o: $(hdrdir)/ruby/internal/core/rbasic.h
date_parse.o: $(hdrdir)/ruby/internal/core/rbignum.h
date_parse.o: $(hdrdir)/ruby/internal/core/rclass.h
date_parse.o: $(hdrdir)/ruby/internal/core/rdata.h
date_parse.o: $(hdrdir)/ruby/internal/core/rfile.h
date_parse.o: $(hdrdir)/ruby/internal/core/rhash.h
date_parse.o: $(hdrdir)/ruby/internal/core/rmatch.h
date_parse.o: $(hdrdir)/ruby/internal/core/robject.h
date_parse.o: $(hdrdir)/ruby/internal/core/rregexp.h
date_parse.o: $(hdrdir)/ruby/internal/core/rstring.h
date_parse.o: $(hdrdir)/ruby/internal/core/rstruct.h
date_parse.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
date_parse.o: $(hdrdir)/ruby/internal/ctype.h
date_parse.o: $(hdrdir)/ruby/internal/dllexport.h
date_parse.o: $(hdrdir)/ruby/internal/dosish.h
date_parse.o: $(hdrdir)/ruby/internal/error.h
date_parse.o: $(hdrdir)/ruby/internal/eval.h
date_parse.o: $(hdrdir)/ruby/internal/event.h
date_parse.o: $(hdrdir)/ruby/internal/fl_type.h
date_parse.o: $(hdrdir)/ruby/internal/gc.h
date_parse.o: $(hdrdir)/ruby/internal/glob.h
date_parse.o: $(hdrdir)/ruby/internal/globals.h
date_parse.o: $(hdrdir)/ruby/internal/has/attribute.h
date_parse.o: $(hdrdir)/ruby/internal/has/builtin.h
date_parse.o: $(hdrdir)/ruby/internal/has/c_attribute.h
date_parse.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
date_parse.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
date_parse.o: $(hdrdir)/ruby/internal/has/extension.h
date_parse.o: $(hdrdir)/ruby/internal/has/feature.h
date_parse.o: $(hdrdir)/ruby/internal/has/warning.h
date_parse.o: $(hdrdir)/ruby/internal/intern/array.h
date_parse.o: $(hdrdir)/ruby/internal/intern/bignum.h
date_parse.o: $(hdrdir)/ruby/internal/intern/class.h
date_parse.o: $(hdrdir)/ruby/internal/intern/compar.h
date_parse.o: $(hdrdir)/ruby/internal/intern/complex.h
date_parse.o: $(hdrdir)/ruby/internal/intern/cont.h
date_parse.o: $(hdrdir)/ruby/internal/intern/dir.h
date_parse.o: $(hdrdir)/ruby/internal/intern/enum.h
date_parse.o: $(hdrdir)/ruby/internal/intern/enumerator.h
date_parse.o: $(hdrdir)/ruby/internal/intern/error.h
date_parse.o: $(hdrdir)/ruby/internal/intern/eval.h
date_parse.o: $(hdrdir)/ruby/internal/intern/file.h
date_parse.o: $(hdrdir)/ruby/internal/intern/gc.h
date_parse.o: $(hdrdir)/ruby/internal/intern/hash.h
date_parse.o: $(hdrdir)/ruby/internal/intern/io.h
date_parse.o: $(hdrdir)/ruby/internal/intern/load.h
date_parse.o: $(hdrdir)/ruby/internal/intern/marshal.h
date_parse.o: $(hdrdir)/ruby/internal/intern/numeric.h
date_parse.o: $(hdrdir)/ruby/internal/intern/object.h
date_parse.o: $(hdrdir)/ruby/internal/intern/parse.h
date_parse.o: $(hdrdir)/ruby/internal/intern/proc.h
date_parse.o: $(hdrdir)/ruby/internal/intern/process.h
date_parse.o: $(hdrdir)/ruby/internal/intern/random.h
date_parse.o: $(hdrdir)/ruby/internal/intern/range.h
date_parse.o: $(hdrdir)/ruby/internal/intern/rational.h
date_parse.o: $(hdrdir)/ruby/internal/intern/re.h
date_parse.o: $(hdrdir)/ruby/internal/intern/ruby.h
date_parse.o: $(hdrdir)/ruby/internal/intern/select.h
date_parse.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
date_parse.o: $(hdrdir)/ruby/internal/intern/signal.h
date_parse.o: $(hdrdir)/ruby/internal/intern/sprintf.h
date_parse.o: $(hdrdir)/ruby/internal/intern/string.h
date_parse.o: $(hdrdir)/ruby/internal/intern/struct.h
date_parse.o: $(hdrdir)/ruby/internal/intern/thread.h
date_parse.o: $(hdrdir)/ruby/internal/intern/time.h
date_parse.o: $(hdrdir)/ruby/internal/intern/variable.h
date_parse.o: $(hdrdir)/ruby/internal/intern/vm.h
date_parse.o: $(hdrdir)/ruby/internal/interpreter.h
date_parse.o: $(hdrdir)/ruby/internal/iterator.h
date_parse.o: $(hdrdir)/ruby/internal/memory.h
date_parse.o: $(hdrdir)/ruby/internal/method.h
date_parse.o: $(hdrdir)/ruby/internal/module.h
date_parse.o: $(hdrdir)/ruby/internal/newobj.h
date_parse.o: $(hdrdir)/ruby/internal/rgengc.h
date_parse.o: $(hdrdir)/ruby/internal/scan_args.h
date_parse.o: $(hdrdir)/ruby/internal/special_consts.h
date_parse.o: $(hdrdir)/ruby/internal/static_assert.h
date_parse.o: $(hdrdir)/ruby/internal/stdalign.h
date_parse.o: $(hdrdir)/ruby/internal/stdbool.h
date_parse.o: $(hdrdir)/ruby/internal/symbol.h
date_parse.o: $(hdrdir)/ruby/internal/token_paste.h
date_parse.o: $(hdrdir)/ruby/internal/value.h
date_parse.o: $(hdrdir)/ruby/internal/value_type.h
date_parse.o: $(hdrdir)/ruby/internal/variable.h
date_parse.o: $(hdrdir)/ruby/internal/warning_push.h
date_parse.o: $(hdrdir)/ruby/internal/xmalloc.h
date_parse.o: $(hdrdir)/ruby/assert.h
date_parse.o: $(hdrdir)/ruby/backward.h
date_parse.o: $(hdrdir)/ruby/backward/2/assume.h
date_parse.o: $(hdrdir)/ruby/backward/2/attributes.h
date_parse.o: $(hdrdir)/ruby/backward/2/bool.h
date_parse.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
date_parse.o: $(hdrdir)/ruby/backward/2/inttypes.h
date_parse.o: $(hdrdir)/ruby/backward/2/limits.h
date_parse.o: $(hdrdir)/ruby/backward/2/long_long.h
date_parse.o: $(hdrdir)/ruby/backward/2/stdalign.h
date_parse.o: $(hdrdir)/ruby/backward/2/stdarg.h
date_parse.o: $(hdrdir)/ruby/defines.h
date_parse.o: $(hdrdir)/ruby/encoding.h
date_parse.o: $(hdrdir)/ruby/intern.h
date_parse.o: $(hdrdir)/ruby/missing.h
date_parse.o: $(hdrdir)/ruby/onigmo.h
date_parse.o: $(hdrdir)/ruby/oniguruma.h
date_parse.o: $(hdrdir)/ruby/re.h
date_parse.o: $(hdrdir)/ruby/regex.h
date_parse.o: $(hdrdir)/ruby/ruby.h
date_parse.o: $(hdrdir)/ruby/st.h
date_parse.o: $(hdrdir)/ruby/subst.h
date_parse.o: date_parse.c
date_parse.o: zonetab.h
date_parse.o: zonetab.list
date_strftime.o: $(RUBY_EXTCONF_H)
date_strftime.o: $(arch_hdrdir)/ruby/config.h
date_strftime.o: $(hdrdir)/ruby/internal/anyargs.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/char.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/double.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/int.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/long.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/short.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
date_strftime.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
date_strftime.o: $(hdrdir)/ruby/internal/assume.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/artificial.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/cold.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/const.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/constexpr.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/deprecated.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/error.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/forceinline.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/format.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/noalias.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/noexcept.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/noinline.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/nonnull.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/noreturn.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/pure.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/restrict.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/warning.h
date_strftime.o: $(hdrdir)/ruby/internal/attr/weakref.h
date_strftime.o: $(hdrdir)/ruby/internal/cast.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
date_strftime.o: $(hdrdir)/ruby/internal/compiler_since.h
date_strftime.o: $(hdrdir)/ruby/internal/config.h
date_strftime.o: $(hdrdir)/ruby/internal/constant_p.h
date_strftime.o: $(hdrdir)/ruby/internal/core.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rarray.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rbasic.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rbignum.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rclass.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rdata.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rfile.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rhash.h
date_strftime.o: $(hdrdir)/ruby/internal/core/robject.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rregexp.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rstring.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rstruct.h
date_strftime.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
date_strftime.o: $(hdrdir)/ruby/internal/ctype.h
date_strftime.o: $(hdrdir)/ruby/internal/dllexport.h
date_strftime.o: $(hdrdir)/ruby/internal/dosish.h
date_strftime.o: $(hdrdir)/ruby/internal/error.h
date_strftime.o: $(hdrdir)/ruby/internal/eval.h
date_strftime.o: $(hdrdir)/ruby/internal/event.h
date_strftime.o: $(hdrdir)/ruby/internal/fl_type.h
date_strftime.o: $(hdrdir)/ruby/internal/gc.h
date_strftime.o: $(hdrdir)/ruby/internal/glob.h
date_strftime.o: $(hdrdir)/ruby/internal/globals.h
date_strftime.o: $(hdrdir)/ruby/internal/has/attribute.h
date_strftime.o: $(hdrdir)/ruby/internal/has/builtin.h
date_strftime.o: $(hdrdir)/ruby/internal/has/c_attribute.h
date_strftime.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
date_strftime.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
date_strftime.o: $(hdrdir)/ruby/internal/has/extension.h
date_strftime.o: $(hdrdir)/ruby/internal/has/feature.h
date_strftime.o: $(hdrdir)/ruby/internal/has/warning.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/array.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/bignum.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/class.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/compar.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/complex.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/cont.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/dir.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/enum.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/enumerator.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/error.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/eval.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/file.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/gc.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/hash.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/io.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/load.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/marshal.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/numeric.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/object.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/parse.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/proc.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/process.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/random.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/range.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/rational.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/re.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/ruby.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/select.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/signal.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/sprintf.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/string.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/struct.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/thread.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/time.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/variable.h
date_strftime.o: $(hdrdir)/ruby/internal/intern/vm.h
date_strftime.o: $(hdrdir)/ruby/internal/interpreter.h
date_strftime.o: $(hdrdir)/ruby/internal/iterator.h
date_strftime.o: $(hdrdir)/ruby/internal/memory.h
date_strftime.o: $(hdrdir)/ruby/internal/method.h
date_strftime.o: $(hdrdir)/ruby/internal/module.h
date_strftime.o: $(hdrdir)/ruby/internal/newobj.h
date_strftime.o: $(hdrdir)/ruby/internal/rgengc.h
date_strftime.o: $(hdrdir)/ruby/internal/scan_args.h
date_strftime.o: $(hdrdir)/ruby/internal/special_consts.h
date_strftime.o: $(hdrdir)/ruby/internal/static_assert.h
date_strftime.o: $(hdrdir)/ruby/internal/stdalign.h
date_strftime.o: $(hdrdir)/ruby/internal/stdbool.h
date_strftime.o: $(hdrdir)/ruby/internal/symbol.h
date_strftime.o: $(hdrdir)/ruby/internal/token_paste.h
date_strftime.o: $(hdrdir)/ruby/internal/value.h
date_strftime.o: $(hdrdir)/ruby/internal/value_type.h
date_strftime.o: $(hdrdir)/ruby/internal/variable.h
date_strftime.o: $(hdrdir)/ruby/internal/warning_push.h
date_strftime.o: $(hdrdir)/ruby/internal/xmalloc.h
date_strftime.o: $(hdrdir)/ruby/assert.h
date_strftime.o: $(hdrdir)/ruby/backward.h
date_strftime.o: $(hdrdir)/ruby/backward/2/assume.h
date_strftime.o: $(hdrdir)/ruby/backward/2/attributes.h
date_strftime.o: $(hdrdir)/ruby/backward/2/bool.h
date_strftime.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
date_strftime.o: $(hdrdir)/ruby/backward/2/inttypes.h
date_strftime.o: $(hdrdir)/ruby/backward/2/limits.h
date_strftime.o: $(hdrdir)/ruby/backward/2/long_long.h
date_strftime.o: $(hdrdir)/ruby/backward/2/stdalign.h
date_strftime.o: $(hdrdir)/ruby/backward/2/stdarg.h
date_strftime.o: $(hdrdir)/ruby/defines.h
date_strftime.o: $(hdrdir)/ruby/intern.h
date_strftime.o: $(hdrdir)/ruby/missing.h
date_strftime.o: $(hdrdir)/ruby/ruby.h
date_strftime.o: $(hdrdir)/ruby/st.h
date_strftime.o: $(hdrdir)/ruby/subst.h
date_strftime.o: date_strftime.c
date_strftime.o: date_tmx.h
date_strptime.o: $(RUBY_EXTCONF_H)
date_strptime.o: $(arch_hdrdir)/ruby/config.h
date_strptime.o: $(hdrdir)/ruby.h
date_strptime.o: $(hdrdir)/ruby/internal/anyargs.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/char.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/double.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/int.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/long.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/short.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
date_strptime.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
date_strptime.o: $(hdrdir)/ruby/internal/assume.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/artificial.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/cold.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/const.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/constexpr.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/deprecated.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/error.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/forceinline.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/format.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/noalias.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/noexcept.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/noinline.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/nonnull.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/noreturn.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/pure.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/restrict.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/warning.h
date_strptime.o: $(hdrdir)/ruby/internal/attr/weakref.h
date_strptime.o: $(hdrdir)/ruby/internal/cast.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
date_strptime.o: $(hdrdir)/ruby/internal/compiler_since.h
date_strptime.o: $(hdrdir)/ruby/internal/config.h
date_strptime.o: $(hdrdir)/ruby/internal/constant_p.h
date_strptime.o: $(hdrdir)/ruby/internal/core.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rarray.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rbasic.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rbignum.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rclass.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rdata.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rfile.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rhash.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rmatch.h
date_strptime.o: $(hdrdir)/ruby/internal/core/robject.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rregexp.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rstring.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rstruct.h
date_strptime.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
date_strptime.o: $(hdrdir)/ruby/internal/ctype.h
date_strptime.o: $(hdrdir)/ruby/internal/dllexport.h
date_strptime.o: $(hdrdir)/ruby/internal/dosish.h
date_strptime.o: $(hdrdir)/ruby/internal/error.h
date_strptime.o: $(hdrdir)/ruby/internal/eval.h
date_strptime.o: $(hdrdir)/ruby/internal/event.h
date_strptime.o: $(hdrdir)/ruby/internal/fl_type.h
date_strptime.o: $(hdrdir)/ruby/internal/gc.h
date_strptime.o: $(hdrdir)/ruby/internal/glob.h
date_strptime.o: $(hdrdir)/ruby/internal/globals.h
date_strptime.o: $(hdrdir)/ruby/internal/has/attribute.h
date_strptime.o: $(hdrdir)/ruby/internal/has/builtin.h
date_strptime.o: $(hdrdir)/ruby/internal/has/c_attribute.h
date_strptime.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
date_strptime.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
date_strptime.o: $(hdrdir)/ruby/internal/has/extension.h
date_strptime.o: $(hdrdir)/ruby/internal/has/feature.h
date_strptime.o: $(hdrdir)/ruby/internal/has/warning.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/array.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/bignum.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/class.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/compar.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/complex.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/cont.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/dir.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/enum.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/enumerator.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/error.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/eval.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/file.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/gc.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/hash.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/io.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/load.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/marshal.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/numeric.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/object.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/parse.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/proc.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/process.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/random.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/range.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/rational.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/re.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/ruby.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/select.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/signal.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/sprintf.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/string.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/struct.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/thread.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/time.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/variable.h
date_strptime.o: $(hdrdir)/ruby/internal/intern/vm.h
date_strptime.o: $(hdrdir)/ruby/internal/interpreter.h
date_strptime.o: $(hdrdir)/ruby/internal/iterator.h
date_strptime.o: $(hdrdir)/ruby/internal/memory.h
date_strptime.o: $(hdrdir)/ruby/internal/method.h
date_strptime.o: $(hdrdir)/ruby/internal/module.h
date_strptime.o: $(hdrdir)/ruby/internal/newobj.h
date_strptime.o: $(hdrdir)/ruby/internal/rgengc.h
date_strptime.o: $(hdrdir)/ruby/internal/scan_args.h
date_strptime.o: $(hdrdir)/ruby/internal/special_consts.h
date_strptime.o: $(hdrdir)/ruby/internal/static_assert.h
date_strptime.o: $(hdrdir)/ruby/internal/stdalign.h
date_strptime.o: $(hdrdir)/ruby/internal/stdbool.h
date_strptime.o: $(hdrdir)/ruby/internal/symbol.h
date_strptime.o: $(hdrdir)/ruby/internal/token_paste.h
date_strptime.o: $(hdrdir)/ruby/internal/value.h
date_strptime.o: $(hdrdir)/ruby/internal/value_type.h
date_strptime.o: $(hdrdir)/ruby/internal/variable.h
date_strptime.o: $(hdrdir)/ruby/internal/warning_push.h
date_strptime.o: $(hdrdir)/ruby/internal/xmalloc.h
date_strptime.o: $(hdrdir)/ruby/assert.h
date_strptime.o: $(hdrdir)/ruby/backward.h
date_strptime.o: $(hdrdir)/ruby/backward/2/assume.h
date_strptime.o: $(hdrdir)/ruby/backward/2/attributes.h
date_strptime.o: $(hdrdir)/ruby/backward/2/bool.h
date_strptime.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
date_strptime.o: $(hdrdir)/ruby/backward/2/inttypes.h
date_strptime.o: $(hdrdir)/ruby/backward/2/limits.h
date_strptime.o: $(hdrdir)/ruby/backward/2/long_long.h
date_strptime.o: $(hdrdir)/ruby/backward/2/stdalign.h
date_strptime.o: $(hdrdir)/ruby/backward/2/stdarg.h
date_strptime.o: $(hdrdir)/ruby/defines.h
date_strptime.o: $(hdrdir)/ruby/encoding.h
date_strptime.o: $(hdrdir)/ruby/intern.h
date_strptime.o: $(hdrdir)/ruby/missing.h
date_strptime.o: $(hdrdir)/ruby/onigmo.h
date_strptime.o: $(hdrdir)/ruby/oniguruma.h
date_strptime.o: $(hdrdir)/ruby/re.h
date_strptime.o: $(hdrdir)/ruby/regex.h
date_strptime.o: $(hdrdir)/ruby/ruby.h
date_strptime.o: $(hdrdir)/ruby/st.h
date_strptime.o: $(hdrdir)/ruby/subst.h
date_strptime.o: date_strptime.c
# AUTOGENERATED DEPENDENCIES END
