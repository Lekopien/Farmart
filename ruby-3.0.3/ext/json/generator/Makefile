
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
srcdir = $(top_srcdir)/ext/json/generator
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
target_prefix = /json/ext
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = generator.c
SRCS = $(ORIG_SRCS) 
OBJS = generator.o
HDRS = $(srcdir)/generator.h
LOCAL_HDRS = 
TARGET = generator
TARGET_NAME = generator
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.json.-.ext.time
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
$(TIMESTAMP_DIR)/$(arch)/.json.-.ext.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.json.-.ext.time
	$(ECHO) linking shared-object json/ext/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

$(OBJS): $(ruby_headers)
generator.o: generator.c generator.h $(srcdir)/../fbuffer/fbuffer.h

# AUTOGENERATED DEPENDENCIES START
generator.o: $(RUBY_EXTCONF_H)
generator.o: $(arch_hdrdir)/ruby/config.h
generator.o: $(hdrdir)/ruby.h
generator.o: $(hdrdir)/ruby/internal/anyargs.h
generator.o: $(hdrdir)/ruby/internal/arithmetic.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/char.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/double.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/int.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/long.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/short.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
generator.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
generator.o: $(hdrdir)/ruby/internal/assume.h
generator.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
generator.o: $(hdrdir)/ruby/internal/attr/artificial.h
generator.o: $(hdrdir)/ruby/internal/attr/cold.h
generator.o: $(hdrdir)/ruby/internal/attr/const.h
generator.o: $(hdrdir)/ruby/internal/attr/constexpr.h
generator.o: $(hdrdir)/ruby/internal/attr/deprecated.h
generator.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
generator.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
generator.o: $(hdrdir)/ruby/internal/attr/error.h
generator.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
generator.o: $(hdrdir)/ruby/internal/attr/forceinline.h
generator.o: $(hdrdir)/ruby/internal/attr/format.h
generator.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
generator.o: $(hdrdir)/ruby/internal/attr/noalias.h
generator.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
generator.o: $(hdrdir)/ruby/internal/attr/noexcept.h
generator.o: $(hdrdir)/ruby/internal/attr/noinline.h
generator.o: $(hdrdir)/ruby/internal/attr/nonnull.h
generator.o: $(hdrdir)/ruby/internal/attr/noreturn.h
generator.o: $(hdrdir)/ruby/internal/attr/pure.h
generator.o: $(hdrdir)/ruby/internal/attr/restrict.h
generator.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
generator.o: $(hdrdir)/ruby/internal/attr/warning.h
generator.o: $(hdrdir)/ruby/internal/attr/weakref.h
generator.o: $(hdrdir)/ruby/internal/cast.h
generator.o: $(hdrdir)/ruby/internal/compiler_is.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
generator.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
generator.o: $(hdrdir)/ruby/internal/compiler_since.h
generator.o: $(hdrdir)/ruby/internal/config.h
generator.o: $(hdrdir)/ruby/internal/constant_p.h
generator.o: $(hdrdir)/ruby/internal/core.h
generator.o: $(hdrdir)/ruby/internal/core/rarray.h
generator.o: $(hdrdir)/ruby/internal/core/rbasic.h
generator.o: $(hdrdir)/ruby/internal/core/rbignum.h
generator.o: $(hdrdir)/ruby/internal/core/rclass.h
generator.o: $(hdrdir)/ruby/internal/core/rdata.h
generator.o: $(hdrdir)/ruby/internal/core/rfile.h
generator.o: $(hdrdir)/ruby/internal/core/rhash.h
generator.o: $(hdrdir)/ruby/internal/core/rmatch.h
generator.o: $(hdrdir)/ruby/internal/core/robject.h
generator.o: $(hdrdir)/ruby/internal/core/rregexp.h
generator.o: $(hdrdir)/ruby/internal/core/rstring.h
generator.o: $(hdrdir)/ruby/internal/core/rstruct.h
generator.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
generator.o: $(hdrdir)/ruby/internal/ctype.h
generator.o: $(hdrdir)/ruby/internal/dllexport.h
generator.o: $(hdrdir)/ruby/internal/dosish.h
generator.o: $(hdrdir)/ruby/internal/error.h
generator.o: $(hdrdir)/ruby/internal/eval.h
generator.o: $(hdrdir)/ruby/internal/event.h
generator.o: $(hdrdir)/ruby/internal/fl_type.h
generator.o: $(hdrdir)/ruby/internal/gc.h
generator.o: $(hdrdir)/ruby/internal/glob.h
generator.o: $(hdrdir)/ruby/internal/globals.h
generator.o: $(hdrdir)/ruby/internal/has/attribute.h
generator.o: $(hdrdir)/ruby/internal/has/builtin.h
generator.o: $(hdrdir)/ruby/internal/has/c_attribute.h
generator.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
generator.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
generator.o: $(hdrdir)/ruby/internal/has/extension.h
generator.o: $(hdrdir)/ruby/internal/has/feature.h
generator.o: $(hdrdir)/ruby/internal/has/warning.h
generator.o: $(hdrdir)/ruby/internal/intern/array.h
generator.o: $(hdrdir)/ruby/internal/intern/bignum.h
generator.o: $(hdrdir)/ruby/internal/intern/class.h
generator.o: $(hdrdir)/ruby/internal/intern/compar.h
generator.o: $(hdrdir)/ruby/internal/intern/complex.h
generator.o: $(hdrdir)/ruby/internal/intern/cont.h
generator.o: $(hdrdir)/ruby/internal/intern/dir.h
generator.o: $(hdrdir)/ruby/internal/intern/enum.h
generator.o: $(hdrdir)/ruby/internal/intern/enumerator.h
generator.o: $(hdrdir)/ruby/internal/intern/error.h
generator.o: $(hdrdir)/ruby/internal/intern/eval.h
generator.o: $(hdrdir)/ruby/internal/intern/file.h
generator.o: $(hdrdir)/ruby/internal/intern/gc.h
generator.o: $(hdrdir)/ruby/internal/intern/hash.h
generator.o: $(hdrdir)/ruby/internal/intern/io.h
generator.o: $(hdrdir)/ruby/internal/intern/load.h
generator.o: $(hdrdir)/ruby/internal/intern/marshal.h
generator.o: $(hdrdir)/ruby/internal/intern/numeric.h
generator.o: $(hdrdir)/ruby/internal/intern/object.h
generator.o: $(hdrdir)/ruby/internal/intern/parse.h
generator.o: $(hdrdir)/ruby/internal/intern/proc.h
generator.o: $(hdrdir)/ruby/internal/intern/process.h
generator.o: $(hdrdir)/ruby/internal/intern/random.h
generator.o: $(hdrdir)/ruby/internal/intern/range.h
generator.o: $(hdrdir)/ruby/internal/intern/rational.h
generator.o: $(hdrdir)/ruby/internal/intern/re.h
generator.o: $(hdrdir)/ruby/internal/intern/ruby.h
generator.o: $(hdrdir)/ruby/internal/intern/select.h
generator.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
generator.o: $(hdrdir)/ruby/internal/intern/signal.h
generator.o: $(hdrdir)/ruby/internal/intern/sprintf.h
generator.o: $(hdrdir)/ruby/internal/intern/string.h
generator.o: $(hdrdir)/ruby/internal/intern/struct.h
generator.o: $(hdrdir)/ruby/internal/intern/thread.h
generator.o: $(hdrdir)/ruby/internal/intern/time.h
generator.o: $(hdrdir)/ruby/internal/intern/variable.h
generator.o: $(hdrdir)/ruby/internal/intern/vm.h
generator.o: $(hdrdir)/ruby/internal/interpreter.h
generator.o: $(hdrdir)/ruby/internal/iterator.h
generator.o: $(hdrdir)/ruby/internal/memory.h
generator.o: $(hdrdir)/ruby/internal/method.h
generator.o: $(hdrdir)/ruby/internal/module.h
generator.o: $(hdrdir)/ruby/internal/newobj.h
generator.o: $(hdrdir)/ruby/internal/rgengc.h
generator.o: $(hdrdir)/ruby/internal/scan_args.h
generator.o: $(hdrdir)/ruby/internal/special_consts.h
generator.o: $(hdrdir)/ruby/internal/static_assert.h
generator.o: $(hdrdir)/ruby/internal/stdalign.h
generator.o: $(hdrdir)/ruby/internal/stdbool.h
generator.o: $(hdrdir)/ruby/internal/symbol.h
generator.o: $(hdrdir)/ruby/internal/token_paste.h
generator.o: $(hdrdir)/ruby/internal/value.h
generator.o: $(hdrdir)/ruby/internal/value_type.h
generator.o: $(hdrdir)/ruby/internal/variable.h
generator.o: $(hdrdir)/ruby/internal/warning_push.h
generator.o: $(hdrdir)/ruby/internal/xmalloc.h
generator.o: $(hdrdir)/ruby/assert.h
generator.o: $(hdrdir)/ruby/backward.h
generator.o: $(hdrdir)/ruby/backward/2/assume.h
generator.o: $(hdrdir)/ruby/backward/2/attributes.h
generator.o: $(hdrdir)/ruby/backward/2/bool.h
generator.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
generator.o: $(hdrdir)/ruby/backward/2/inttypes.h
generator.o: $(hdrdir)/ruby/backward/2/limits.h
generator.o: $(hdrdir)/ruby/backward/2/long_long.h
generator.o: $(hdrdir)/ruby/backward/2/stdalign.h
generator.o: $(hdrdir)/ruby/backward/2/stdarg.h
generator.o: $(hdrdir)/ruby/defines.h
generator.o: $(hdrdir)/ruby/encoding.h
generator.o: $(hdrdir)/ruby/intern.h
generator.o: $(hdrdir)/ruby/missing.h
generator.o: $(hdrdir)/ruby/onigmo.h
generator.o: $(hdrdir)/ruby/oniguruma.h
generator.o: $(hdrdir)/ruby/re.h
generator.o: $(hdrdir)/ruby/regex.h
generator.o: $(hdrdir)/ruby/ruby.h
generator.o: $(hdrdir)/ruby/st.h
generator.o: $(hdrdir)/ruby/subst.h
generator.o: $(srcdir)/../fbuffer/fbuffer.h
generator.o: generator.c
generator.o: generator.h
# AUTOGENERATED DEPENDENCIES END
