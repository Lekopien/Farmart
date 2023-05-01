
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
srcdir = $(top_srcdir)/ext/digest/md5
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

preload = digest
EXTSO = 
libpath = . $(topdir)
LIBPATH =  -L. -L$(topdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = /digest
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = md5.c md5init.c
SRCS = $(ORIG_SRCS) md5init.c md5.c
OBJS = md5init.o md5.o
HDRS = $(srcdir)/md5.h $(srcdir)/md5cc.h
LOCAL_HDRS = 
TARGET = md5
TARGET_NAME = md5
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.digest.time
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
$(TIMESTAMP_DIR)/$(arch)/.digest.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.digest.time
	$(ECHO) linking shared-object digest/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

md5.o: md5.c md5.h $(srcdir)/../defs.h
md5init.o: $(LOCAL_HDRS)

# AUTOGENERATED DEPENDENCIES START
md5.o: $(RUBY_EXTCONF_H)
md5.o: $(arch_hdrdir)/ruby/config.h
md5.o: $(hdrdir)/ruby.h
md5.o: $(hdrdir)/ruby/assert.h
md5.o: $(hdrdir)/ruby/backward.h
md5.o: $(hdrdir)/ruby/backward/2/assume.h
md5.o: $(hdrdir)/ruby/backward/2/attributes.h
md5.o: $(hdrdir)/ruby/backward/2/bool.h
md5.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
md5.o: $(hdrdir)/ruby/backward/2/inttypes.h
md5.o: $(hdrdir)/ruby/backward/2/limits.h
md5.o: $(hdrdir)/ruby/backward/2/long_long.h
md5.o: $(hdrdir)/ruby/backward/2/stdalign.h
md5.o: $(hdrdir)/ruby/backward/2/stdarg.h
md5.o: $(hdrdir)/ruby/defines.h
md5.o: $(hdrdir)/ruby/intern.h
md5.o: $(hdrdir)/ruby/internal/anyargs.h
md5.o: $(hdrdir)/ruby/internal/arithmetic.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/char.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/double.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/int.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/long.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/short.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
md5.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
md5.o: $(hdrdir)/ruby/internal/assume.h
md5.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
md5.o: $(hdrdir)/ruby/internal/attr/artificial.h
md5.o: $(hdrdir)/ruby/internal/attr/cold.h
md5.o: $(hdrdir)/ruby/internal/attr/const.h
md5.o: $(hdrdir)/ruby/internal/attr/constexpr.h
md5.o: $(hdrdir)/ruby/internal/attr/deprecated.h
md5.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
md5.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
md5.o: $(hdrdir)/ruby/internal/attr/error.h
md5.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
md5.o: $(hdrdir)/ruby/internal/attr/forceinline.h
md5.o: $(hdrdir)/ruby/internal/attr/format.h
md5.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
md5.o: $(hdrdir)/ruby/internal/attr/noalias.h
md5.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
md5.o: $(hdrdir)/ruby/internal/attr/noexcept.h
md5.o: $(hdrdir)/ruby/internal/attr/noinline.h
md5.o: $(hdrdir)/ruby/internal/attr/nonnull.h
md5.o: $(hdrdir)/ruby/internal/attr/noreturn.h
md5.o: $(hdrdir)/ruby/internal/attr/pure.h
md5.o: $(hdrdir)/ruby/internal/attr/restrict.h
md5.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
md5.o: $(hdrdir)/ruby/internal/attr/warning.h
md5.o: $(hdrdir)/ruby/internal/attr/weakref.h
md5.o: $(hdrdir)/ruby/internal/cast.h
md5.o: $(hdrdir)/ruby/internal/compiler_is.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
md5.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
md5.o: $(hdrdir)/ruby/internal/compiler_since.h
md5.o: $(hdrdir)/ruby/internal/config.h
md5.o: $(hdrdir)/ruby/internal/constant_p.h
md5.o: $(hdrdir)/ruby/internal/core.h
md5.o: $(hdrdir)/ruby/internal/core/rarray.h
md5.o: $(hdrdir)/ruby/internal/core/rbasic.h
md5.o: $(hdrdir)/ruby/internal/core/rbignum.h
md5.o: $(hdrdir)/ruby/internal/core/rclass.h
md5.o: $(hdrdir)/ruby/internal/core/rdata.h
md5.o: $(hdrdir)/ruby/internal/core/rfile.h
md5.o: $(hdrdir)/ruby/internal/core/rhash.h
md5.o: $(hdrdir)/ruby/internal/core/robject.h
md5.o: $(hdrdir)/ruby/internal/core/rregexp.h
md5.o: $(hdrdir)/ruby/internal/core/rstring.h
md5.o: $(hdrdir)/ruby/internal/core/rstruct.h
md5.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
md5.o: $(hdrdir)/ruby/internal/ctype.h
md5.o: $(hdrdir)/ruby/internal/dllexport.h
md5.o: $(hdrdir)/ruby/internal/dosish.h
md5.o: $(hdrdir)/ruby/internal/error.h
md5.o: $(hdrdir)/ruby/internal/eval.h
md5.o: $(hdrdir)/ruby/internal/event.h
md5.o: $(hdrdir)/ruby/internal/fl_type.h
md5.o: $(hdrdir)/ruby/internal/gc.h
md5.o: $(hdrdir)/ruby/internal/glob.h
md5.o: $(hdrdir)/ruby/internal/globals.h
md5.o: $(hdrdir)/ruby/internal/has/attribute.h
md5.o: $(hdrdir)/ruby/internal/has/builtin.h
md5.o: $(hdrdir)/ruby/internal/has/c_attribute.h
md5.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
md5.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
md5.o: $(hdrdir)/ruby/internal/has/extension.h
md5.o: $(hdrdir)/ruby/internal/has/feature.h
md5.o: $(hdrdir)/ruby/internal/has/warning.h
md5.o: $(hdrdir)/ruby/internal/intern/array.h
md5.o: $(hdrdir)/ruby/internal/intern/bignum.h
md5.o: $(hdrdir)/ruby/internal/intern/class.h
md5.o: $(hdrdir)/ruby/internal/intern/compar.h
md5.o: $(hdrdir)/ruby/internal/intern/complex.h
md5.o: $(hdrdir)/ruby/internal/intern/cont.h
md5.o: $(hdrdir)/ruby/internal/intern/dir.h
md5.o: $(hdrdir)/ruby/internal/intern/enum.h
md5.o: $(hdrdir)/ruby/internal/intern/enumerator.h
md5.o: $(hdrdir)/ruby/internal/intern/error.h
md5.o: $(hdrdir)/ruby/internal/intern/eval.h
md5.o: $(hdrdir)/ruby/internal/intern/file.h
md5.o: $(hdrdir)/ruby/internal/intern/gc.h
md5.o: $(hdrdir)/ruby/internal/intern/hash.h
md5.o: $(hdrdir)/ruby/internal/intern/io.h
md5.o: $(hdrdir)/ruby/internal/intern/load.h
md5.o: $(hdrdir)/ruby/internal/intern/marshal.h
md5.o: $(hdrdir)/ruby/internal/intern/numeric.h
md5.o: $(hdrdir)/ruby/internal/intern/object.h
md5.o: $(hdrdir)/ruby/internal/intern/parse.h
md5.o: $(hdrdir)/ruby/internal/intern/proc.h
md5.o: $(hdrdir)/ruby/internal/intern/process.h
md5.o: $(hdrdir)/ruby/internal/intern/random.h
md5.o: $(hdrdir)/ruby/internal/intern/range.h
md5.o: $(hdrdir)/ruby/internal/intern/rational.h
md5.o: $(hdrdir)/ruby/internal/intern/re.h
md5.o: $(hdrdir)/ruby/internal/intern/ruby.h
md5.o: $(hdrdir)/ruby/internal/intern/select.h
md5.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
md5.o: $(hdrdir)/ruby/internal/intern/signal.h
md5.o: $(hdrdir)/ruby/internal/intern/sprintf.h
md5.o: $(hdrdir)/ruby/internal/intern/string.h
md5.o: $(hdrdir)/ruby/internal/intern/struct.h
md5.o: $(hdrdir)/ruby/internal/intern/thread.h
md5.o: $(hdrdir)/ruby/internal/intern/time.h
md5.o: $(hdrdir)/ruby/internal/intern/variable.h
md5.o: $(hdrdir)/ruby/internal/intern/vm.h
md5.o: $(hdrdir)/ruby/internal/interpreter.h
md5.o: $(hdrdir)/ruby/internal/iterator.h
md5.o: $(hdrdir)/ruby/internal/memory.h
md5.o: $(hdrdir)/ruby/internal/method.h
md5.o: $(hdrdir)/ruby/internal/module.h
md5.o: $(hdrdir)/ruby/internal/newobj.h
md5.o: $(hdrdir)/ruby/internal/rgengc.h
md5.o: $(hdrdir)/ruby/internal/scan_args.h
md5.o: $(hdrdir)/ruby/internal/special_consts.h
md5.o: $(hdrdir)/ruby/internal/static_assert.h
md5.o: $(hdrdir)/ruby/internal/stdalign.h
md5.o: $(hdrdir)/ruby/internal/stdbool.h
md5.o: $(hdrdir)/ruby/internal/symbol.h
md5.o: $(hdrdir)/ruby/internal/token_paste.h
md5.o: $(hdrdir)/ruby/internal/value.h
md5.o: $(hdrdir)/ruby/internal/value_type.h
md5.o: $(hdrdir)/ruby/internal/variable.h
md5.o: $(hdrdir)/ruby/internal/warning_push.h
md5.o: $(hdrdir)/ruby/internal/xmalloc.h
md5.o: $(hdrdir)/ruby/missing.h
md5.o: $(hdrdir)/ruby/ruby.h
md5.o: $(hdrdir)/ruby/st.h
md5.o: $(hdrdir)/ruby/subst.h
md5.o: $(srcdir)/../defs.h
md5.o: md5.c
md5.o: md5.h
md5init.o: $(RUBY_EXTCONF_H)
md5init.o: $(arch_hdrdir)/ruby/config.h
md5init.o: $(hdrdir)/ruby.h
md5init.o: $(hdrdir)/ruby/assert.h
md5init.o: $(hdrdir)/ruby/backward.h
md5init.o: $(hdrdir)/ruby/backward/2/assume.h
md5init.o: $(hdrdir)/ruby/backward/2/attributes.h
md5init.o: $(hdrdir)/ruby/backward/2/bool.h
md5init.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
md5init.o: $(hdrdir)/ruby/backward/2/inttypes.h
md5init.o: $(hdrdir)/ruby/backward/2/limits.h
md5init.o: $(hdrdir)/ruby/backward/2/long_long.h
md5init.o: $(hdrdir)/ruby/backward/2/stdalign.h
md5init.o: $(hdrdir)/ruby/backward/2/stdarg.h
md5init.o: $(hdrdir)/ruby/defines.h
md5init.o: $(hdrdir)/ruby/intern.h
md5init.o: $(hdrdir)/ruby/internal/anyargs.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/char.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/double.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/int.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/long.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/short.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
md5init.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
md5init.o: $(hdrdir)/ruby/internal/assume.h
md5init.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
md5init.o: $(hdrdir)/ruby/internal/attr/artificial.h
md5init.o: $(hdrdir)/ruby/internal/attr/cold.h
md5init.o: $(hdrdir)/ruby/internal/attr/const.h
md5init.o: $(hdrdir)/ruby/internal/attr/constexpr.h
md5init.o: $(hdrdir)/ruby/internal/attr/deprecated.h
md5init.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
md5init.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
md5init.o: $(hdrdir)/ruby/internal/attr/error.h
md5init.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
md5init.o: $(hdrdir)/ruby/internal/attr/forceinline.h
md5init.o: $(hdrdir)/ruby/internal/attr/format.h
md5init.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
md5init.o: $(hdrdir)/ruby/internal/attr/noalias.h
md5init.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
md5init.o: $(hdrdir)/ruby/internal/attr/noexcept.h
md5init.o: $(hdrdir)/ruby/internal/attr/noinline.h
md5init.o: $(hdrdir)/ruby/internal/attr/nonnull.h
md5init.o: $(hdrdir)/ruby/internal/attr/noreturn.h
md5init.o: $(hdrdir)/ruby/internal/attr/pure.h
md5init.o: $(hdrdir)/ruby/internal/attr/restrict.h
md5init.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
md5init.o: $(hdrdir)/ruby/internal/attr/warning.h
md5init.o: $(hdrdir)/ruby/internal/attr/weakref.h
md5init.o: $(hdrdir)/ruby/internal/cast.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
md5init.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
md5init.o: $(hdrdir)/ruby/internal/compiler_since.h
md5init.o: $(hdrdir)/ruby/internal/config.h
md5init.o: $(hdrdir)/ruby/internal/constant_p.h
md5init.o: $(hdrdir)/ruby/internal/core.h
md5init.o: $(hdrdir)/ruby/internal/core/rarray.h
md5init.o: $(hdrdir)/ruby/internal/core/rbasic.h
md5init.o: $(hdrdir)/ruby/internal/core/rbignum.h
md5init.o: $(hdrdir)/ruby/internal/core/rclass.h
md5init.o: $(hdrdir)/ruby/internal/core/rdata.h
md5init.o: $(hdrdir)/ruby/internal/core/rfile.h
md5init.o: $(hdrdir)/ruby/internal/core/rhash.h
md5init.o: $(hdrdir)/ruby/internal/core/robject.h
md5init.o: $(hdrdir)/ruby/internal/core/rregexp.h
md5init.o: $(hdrdir)/ruby/internal/core/rstring.h
md5init.o: $(hdrdir)/ruby/internal/core/rstruct.h
md5init.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
md5init.o: $(hdrdir)/ruby/internal/ctype.h
md5init.o: $(hdrdir)/ruby/internal/dllexport.h
md5init.o: $(hdrdir)/ruby/internal/dosish.h
md5init.o: $(hdrdir)/ruby/internal/error.h
md5init.o: $(hdrdir)/ruby/internal/eval.h
md5init.o: $(hdrdir)/ruby/internal/event.h
md5init.o: $(hdrdir)/ruby/internal/fl_type.h
md5init.o: $(hdrdir)/ruby/internal/gc.h
md5init.o: $(hdrdir)/ruby/internal/glob.h
md5init.o: $(hdrdir)/ruby/internal/globals.h
md5init.o: $(hdrdir)/ruby/internal/has/attribute.h
md5init.o: $(hdrdir)/ruby/internal/has/builtin.h
md5init.o: $(hdrdir)/ruby/internal/has/c_attribute.h
md5init.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
md5init.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
md5init.o: $(hdrdir)/ruby/internal/has/extension.h
md5init.o: $(hdrdir)/ruby/internal/has/feature.h
md5init.o: $(hdrdir)/ruby/internal/has/warning.h
md5init.o: $(hdrdir)/ruby/internal/intern/array.h
md5init.o: $(hdrdir)/ruby/internal/intern/bignum.h
md5init.o: $(hdrdir)/ruby/internal/intern/class.h
md5init.o: $(hdrdir)/ruby/internal/intern/compar.h
md5init.o: $(hdrdir)/ruby/internal/intern/complex.h
md5init.o: $(hdrdir)/ruby/internal/intern/cont.h
md5init.o: $(hdrdir)/ruby/internal/intern/dir.h
md5init.o: $(hdrdir)/ruby/internal/intern/enum.h
md5init.o: $(hdrdir)/ruby/internal/intern/enumerator.h
md5init.o: $(hdrdir)/ruby/internal/intern/error.h
md5init.o: $(hdrdir)/ruby/internal/intern/eval.h
md5init.o: $(hdrdir)/ruby/internal/intern/file.h
md5init.o: $(hdrdir)/ruby/internal/intern/gc.h
md5init.o: $(hdrdir)/ruby/internal/intern/hash.h
md5init.o: $(hdrdir)/ruby/internal/intern/io.h
md5init.o: $(hdrdir)/ruby/internal/intern/load.h
md5init.o: $(hdrdir)/ruby/internal/intern/marshal.h
md5init.o: $(hdrdir)/ruby/internal/intern/numeric.h
md5init.o: $(hdrdir)/ruby/internal/intern/object.h
md5init.o: $(hdrdir)/ruby/internal/intern/parse.h
md5init.o: $(hdrdir)/ruby/internal/intern/proc.h
md5init.o: $(hdrdir)/ruby/internal/intern/process.h
md5init.o: $(hdrdir)/ruby/internal/intern/random.h
md5init.o: $(hdrdir)/ruby/internal/intern/range.h
md5init.o: $(hdrdir)/ruby/internal/intern/rational.h
md5init.o: $(hdrdir)/ruby/internal/intern/re.h
md5init.o: $(hdrdir)/ruby/internal/intern/ruby.h
md5init.o: $(hdrdir)/ruby/internal/intern/select.h
md5init.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
md5init.o: $(hdrdir)/ruby/internal/intern/signal.h
md5init.o: $(hdrdir)/ruby/internal/intern/sprintf.h
md5init.o: $(hdrdir)/ruby/internal/intern/string.h
md5init.o: $(hdrdir)/ruby/internal/intern/struct.h
md5init.o: $(hdrdir)/ruby/internal/intern/thread.h
md5init.o: $(hdrdir)/ruby/internal/intern/time.h
md5init.o: $(hdrdir)/ruby/internal/intern/variable.h
md5init.o: $(hdrdir)/ruby/internal/intern/vm.h
md5init.o: $(hdrdir)/ruby/internal/interpreter.h
md5init.o: $(hdrdir)/ruby/internal/iterator.h
md5init.o: $(hdrdir)/ruby/internal/memory.h
md5init.o: $(hdrdir)/ruby/internal/method.h
md5init.o: $(hdrdir)/ruby/internal/module.h
md5init.o: $(hdrdir)/ruby/internal/newobj.h
md5init.o: $(hdrdir)/ruby/internal/rgengc.h
md5init.o: $(hdrdir)/ruby/internal/scan_args.h
md5init.o: $(hdrdir)/ruby/internal/special_consts.h
md5init.o: $(hdrdir)/ruby/internal/static_assert.h
md5init.o: $(hdrdir)/ruby/internal/stdalign.h
md5init.o: $(hdrdir)/ruby/internal/stdbool.h
md5init.o: $(hdrdir)/ruby/internal/symbol.h
md5init.o: $(hdrdir)/ruby/internal/token_paste.h
md5init.o: $(hdrdir)/ruby/internal/value.h
md5init.o: $(hdrdir)/ruby/internal/value_type.h
md5init.o: $(hdrdir)/ruby/internal/variable.h
md5init.o: $(hdrdir)/ruby/internal/warning_push.h
md5init.o: $(hdrdir)/ruby/internal/xmalloc.h
md5init.o: $(hdrdir)/ruby/missing.h
md5init.o: $(hdrdir)/ruby/ruby.h
md5init.o: $(hdrdir)/ruby/st.h
md5init.o: $(hdrdir)/ruby/subst.h
md5init.o: $(srcdir)/../defs.h
md5init.o: $(srcdir)/../digest.h
md5init.o: md5.h
md5init.o: md5init.c
# AUTOGENERATED DEPENDENCIES END
