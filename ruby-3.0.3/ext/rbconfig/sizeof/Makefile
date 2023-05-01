
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
srcdir = $(top_srcdir)/ext/rbconfig/sizeof
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
DISTCLEANFILES = sizes.c limits.c
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = /rbconfig
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = limits.c sizes.c
SRCS = $(ORIG_SRCS) sizes.c limits.c
OBJS = sizes.o limits.o
HDRS = 
LOCAL_HDRS = 
TARGET = sizeof
TARGET_NAME = sizeof
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.rbconfig.time
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
$(TIMESTAMP_DIR)/$(arch)/.rbconfig.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.rbconfig.time
	$(ECHO) linking shared-object rbconfig/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# sources

limits.c: $(top_srcdir)/tool/generic_erb.rb $(top_srcdir)/template/limits.c.tmpl
	$(Q) $(RUBY) $(top_srcdir)/tool/generic_erb.rb --output=$@ \
		$(top_srcdir)/template/limits.c.tmpl \

sizes.c: $(top_srcdir)/tool/generic_erb.rb \
		   $(top_srcdir)/template/sizes.c.tmpl \
		   $(top_srcdir)/configure.ac \
		   $(top_srcdir)/ext/rbconfig/sizeof/extconf.rb
	$(Q) $(RUBY) $(top_srcdir)/tool/generic_erb.rb --output=$@ \
		$(top_srcdir)/template/sizes.c.tmpl \
		$(top_srcdir)/configure.ac \
		$(top_srcdir)/ext/rbconfig/sizeof/extconf.rb

