
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
srcdir = $(top_srcdir)/ext/objspace
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby:$(topdir):$(top_srcdir)
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
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = object_tracing.c objspace.c objspace_dump.c
SRCS = $(ORIG_SRCS) 
OBJS = object_tracing.o objspace.o objspace_dump.o
HDRS = $(srcdir)/objspace.h
LOCAL_HDRS = 
TARGET = objspace
TARGET_NAME = objspace
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
do-install-rb-default: $(RUBYLIBDIR)/objspace.rb
$(RUBYLIBDIR)/objspace.rb: $(srcdir)/lib/objspace.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/objspace.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/objspace.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default objspace libraries
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
object_tracing.o: $(RUBY_EXTCONF_H)
object_tracing.o: $(arch_hdrdir)/ruby/config.h
object_tracing.o: $(hdrdir)/ruby.h
object_tracing.o: $(hdrdir)/ruby/assert.h
object_tracing.o: $(hdrdir)/ruby/backward.h
object_tracing.o: $(hdrdir)/ruby/backward/2/assume.h
object_tracing.o: $(hdrdir)/ruby/backward/2/attributes.h
object_tracing.o: $(hdrdir)/ruby/backward/2/bool.h
object_tracing.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
object_tracing.o: $(hdrdir)/ruby/backward/2/inttypes.h
object_tracing.o: $(hdrdir)/ruby/backward/2/limits.h
object_tracing.o: $(hdrdir)/ruby/backward/2/long_long.h
object_tracing.o: $(hdrdir)/ruby/backward/2/r_cast.h
object_tracing.o: $(hdrdir)/ruby/backward/2/rmodule.h
object_tracing.o: $(hdrdir)/ruby/backward/2/stdalign.h
object_tracing.o: $(hdrdir)/ruby/backward/2/stdarg.h
object_tracing.o: $(hdrdir)/ruby/debug.h
object_tracing.o: $(hdrdir)/ruby/defines.h
object_tracing.o: $(hdrdir)/ruby/intern.h
object_tracing.o: $(hdrdir)/ruby/internal/anyargs.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/char.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/double.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/int.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/long.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/short.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
object_tracing.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
object_tracing.o: $(hdrdir)/ruby/internal/assume.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/artificial.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/cold.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/const.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/constexpr.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/deprecated.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/error.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/forceinline.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/format.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/noalias.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/noexcept.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/noinline.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/nonnull.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/noreturn.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/pure.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/restrict.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/warning.h
object_tracing.o: $(hdrdir)/ruby/internal/attr/weakref.h
object_tracing.o: $(hdrdir)/ruby/internal/cast.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
object_tracing.o: $(hdrdir)/ruby/internal/compiler_since.h
object_tracing.o: $(hdrdir)/ruby/internal/config.h
object_tracing.o: $(hdrdir)/ruby/internal/constant_p.h
object_tracing.o: $(hdrdir)/ruby/internal/core.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rarray.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rbasic.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rbignum.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rclass.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rdata.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rfile.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rhash.h
object_tracing.o: $(hdrdir)/ruby/internal/core/robject.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rregexp.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rstring.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rstruct.h
object_tracing.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
object_tracing.o: $(hdrdir)/ruby/internal/ctype.h
object_tracing.o: $(hdrdir)/ruby/internal/dllexport.h
object_tracing.o: $(hdrdir)/ruby/internal/dosish.h
object_tracing.o: $(hdrdir)/ruby/internal/error.h
object_tracing.o: $(hdrdir)/ruby/internal/eval.h
object_tracing.o: $(hdrdir)/ruby/internal/event.h
object_tracing.o: $(hdrdir)/ruby/internal/fl_type.h
object_tracing.o: $(hdrdir)/ruby/internal/gc.h
object_tracing.o: $(hdrdir)/ruby/internal/glob.h
object_tracing.o: $(hdrdir)/ruby/internal/globals.h
object_tracing.o: $(hdrdir)/ruby/internal/has/attribute.h
object_tracing.o: $(hdrdir)/ruby/internal/has/builtin.h
object_tracing.o: $(hdrdir)/ruby/internal/has/c_attribute.h
object_tracing.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
object_tracing.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
object_tracing.o: $(hdrdir)/ruby/internal/has/extension.h
object_tracing.o: $(hdrdir)/ruby/internal/has/feature.h
object_tracing.o: $(hdrdir)/ruby/internal/has/warning.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/array.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/bignum.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/class.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/compar.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/complex.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/cont.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/dir.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/enum.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/enumerator.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/error.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/eval.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/file.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/gc.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/hash.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/io.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/load.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/marshal.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/numeric.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/object.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/parse.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/proc.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/process.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/random.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/range.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/rational.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/re.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/ruby.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/select.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/signal.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/sprintf.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/string.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/struct.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/thread.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/time.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/variable.h
object_tracing.o: $(hdrdir)/ruby/internal/intern/vm.h
object_tracing.o: $(hdrdir)/ruby/internal/interpreter.h
object_tracing.o: $(hdrdir)/ruby/internal/iterator.h
object_tracing.o: $(hdrdir)/ruby/internal/memory.h
object_tracing.o: $(hdrdir)/ruby/internal/method.h
object_tracing.o: $(hdrdir)/ruby/internal/module.h
object_tracing.o: $(hdrdir)/ruby/internal/newobj.h
object_tracing.o: $(hdrdir)/ruby/internal/rgengc.h
object_tracing.o: $(hdrdir)/ruby/internal/scan_args.h
object_tracing.o: $(hdrdir)/ruby/internal/special_consts.h
object_tracing.o: $(hdrdir)/ruby/internal/static_assert.h
object_tracing.o: $(hdrdir)/ruby/internal/stdalign.h
object_tracing.o: $(hdrdir)/ruby/internal/stdbool.h
object_tracing.o: $(hdrdir)/ruby/internal/symbol.h
object_tracing.o: $(hdrdir)/ruby/internal/token_paste.h
object_tracing.o: $(hdrdir)/ruby/internal/value.h
object_tracing.o: $(hdrdir)/ruby/internal/value_type.h
object_tracing.o: $(hdrdir)/ruby/internal/variable.h
object_tracing.o: $(hdrdir)/ruby/internal/warning_push.h
object_tracing.o: $(hdrdir)/ruby/internal/xmalloc.h
object_tracing.o: $(hdrdir)/ruby/missing.h
object_tracing.o: $(hdrdir)/ruby/ruby.h
object_tracing.o: $(hdrdir)/ruby/st.h
object_tracing.o: $(hdrdir)/ruby/subst.h
object_tracing.o: $(top_srcdir)/internal.h
object_tracing.o: object_tracing.c
object_tracing.o: objspace.h
objspace.o: $(RUBY_EXTCONF_H)
objspace.o: $(arch_hdrdir)/ruby/config.h
objspace.o: $(hdrdir)/ruby.h
objspace.o: $(hdrdir)/ruby/assert.h
objspace.o: $(hdrdir)/ruby/backward.h
objspace.o: $(hdrdir)/ruby/backward/2/assume.h
objspace.o: $(hdrdir)/ruby/backward/2/attributes.h
objspace.o: $(hdrdir)/ruby/backward/2/bool.h
objspace.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
objspace.o: $(hdrdir)/ruby/backward/2/inttypes.h
objspace.o: $(hdrdir)/ruby/backward/2/limits.h
objspace.o: $(hdrdir)/ruby/backward/2/long_long.h
objspace.o: $(hdrdir)/ruby/backward/2/r_cast.h
objspace.o: $(hdrdir)/ruby/backward/2/rmodule.h
objspace.o: $(hdrdir)/ruby/backward/2/stdalign.h
objspace.o: $(hdrdir)/ruby/backward/2/stdarg.h
objspace.o: $(hdrdir)/ruby/defines.h
objspace.o: $(hdrdir)/ruby/encoding.h
objspace.o: $(hdrdir)/ruby/intern.h
objspace.o: $(hdrdir)/ruby/internal/anyargs.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/char.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/double.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/int.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/long.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/short.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
objspace.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
objspace.o: $(hdrdir)/ruby/internal/assume.h
objspace.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
objspace.o: $(hdrdir)/ruby/internal/attr/artificial.h
objspace.o: $(hdrdir)/ruby/internal/attr/cold.h
objspace.o: $(hdrdir)/ruby/internal/attr/const.h
objspace.o: $(hdrdir)/ruby/internal/attr/constexpr.h
objspace.o: $(hdrdir)/ruby/internal/attr/deprecated.h
objspace.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
objspace.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
objspace.o: $(hdrdir)/ruby/internal/attr/error.h
objspace.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
objspace.o: $(hdrdir)/ruby/internal/attr/forceinline.h
objspace.o: $(hdrdir)/ruby/internal/attr/format.h
objspace.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
objspace.o: $(hdrdir)/ruby/internal/attr/noalias.h
objspace.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
objspace.o: $(hdrdir)/ruby/internal/attr/noexcept.h
objspace.o: $(hdrdir)/ruby/internal/attr/noinline.h
objspace.o: $(hdrdir)/ruby/internal/attr/nonnull.h
objspace.o: $(hdrdir)/ruby/internal/attr/noreturn.h
objspace.o: $(hdrdir)/ruby/internal/attr/pure.h
objspace.o: $(hdrdir)/ruby/internal/attr/restrict.h
objspace.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
objspace.o: $(hdrdir)/ruby/internal/attr/warning.h
objspace.o: $(hdrdir)/ruby/internal/attr/weakref.h
objspace.o: $(hdrdir)/ruby/internal/cast.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
objspace.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
objspace.o: $(hdrdir)/ruby/internal/compiler_since.h
objspace.o: $(hdrdir)/ruby/internal/config.h
objspace.o: $(hdrdir)/ruby/internal/constant_p.h
objspace.o: $(hdrdir)/ruby/internal/core.h
objspace.o: $(hdrdir)/ruby/internal/core/rarray.h
objspace.o: $(hdrdir)/ruby/internal/core/rbasic.h
objspace.o: $(hdrdir)/ruby/internal/core/rbignum.h
objspace.o: $(hdrdir)/ruby/internal/core/rclass.h
objspace.o: $(hdrdir)/ruby/internal/core/rdata.h
objspace.o: $(hdrdir)/ruby/internal/core/rfile.h
objspace.o: $(hdrdir)/ruby/internal/core/rhash.h
objspace.o: $(hdrdir)/ruby/internal/core/rmatch.h
objspace.o: $(hdrdir)/ruby/internal/core/robject.h
objspace.o: $(hdrdir)/ruby/internal/core/rregexp.h
objspace.o: $(hdrdir)/ruby/internal/core/rstring.h
objspace.o: $(hdrdir)/ruby/internal/core/rstruct.h
objspace.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
objspace.o: $(hdrdir)/ruby/internal/ctype.h
objspace.o: $(hdrdir)/ruby/internal/dllexport.h
objspace.o: $(hdrdir)/ruby/internal/dosish.h
objspace.o: $(hdrdir)/ruby/internal/error.h
objspace.o: $(hdrdir)/ruby/internal/eval.h
objspace.o: $(hdrdir)/ruby/internal/event.h
objspace.o: $(hdrdir)/ruby/internal/fl_type.h
objspace.o: $(hdrdir)/ruby/internal/gc.h
objspace.o: $(hdrdir)/ruby/internal/glob.h
objspace.o: $(hdrdir)/ruby/internal/globals.h
objspace.o: $(hdrdir)/ruby/internal/has/attribute.h
objspace.o: $(hdrdir)/ruby/internal/has/builtin.h
objspace.o: $(hdrdir)/ruby/internal/has/c_attribute.h
objspace.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
objspace.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
objspace.o: $(hdrdir)/ruby/internal/has/extension.h
objspace.o: $(hdrdir)/ruby/internal/has/feature.h
objspace.o: $(hdrdir)/ruby/internal/has/warning.h
objspace.o: $(hdrdir)/ruby/internal/intern/array.h
objspace.o: $(hdrdir)/ruby/internal/intern/bignum.h
objspace.o: $(hdrdir)/ruby/internal/intern/class.h
objspace.o: $(hdrdir)/ruby/internal/intern/compar.h
objspace.o: $(hdrdir)/ruby/internal/intern/complex.h
objspace.o: $(hdrdir)/ruby/internal/intern/cont.h
objspace.o: $(hdrdir)/ruby/internal/intern/dir.h
objspace.o: $(hdrdir)/ruby/internal/intern/enum.h
objspace.o: $(hdrdir)/ruby/internal/intern/enumerator.h
objspace.o: $(hdrdir)/ruby/internal/intern/error.h
objspace.o: $(hdrdir)/ruby/internal/intern/eval.h
objspace.o: $(hdrdir)/ruby/internal/intern/file.h
objspace.o: $(hdrdir)/ruby/internal/intern/gc.h
objspace.o: $(hdrdir)/ruby/internal/intern/hash.h
objspace.o: $(hdrdir)/ruby/internal/intern/io.h
objspace.o: $(hdrdir)/ruby/internal/intern/load.h
objspace.o: $(hdrdir)/ruby/internal/intern/marshal.h
objspace.o: $(hdrdir)/ruby/internal/intern/numeric.h
objspace.o: $(hdrdir)/ruby/internal/intern/object.h
objspace.o: $(hdrdir)/ruby/internal/intern/parse.h
objspace.o: $(hdrdir)/ruby/internal/intern/proc.h
objspace.o: $(hdrdir)/ruby/internal/intern/process.h
objspace.o: $(hdrdir)/ruby/internal/intern/random.h
objspace.o: $(hdrdir)/ruby/internal/intern/range.h
objspace.o: $(hdrdir)/ruby/internal/intern/rational.h
objspace.o: $(hdrdir)/ruby/internal/intern/re.h
objspace.o: $(hdrdir)/ruby/internal/intern/ruby.h
objspace.o: $(hdrdir)/ruby/internal/intern/select.h
objspace.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
objspace.o: $(hdrdir)/ruby/internal/intern/signal.h
objspace.o: $(hdrdir)/ruby/internal/intern/sprintf.h
objspace.o: $(hdrdir)/ruby/internal/intern/string.h
objspace.o: $(hdrdir)/ruby/internal/intern/struct.h
objspace.o: $(hdrdir)/ruby/internal/intern/thread.h
objspace.o: $(hdrdir)/ruby/internal/intern/time.h
objspace.o: $(hdrdir)/ruby/internal/intern/variable.h
objspace.o: $(hdrdir)/ruby/internal/intern/vm.h
objspace.o: $(hdrdir)/ruby/internal/interpreter.h
objspace.o: $(hdrdir)/ruby/internal/iterator.h
objspace.o: $(hdrdir)/ruby/internal/memory.h
objspace.o: $(hdrdir)/ruby/internal/method.h
objspace.o: $(hdrdir)/ruby/internal/module.h
objspace.o: $(hdrdir)/ruby/internal/newobj.h
objspace.o: $(hdrdir)/ruby/internal/rgengc.h
objspace.o: $(hdrdir)/ruby/internal/scan_args.h
objspace.o: $(hdrdir)/ruby/internal/special_consts.h
objspace.o: $(hdrdir)/ruby/internal/static_assert.h
objspace.o: $(hdrdir)/ruby/internal/stdalign.h
objspace.o: $(hdrdir)/ruby/internal/stdbool.h
objspace.o: $(hdrdir)/ruby/internal/symbol.h
objspace.o: $(hdrdir)/ruby/internal/token_paste.h
objspace.o: $(hdrdir)/ruby/internal/value.h
objspace.o: $(hdrdir)/ruby/internal/value_type.h
objspace.o: $(hdrdir)/ruby/internal/variable.h
objspace.o: $(hdrdir)/ruby/internal/warning_push.h
objspace.o: $(hdrdir)/ruby/internal/xmalloc.h
objspace.o: $(hdrdir)/ruby/io.h
objspace.o: $(hdrdir)/ruby/missing.h
objspace.o: $(hdrdir)/ruby/onigmo.h
objspace.o: $(hdrdir)/ruby/oniguruma.h
objspace.o: $(hdrdir)/ruby/re.h
objspace.o: $(hdrdir)/ruby/regex.h
objspace.o: $(hdrdir)/ruby/ruby.h
objspace.o: $(hdrdir)/ruby/st.h
objspace.o: $(hdrdir)/ruby/subst.h
objspace.o: $(top_srcdir)/gc.h
objspace.o: $(top_srcdir)/id_table.h
objspace.o: $(top_srcdir)/internal.h
objspace.o: $(top_srcdir)/internal/array.h
objspace.o: $(top_srcdir)/internal/class.h
objspace.o: $(top_srcdir)/internal/compilers.h
objspace.o: $(top_srcdir)/internal/gc.h
objspace.o: $(top_srcdir)/internal/hash.h
objspace.o: $(top_srcdir)/internal/imemo.h
objspace.o: $(top_srcdir)/internal/sanitizers.h
objspace.o: $(top_srcdir)/internal/serial.h
objspace.o: $(top_srcdir)/internal/static_assert.h
objspace.o: $(top_srcdir)/internal/warnings.h
objspace.o: $(top_srcdir)/node.h
objspace.o: $(top_srcdir)/symbol.h
objspace.o: objspace.c
objspace.o: id.h
objspace_dump.o: $(RUBY_EXTCONF_H)
objspace_dump.o: $(arch_hdrdir)/ruby/config.h
objspace_dump.o: $(hdrdir)/ruby.h
objspace_dump.o: $(hdrdir)/ruby/assert.h
objspace_dump.o: $(hdrdir)/ruby/atomic.h
objspace_dump.o: $(hdrdir)/ruby/backward.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/assume.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/attributes.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/bool.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/inttypes.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/limits.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/long_long.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/r_cast.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/rmodule.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/stdalign.h
objspace_dump.o: $(hdrdir)/ruby/backward/2/stdarg.h
objspace_dump.o: $(hdrdir)/ruby/debug.h
objspace_dump.o: $(hdrdir)/ruby/defines.h
objspace_dump.o: $(hdrdir)/ruby/encoding.h
objspace_dump.o: $(hdrdir)/ruby/intern.h
objspace_dump.o: $(hdrdir)/ruby/internal/anyargs.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/char.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/double.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/int.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/long.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/short.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
objspace_dump.o: $(hdrdir)/ruby/internal/assume.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/artificial.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/cold.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/const.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/constexpr.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/deprecated.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/error.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/forceinline.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/format.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/noalias.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/noexcept.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/noinline.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/nonnull.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/noreturn.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/pure.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/restrict.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/warning.h
objspace_dump.o: $(hdrdir)/ruby/internal/attr/weakref.h
objspace_dump.o: $(hdrdir)/ruby/internal/cast.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
objspace_dump.o: $(hdrdir)/ruby/internal/compiler_since.h
objspace_dump.o: $(hdrdir)/ruby/internal/config.h
objspace_dump.o: $(hdrdir)/ruby/internal/constant_p.h
objspace_dump.o: $(hdrdir)/ruby/internal/core.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rarray.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rbasic.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rbignum.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rclass.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rdata.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rfile.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rhash.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/robject.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rregexp.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rstring.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rstruct.h
objspace_dump.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
objspace_dump.o: $(hdrdir)/ruby/internal/ctype.h
objspace_dump.o: $(hdrdir)/ruby/internal/dllexport.h
objspace_dump.o: $(hdrdir)/ruby/internal/dosish.h
objspace_dump.o: $(hdrdir)/ruby/internal/error.h
objspace_dump.o: $(hdrdir)/ruby/internal/eval.h
objspace_dump.o: $(hdrdir)/ruby/internal/event.h
objspace_dump.o: $(hdrdir)/ruby/internal/fl_type.h
objspace_dump.o: $(hdrdir)/ruby/internal/gc.h
objspace_dump.o: $(hdrdir)/ruby/internal/glob.h
objspace_dump.o: $(hdrdir)/ruby/internal/globals.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/attribute.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/builtin.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/c_attribute.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/extension.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/feature.h
objspace_dump.o: $(hdrdir)/ruby/internal/has/warning.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/array.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/bignum.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/class.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/compar.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/complex.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/cont.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/dir.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/enum.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/enumerator.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/error.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/eval.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/file.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/gc.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/hash.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/io.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/load.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/marshal.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/numeric.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/object.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/parse.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/proc.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/process.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/random.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/range.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/rational.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/re.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/ruby.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/select.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/signal.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/sprintf.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/string.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/struct.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/thread.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/time.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/variable.h
objspace_dump.o: $(hdrdir)/ruby/internal/intern/vm.h
objspace_dump.o: $(hdrdir)/ruby/internal/interpreter.h
objspace_dump.o: $(hdrdir)/ruby/internal/iterator.h
objspace_dump.o: $(hdrdir)/ruby/internal/memory.h
objspace_dump.o: $(hdrdir)/ruby/internal/method.h
objspace_dump.o: $(hdrdir)/ruby/internal/module.h
objspace_dump.o: $(hdrdir)/ruby/internal/newobj.h
objspace_dump.o: $(hdrdir)/ruby/internal/rgengc.h
objspace_dump.o: $(hdrdir)/ruby/internal/scan_args.h
objspace_dump.o: $(hdrdir)/ruby/internal/special_consts.h
objspace_dump.o: $(hdrdir)/ruby/internal/static_assert.h
objspace_dump.o: $(hdrdir)/ruby/internal/stdalign.h
objspace_dump.o: $(hdrdir)/ruby/internal/stdbool.h
objspace_dump.o: $(hdrdir)/ruby/internal/symbol.h
objspace_dump.o: $(hdrdir)/ruby/internal/token_paste.h
objspace_dump.o: $(hdrdir)/ruby/internal/value.h
objspace_dump.o: $(hdrdir)/ruby/internal/value_type.h
objspace_dump.o: $(hdrdir)/ruby/internal/variable.h
objspace_dump.o: $(hdrdir)/ruby/internal/warning_push.h
objspace_dump.o: $(hdrdir)/ruby/internal/xmalloc.h
objspace_dump.o: $(hdrdir)/ruby/io.h
objspace_dump.o: $(hdrdir)/ruby/missing.h
objspace_dump.o: $(hdrdir)/ruby/onigmo.h
objspace_dump.o: $(hdrdir)/ruby/oniguruma.h
objspace_dump.o: $(hdrdir)/ruby/ruby.h
objspace_dump.o: $(hdrdir)/ruby/st.h
objspace_dump.o: $(hdrdir)/ruby/subst.h
objspace_dump.o: $(hdrdir)/ruby/thread_native.h
objspace_dump.o: $(hdrdir)/ruby/util.h
objspace_dump.o: $(top_srcdir)/ccan/check_type/check_type.h
objspace_dump.o: $(top_srcdir)/ccan/container_of/container_of.h
objspace_dump.o: $(top_srcdir)/ccan/list/list.h
objspace_dump.o: $(top_srcdir)/ccan/str/str.h
objspace_dump.o: $(top_srcdir)/gc.h
objspace_dump.o: $(top_srcdir)/internal.h
objspace_dump.o: $(top_srcdir)/internal/array.h
objspace_dump.o: $(top_srcdir)/internal/compilers.h
objspace_dump.o: $(top_srcdir)/internal/gc.h
objspace_dump.o: $(top_srcdir)/internal/hash.h
objspace_dump.o: $(top_srcdir)/internal/imemo.h
objspace_dump.o: $(top_srcdir)/internal/sanitizers.h
objspace_dump.o: $(top_srcdir)/internal/serial.h
objspace_dump.o: $(top_srcdir)/internal/static_assert.h
objspace_dump.o: $(top_srcdir)/internal/string.h
objspace_dump.o: $(top_srcdir)/internal/vm.h
objspace_dump.o: $(top_srcdir)/internal/warnings.h
objspace_dump.o: $(top_srcdir)/method.h
objspace_dump.o: $(top_srcdir)/node.h
objspace_dump.o: $(top_srcdir)/ruby_assert.h
objspace_dump.o: $(top_srcdir)/ruby_atomic.h
objspace_dump.o: $(top_srcdir)/thread_pthread.h
objspace_dump.o: $(top_srcdir)/vm_core.h
objspace_dump.o: $(top_srcdir)/vm_opts.h
objspace_dump.o: objspace.h
objspace_dump.o: objspace_dump.c
objspace_dump.o: id.h
# AUTOGENERATED DEPENDENCIES END