# AUTOGENERATED DEPENDENCIES START
limits.o: $(RUBY_EXTCONF_H)
limits.o: $(arch_hdrdir)/ruby/config.h
limits.o: $(hdrdir)/ruby/internal/anyargs.h
limits.o: $(hdrdir)/ruby/internal/arithmetic.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/char.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/double.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/int.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/long.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/short.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
limits.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
limits.o: $(hdrdir)/ruby/internal/assume.h
limits.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
limits.o: $(hdrdir)/ruby/internal/attr/artificial.h
limits.o: $(hdrdir)/ruby/internal/attr/cold.h
limits.o: $(hdrdir)/ruby/internal/attr/const.h
limits.o: $(hdrdir)/ruby/internal/attr/constexpr.h
limits.o: $(hdrdir)/ruby/internal/attr/deprecated.h
limits.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
limits.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
limits.o: $(hdrdir)/ruby/internal/attr/error.h
limits.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
limits.o: $(hdrdir)/ruby/internal/attr/forceinline.h
limits.o: $(hdrdir)/ruby/internal/attr/format.h
limits.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
limits.o: $(hdrdir)/ruby/internal/attr/noalias.h
limits.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
limits.o: $(hdrdir)/ruby/internal/attr/noexcept.h
limits.o: $(hdrdir)/ruby/internal/attr/noinline.h
limits.o: $(hdrdir)/ruby/internal/attr/nonnull.h
limits.o: $(hdrdir)/ruby/internal/attr/noreturn.h
limits.o: $(hdrdir)/ruby/internal/attr/pure.h
limits.o: $(hdrdir)/ruby/internal/attr/restrict.h
limits.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
limits.o: $(hdrdir)/ruby/internal/attr/warning.h
limits.o: $(hdrdir)/ruby/internal/attr/weakref.h
limits.o: $(hdrdir)/ruby/internal/cast.h
limits.o: $(hdrdir)/ruby/internal/compiler_is.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
limits.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
limits.o: $(hdrdir)/ruby/internal/compiler_since.h
limits.o: $(hdrdir)/ruby/internal/config.h
limits.o: $(hdrdir)/ruby/internal/constant_p.h
limits.o: $(hdrdir)/ruby/internal/core.h
limits.o: $(hdrdir)/ruby/internal/core/rarray.h
limits.o: $(hdrdir)/ruby/internal/core/rbasic.h
limits.o: $(hdrdir)/ruby/internal/core/rbignum.h
limits.o: $(hdrdir)/ruby/internal/core/rclass.h
limits.o: $(hdrdir)/ruby/internal/core/rdata.h
limits.o: $(hdrdir)/ruby/internal/core/rfile.h
limits.o: $(hdrdir)/ruby/internal/core/rhash.h
limits.o: $(hdrdir)/ruby/internal/core/robject.h
limits.o: $(hdrdir)/ruby/internal/core/rregexp.h
limits.o: $(hdrdir)/ruby/internal/core/rstring.h
limits.o: $(hdrdir)/ruby/internal/core/rstruct.h
limits.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
limits.o: $(hdrdir)/ruby/internal/ctype.h
limits.o: $(hdrdir)/ruby/internal/dllexport.h
limits.o: $(hdrdir)/ruby/internal/dosish.h
limits.o: $(hdrdir)/ruby/internal/error.h
limits.o: $(hdrdir)/ruby/internal/eval.h
limits.o: $(hdrdir)/ruby/internal/event.h
limits.o: $(hdrdir)/ruby/internal/fl_type.h
limits.o: $(hdrdir)/ruby/internal/gc.h
limits.o: $(hdrdir)/ruby/internal/glob.h
limits.o: $(hdrdir)/ruby/internal/globals.h
limits.o: $(hdrdir)/ruby/internal/has/attribute.h
limits.o: $(hdrdir)/ruby/internal/has/builtin.h
limits.o: $(hdrdir)/ruby/internal/has/c_attribute.h
limits.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
limits.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
limits.o: $(hdrdir)/ruby/internal/has/extension.h
limits.o: $(hdrdir)/ruby/internal/has/feature.h
limits.o: $(hdrdir)/ruby/internal/has/warning.h
limits.o: $(hdrdir)/ruby/internal/intern/array.h
limits.o: $(hdrdir)/ruby/internal/intern/bignum.h
limits.o: $(hdrdir)/ruby/internal/intern/class.h
limits.o: $(hdrdir)/ruby/internal/intern/compar.h
limits.o: $(hdrdir)/ruby/internal/intern/complex.h
limits.o: $(hdrdir)/ruby/internal/intern/cont.h
limits.o: $(hdrdir)/ruby/internal/intern/dir.h
limits.o: $(hdrdir)/ruby/internal/intern/enum.h
limits.o: $(hdrdir)/ruby/internal/intern/enumerator.h
limits.o: $(hdrdir)/ruby/internal/intern/error.h
limits.o: $(hdrdir)/ruby/internal/intern/eval.h
limits.o: $(hdrdir)/ruby/internal/intern/file.h
limits.o: $(hdrdir)/ruby/internal/intern/gc.h
limits.o: $(hdrdir)/ruby/internal/intern/hash.h
limits.o: $(hdrdir)/ruby/internal/intern/io.h
limits.o: $(hdrdir)/ruby/internal/intern/load.h
limits.o: $(hdrdir)/ruby/internal/intern/marshal.h
limits.o: $(hdrdir)/ruby/internal/intern/numeric.h
limits.o: $(hdrdir)/ruby/internal/intern/object.h
limits.o: $(hdrdir)/ruby/internal/intern/parse.h
limits.o: $(hdrdir)/ruby/internal/intern/proc.h
limits.o: $(hdrdir)/ruby/internal/intern/process.h
limits.o: $(hdrdir)/ruby/internal/intern/random.h
limits.o: $(hdrdir)/ruby/internal/intern/range.h
limits.o: $(hdrdir)/ruby/internal/intern/rational.h
limits.o: $(hdrdir)/ruby/internal/intern/re.h
limits.o: $(hdrdir)/ruby/internal/intern/ruby.h
limits.o: $(hdrdir)/ruby/internal/intern/select.h
limits.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
limits.o: $(hdrdir)/ruby/internal/intern/signal.h
limits.o: $(hdrdir)/ruby/internal/intern/sprintf.h
limits.o: $(hdrdir)/ruby/internal/intern/string.h
limits.o: $(hdrdir)/ruby/internal/intern/struct.h
limits.o: $(hdrdir)/ruby/internal/intern/thread.h
limits.o: $(hdrdir)/ruby/internal/intern/time.h
limits.o: $(hdrdir)/ruby/internal/intern/variable.h
limits.o: $(hdrdir)/ruby/internal/intern/vm.h
limits.o: $(hdrdir)/ruby/internal/interpreter.h
limits.o: $(hdrdir)/ruby/internal/iterator.h
limits.o: $(hdrdir)/ruby/internal/memory.h
limits.o: $(hdrdir)/ruby/internal/method.h
limits.o: $(hdrdir)/ruby/internal/module.h
limits.o: $(hdrdir)/ruby/internal/newobj.h
limits.o: $(hdrdir)/ruby/internal/rgengc.h
limits.o: $(hdrdir)/ruby/internal/scan_args.h
limits.o: $(hdrdir)/ruby/internal/special_consts.h
limits.o: $(hdrdir)/ruby/internal/static_assert.h
limits.o: $(hdrdir)/ruby/internal/stdalign.h
limits.o: $(hdrdir)/ruby/internal/stdbool.h
limits.o: $(hdrdir)/ruby/internal/symbol.h
limits.o: $(hdrdir)/ruby/internal/token_paste.h
limits.o: $(hdrdir)/ruby/internal/value.h
limits.o: $(hdrdir)/ruby/internal/value_type.h
limits.o: $(hdrdir)/ruby/internal/variable.h
limits.o: $(hdrdir)/ruby/internal/warning_push.h
limits.o: $(hdrdir)/ruby/internal/xmalloc.h
limits.o: $(hdrdir)/ruby/assert.h
limits.o: $(hdrdir)/ruby/backward.h
limits.o: $(hdrdir)/ruby/backward/2/assume.h
limits.o: $(hdrdir)/ruby/backward/2/attributes.h
limits.o: $(hdrdir)/ruby/backward/2/bool.h
limits.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
limits.o: $(hdrdir)/ruby/backward/2/inttypes.h
limits.o: $(hdrdir)/ruby/backward/2/limits.h
limits.o: $(hdrdir)/ruby/backward/2/long_long.h
limits.o: $(hdrdir)/ruby/backward/2/stdalign.h
limits.o: $(hdrdir)/ruby/backward/2/stdarg.h
limits.o: $(hdrdir)/ruby/defines.h
limits.o: $(hdrdir)/ruby/intern.h
limits.o: $(hdrdir)/ruby/missing.h
limits.o: $(hdrdir)/ruby/ruby.h
limits.o: $(hdrdir)/ruby/st.h
limits.o: $(hdrdir)/ruby/subst.h
limits.o: limits.c
sizes.o: $(RUBY_EXTCONF_H)
sizes.o: $(arch_hdrdir)/ruby/config.h
sizes.o: $(hdrdir)/ruby/internal/anyargs.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/char.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/double.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/int.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/long.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/short.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
sizes.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
sizes.o: $(hdrdir)/ruby/internal/assume.h
sizes.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
sizes.o: $(hdrdir)/ruby/internal/attr/artificial.h
sizes.o: $(hdrdir)/ruby/internal/attr/cold.h
sizes.o: $(hdrdir)/ruby/internal/attr/const.h
sizes.o: $(hdrdir)/ruby/internal/attr/constexpr.h
sizes.o: $(hdrdir)/ruby/internal/attr/deprecated.h
sizes.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
sizes.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
sizes.o: $(hdrdir)/ruby/internal/attr/error.h
sizes.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
sizes.o: $(hdrdir)/ruby/internal/attr/forceinline.h
sizes.o: $(hdrdir)/ruby/internal/attr/format.h
sizes.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
sizes.o: $(hdrdir)/ruby/internal/attr/noalias.h
sizes.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
sizes.o: $(hdrdir)/ruby/internal/attr/noexcept.h
sizes.o: $(hdrdir)/ruby/internal/attr/noinline.h
sizes.o: $(hdrdir)/ruby/internal/attr/nonnull.h
sizes.o: $(hdrdir)/ruby/internal/attr/noreturn.h
sizes.o: $(hdrdir)/ruby/internal/attr/pure.h
sizes.o: $(hdrdir)/ruby/internal/attr/restrict.h
sizes.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
sizes.o: $(hdrdir)/ruby/internal/attr/warning.h
sizes.o: $(hdrdir)/ruby/internal/attr/weakref.h
sizes.o: $(hdrdir)/ruby/internal/cast.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
sizes.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
sizes.o: $(hdrdir)/ruby/internal/compiler_since.h
sizes.o: $(hdrdir)/ruby/internal/config.h
sizes.o: $(hdrdir)/ruby/internal/constant_p.h
sizes.o: $(hdrdir)/ruby/internal/core.h
sizes.o: $(hdrdir)/ruby/internal/core/rarray.h
sizes.o: $(hdrdir)/ruby/internal/core/rbasic.h
sizes.o: $(hdrdir)/ruby/internal/core/rbignum.h
sizes.o: $(hdrdir)/ruby/internal/core/rclass.h
sizes.o: $(hdrdir)/ruby/internal/core/rdata.h
sizes.o: $(hdrdir)/ruby/internal/core/rfile.h
sizes.o: $(hdrdir)/ruby/internal/core/rhash.h
sizes.o: $(hdrdir)/ruby/internal/core/robject.h
sizes.o: $(hdrdir)/ruby/internal/core/rregexp.h
sizes.o: $(hdrdir)/ruby/internal/core/rstring.h
sizes.o: $(hdrdir)/ruby/internal/core/rstruct.h
sizes.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
sizes.o: $(hdrdir)/ruby/internal/ctype.h
sizes.o: $(hdrdir)/ruby/internal/dllexport.h
sizes.o: $(hdrdir)/ruby/internal/dosish.h
sizes.o: $(hdrdir)/ruby/internal/error.h
sizes.o: $(hdrdir)/ruby/internal/eval.h
sizes.o: $(hdrdir)/ruby/internal/event.h
sizes.o: $(hdrdir)/ruby/internal/fl_type.h
sizes.o: $(hdrdir)/ruby/internal/gc.h
sizes.o: $(hdrdir)/ruby/internal/glob.h
sizes.o: $(hdrdir)/ruby/internal/globals.h
sizes.o: $(hdrdir)/ruby/internal/has/attribute.h
sizes.o: $(hdrdir)/ruby/internal/has/builtin.h
sizes.o: $(hdrdir)/ruby/internal/has/c_attribute.h
sizes.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
sizes.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
sizes.o: $(hdrdir)/ruby/internal/has/extension.h
sizes.o: $(hdrdir)/ruby/internal/has/feature.h
sizes.o: $(hdrdir)/ruby/internal/has/warning.h
sizes.o: $(hdrdir)/ruby/internal/intern/array.h
sizes.o: $(hdrdir)/ruby/internal/intern/bignum.h
sizes.o: $(hdrdir)/ruby/internal/intern/class.h
sizes.o: $(hdrdir)/ruby/internal/intern/compar.h
sizes.o: $(hdrdir)/ruby/internal/intern/complex.h
sizes.o: $(hdrdir)/ruby/internal/intern/cont.h
sizes.o: $(hdrdir)/ruby/internal/intern/dir.h
sizes.o: $(hdrdir)/ruby/internal/intern/enum.h
sizes.o: $(hdrdir)/ruby/internal/intern/enumerator.h
sizes.o: $(hdrdir)/ruby/internal/intern/error.h
sizes.o: $(hdrdir)/ruby/internal/intern/eval.h
sizes.o: $(hdrdir)/ruby/internal/intern/file.h
sizes.o: $(hdrdir)/ruby/internal/intern/gc.h
sizes.o: $(hdrdir)/ruby/internal/intern/hash.h
sizes.o: $(hdrdir)/ruby/internal/intern/io.h
sizes.o: $(hdrdir)/ruby/internal/intern/load.h
sizes.o: $(hdrdir)/ruby/internal/intern/marshal.h
sizes.o: $(hdrdir)/ruby/internal/intern/numeric.h
sizes.o: $(hdrdir)/ruby/internal/intern/object.h
sizes.o: $(hdrdir)/ruby/internal/intern/parse.h
sizes.o: $(hdrdir)/ruby/internal/intern/proc.h
sizes.o: $(hdrdir)/ruby/internal/intern/process.h
sizes.o: $(hdrdir)/ruby/internal/intern/random.h
sizes.o: $(hdrdir)/ruby/internal/intern/range.h
sizes.o: $(hdrdir)/ruby/internal/intern/rational.h
sizes.o: $(hdrdir)/ruby/internal/intern/re.h
sizes.o: $(hdrdir)/ruby/internal/intern/ruby.h
sizes.o: $(hdrdir)/ruby/internal/intern/select.h
sizes.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
sizes.o: $(hdrdir)/ruby/internal/intern/signal.h
sizes.o: $(hdrdir)/ruby/internal/intern/sprintf.h
sizes.o: $(hdrdir)/ruby/internal/intern/string.h
sizes.o: $(hdrdir)/ruby/internal/intern/struct.h
sizes.o: $(hdrdir)/ruby/internal/intern/thread.h
sizes.o: $(hdrdir)/ruby/internal/intern/time.h
sizes.o: $(hdrdir)/ruby/internal/intern/variable.h
sizes.o: $(hdrdir)/ruby/internal/intern/vm.h
sizes.o: $(hdrdir)/ruby/internal/interpreter.h
sizes.o: $(hdrdir)/ruby/internal/iterator.h
sizes.o: $(hdrdir)/ruby/internal/memory.h
sizes.o: $(hdrdir)/ruby/internal/method.h
sizes.o: $(hdrdir)/ruby/internal/module.h
sizes.o: $(hdrdir)/ruby/internal/newobj.h
sizes.o: $(hdrdir)/ruby/internal/rgengc.h
sizes.o: $(hdrdir)/ruby/internal/scan_args.h
sizes.o: $(hdrdir)/ruby/internal/special_consts.h
sizes.o: $(hdrdir)/ruby/internal/static_assert.h
sizes.o: $(hdrdir)/ruby/internal/stdalign.h
sizes.o: $(hdrdir)/ruby/internal/stdbool.h
sizes.o: $(hdrdir)/ruby/internal/symbol.h
sizes.o: $(hdrdir)/ruby/internal/token_paste.h
sizes.o: $(hdrdir)/ruby/internal/value.h
sizes.o: $(hdrdir)/ruby/internal/value_type.h
sizes.o: $(hdrdir)/ruby/internal/variable.h
sizes.o: $(hdrdir)/ruby/internal/warning_push.h
sizes.o: $(hdrdir)/ruby/internal/xmalloc.h
sizes.o: $(hdrdir)/ruby/assert.h
sizes.o: $(hdrdir)/ruby/backward.h
sizes.o: $(hdrdir)/ruby/backward/2/assume.h
sizes.o: $(hdrdir)/ruby/backward/2/attributes.h
sizes.o: $(hdrdir)/ruby/backward/2/bool.h
sizes.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
sizes.o: $(hdrdir)/ruby/backward/2/inttypes.h
sizes.o: $(hdrdir)/ruby/backward/2/limits.h
sizes.o: $(hdrdir)/ruby/backward/2/long_long.h
sizes.o: $(hdrdir)/ruby/backward/2/stdalign.h
sizes.o: $(hdrdir)/ruby/backward/2/stdarg.h
sizes.o: $(hdrdir)/ruby/defines.h
sizes.o: $(hdrdir)/ruby/intern.h
sizes.o: $(hdrdir)/ruby/missing.h
sizes.o: $(hdrdir)/ruby/ruby.h
sizes.o: $(hdrdir)/ruby/st.h
sizes.o: $(hdrdir)/ruby/subst.h
sizes.o: sizes.c
# AUTOGENERATED DEPENDENCIES END
