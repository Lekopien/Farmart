
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
srcdir = $(top_srcdir)/ext/digest/sha2
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
ORIG_SRCS = sha2.c sha2init.c
SRCS = $(ORIG_SRCS) sha2init.c sha2.c
OBJS = sha2init.o sha2.o
HDRS = $(srcdir)/sha2.h $(srcdir)/sha2cc.h
LOCAL_HDRS = 
TARGET = sha2
TARGET_NAME = sha2
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
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.digest.time
do-install-rb-default: $(RUBYLIBDIR)/sha2.rb
$(RUBYLIBDIR)/sha2.rb: $(srcdir)/lib/sha2.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.digest.time
	$(Q) $(COPY) $(srcdir)/lib/sha2.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/sha2.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default sha2 libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.digest.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/$(arch)/.digest.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.digest.time:
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.digest.time
	$(ECHO) linking shared-object digest/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

sha2.o: sha2.c sha2.h $(srcdir)/../defs.h
sha2init.o: $(LOCAL_HDRS)

# AUTOGENERATED DEPENDENCIES START
sha2.o: $(RUBY_EXTCONF_H)
sha2.o: $(arch_hdrdir)/ruby/config.h
sha2.o: $(hdrdir)/ruby.h
sha2.o: $(hdrdir)/ruby/assert.h
sha2.o: $(hdrdir)/ruby/backward.h
sha2.o: $(hdrdir)/ruby/backward/2/assume.h
sha2.o: $(hdrdir)/ruby/backward/2/attributes.h
sha2.o: $(hdrdir)/ruby/backward/2/bool.h
sha2.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
sha2.o: $(hdrdir)/ruby/backward/2/inttypes.h
sha2.o: $(hdrdir)/ruby/backward/2/limits.h
sha2.o: $(hdrdir)/ruby/backward/2/long_long.h
sha2.o: $(hdrdir)/ruby/backward/2/stdalign.h
sha2.o: $(hdrdir)/ruby/backward/2/stdarg.h
sha2.o: $(hdrdir)/ruby/defines.h
sha2.o: $(hdrdir)/ruby/intern.h
sha2.o: $(hdrdir)/ruby/internal/anyargs.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/char.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/double.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/int.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/long.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/short.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
sha2.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
sha2.o: $(hdrdir)/ruby/internal/assume.h
sha2.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
sha2.o: $(hdrdir)/ruby/internal/attr/artificial.h
sha2.o: $(hdrdir)/ruby/internal/attr/cold.h
sha2.o: $(hdrdir)/ruby/internal/attr/const.h
sha2.o: $(hdrdir)/ruby/internal/attr/constexpr.h
sha2.o: $(hdrdir)/ruby/internal/attr/deprecated.h
sha2.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
sha2.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
sha2.o: $(hdrdir)/ruby/internal/attr/error.h
sha2.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
sha2.o: $(hdrdir)/ruby/internal/attr/forceinline.h
sha2.o: $(hdrdir)/ruby/internal/attr/format.h
sha2.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
sha2.o: $(hdrdir)/ruby/internal/attr/noalias.h
sha2.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
sha2.o: $(hdrdir)/ruby/internal/attr/noexcept.h
sha2.o: $(hdrdir)/ruby/internal/attr/noinline.h
sha2.o: $(hdrdir)/ruby/internal/attr/nonnull.h
sha2.o: $(hdrdir)/ruby/internal/attr/noreturn.h
sha2.o: $(hdrdir)/ruby/internal/attr/pure.h
sha2.o: $(hdrdir)/ruby/internal/attr/restrict.h
sha2.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
sha2.o: $(hdrdir)/ruby/internal/attr/warning.h
sha2.o: $(hdrdir)/ruby/internal/attr/weakref.h
sha2.o: $(hdrdir)/ruby/internal/cast.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
sha2.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
sha2.o: $(hdrdir)/ruby/internal/compiler_since.h
sha2.o: $(hdrdir)/ruby/internal/config.h
sha2.o: $(hdrdir)/ruby/internal/constant_p.h
sha2.o: $(hdrdir)/ruby/internal/core.h
sha2.o: $(hdrdir)/ruby/internal/core/rarray.h
sha2.o: $(hdrdir)/ruby/internal/core/rbasic.h
sha2.o: $(hdrdir)/ruby/internal/core/rbignum.h
sha2.o: $(hdrdir)/ruby/internal/core/rclass.h
sha2.o: $(hdrdir)/ruby/internal/core/rdata.h
sha2.o: $(hdrdir)/ruby/internal/core/rfile.h
sha2.o: $(hdrdir)/ruby/internal/core/rhash.h
sha2.o: $(hdrdir)/ruby/internal/core/robject.h
sha2.o: $(hdrdir)/ruby/internal/core/rregexp.h
sha2.o: $(hdrdir)/ruby/internal/core/rstring.h
sha2.o: $(hdrdir)/ruby/internal/core/rstruct.h
sha2.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
sha2.o: $(hdrdir)/ruby/internal/ctype.h
sha2.o: $(hdrdir)/ruby/internal/dllexport.h
sha2.o: $(hdrdir)/ruby/internal/dosish.h
sha2.o: $(hdrdir)/ruby/internal/error.h
sha2.o: $(hdrdir)/ruby/internal/eval.h
sha2.o: $(hdrdir)/ruby/internal/event.h
sha2.o: $(hdrdir)/ruby/internal/fl_type.h
sha2.o: $(hdrdir)/ruby/internal/gc.h
sha2.o: $(hdrdir)/ruby/internal/glob.h
sha2.o: $(hdrdir)/ruby/internal/globals.h
sha2.o: $(hdrdir)/ruby/internal/has/attribute.h
sha2.o: $(hdrdir)/ruby/internal/has/builtin.h
sha2.o: $(hdrdir)/ruby/internal/has/c_attribute.h
sha2.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
sha2.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
sha2.o: $(hdrdir)/ruby/internal/has/extension.h
sha2.o: $(hdrdir)/ruby/internal/has/feature.h
sha2.o: $(hdrdir)/ruby/internal/has/warning.h
sha2.o: $(hdrdir)/ruby/internal/intern/array.h
sha2.o: $(hdrdir)/ruby/internal/intern/bignum.h
sha2.o: $(hdrdir)/ruby/internal/intern/class.h
sha2.o: $(hdrdir)/ruby/internal/intern/compar.h
sha2.o: $(hdrdir)/ruby/internal/intern/complex.h
sha2.o: $(hdrdir)/ruby/internal/intern/cont.h
sha2.o: $(hdrdir)/ruby/internal/intern/dir.h
sha2.o: $(hdrdir)/ruby/internal/intern/enum.h
sha2.o: $(hdrdir)/ruby/internal/intern/enumerator.h
sha2.o: $(hdrdir)/ruby/internal/intern/error.h
sha2.o: $(hdrdir)/ruby/internal/intern/eval.h
sha2.o: $(hdrdir)/ruby/internal/intern/file.h
sha2.o: $(hdrdir)/ruby/internal/intern/gc.h
sha2.o: $(hdrdir)/ruby/internal/intern/hash.h
sha2.o: $(hdrdir)/ruby/internal/intern/io.h
sha2.o: $(hdrdir)/ruby/internal/intern/load.h
sha2.o: $(hdrdir)/ruby/internal/intern/marshal.h
sha2.o: $(hdrdir)/ruby/internal/intern/numeric.h
sha2.o: $(hdrdir)/ruby/internal/intern/object.h
sha2.o: $(hdrdir)/ruby/internal/intern/parse.h
sha2.o: $(hdrdir)/ruby/internal/intern/proc.h
sha2.o: $(hdrdir)/ruby/internal/intern/process.h
sha2.o: $(hdrdir)/ruby/internal/intern/random.h
sha2.o: $(hdrdir)/ruby/internal/intern/range.h
sha2.o: $(hdrdir)/ruby/internal/intern/rational.h
sha2.o: $(hdrdir)/ruby/internal/intern/re.h
sha2.o: $(hdrdir)/ruby/internal/intern/ruby.h
sha2.o: $(hdrdir)/ruby/internal/intern/select.h
sha2.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
sha2.o: $(hdrdir)/ruby/internal/intern/signal.h
sha2.o: $(hdrdir)/ruby/internal/intern/sprintf.h
sha2.o: $(hdrdir)/ruby/internal/intern/string.h
sha2.o: $(hdrdir)/ruby/internal/intern/struct.h
sha2.o: $(hdrdir)/ruby/internal/intern/thread.h
sha2.o: $(hdrdir)/ruby/internal/intern/time.h
sha2.o: $(hdrdir)/ruby/internal/intern/variable.h
sha2.o: $(hdrdir)/ruby/internal/intern/vm.h
sha2.o: $(hdrdir)/ruby/internal/interpreter.h
sha2.o: $(hdrdir)/ruby/internal/iterator.h
sha2.o: $(hdrdir)/ruby/internal/memory.h
sha2.o: $(hdrdir)/ruby/internal/method.h
sha2.o: $(hdrdir)/ruby/internal/module.h
sha2.o: $(hdrdir)/ruby/internal/newobj.h
sha2.o: $(hdrdir)/ruby/internal/rgengc.h
sha2.o: $(hdrdir)/ruby/internal/scan_args.h
sha2.o: $(hdrdir)/ruby/internal/special_consts.h
sha2.o: $(hdrdir)/ruby/internal/static_assert.h
sha2.o: $(hdrdir)/ruby/internal/stdalign.h
sha2.o: $(hdrdir)/ruby/internal/stdbool.h
sha2.o: $(hdrdir)/ruby/internal/symbol.h
sha2.o: $(hdrdir)/ruby/internal/token_paste.h
sha2.o: $(hdrdir)/ruby/internal/value.h
sha2.o: $(hdrdir)/ruby/internal/value_type.h
sha2.o: $(hdrdir)/ruby/internal/variable.h
sha2.o: $(hdrdir)/ruby/internal/warning_push.h
sha2.o: $(hdrdir)/ruby/internal/xmalloc.h
sha2.o: $(hdrdir)/ruby/missing.h
sha2.o: $(hdrdir)/ruby/ruby.h
sha2.o: $(hdrdir)/ruby/st.h
sha2.o: $(hdrdir)/ruby/subst.h
sha2.o: $(srcdir)/../defs.h
sha2.o: sha2.c
sha2.o: sha2.h
sha2init.o: $(RUBY_EXTCONF_H)
sha2init.o: $(arch_hdrdir)/ruby/config.h
sha2init.o: $(hdrdir)/ruby.h
sha2init.o: $(hdrdir)/ruby/assert.h
sha2init.o: $(hdrdir)/ruby/backward.h
sha2init.o: $(hdrdir)/ruby/backward/2/assume.h
sha2init.o: $(hdrdir)/ruby/backward/2/attributes.h
sha2init.o: $(hdrdir)/ruby/backward/2/bool.h
sha2init.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
sha2init.o: $(hdrdir)/ruby/backward/2/inttypes.h
sha2init.o: $(hdrdir)/ruby/backward/2/limits.h
sha2init.o: $(hdrdir)/ruby/backward/2/long_long.h
sha2init.o: $(hdrdir)/ruby/backward/2/stdalign.h
sha2init.o: $(hdrdir)/ruby/backward/2/stdarg.h
sha2init.o: $(hdrdir)/ruby/defines.h
sha2init.o: $(hdrdir)/ruby/intern.h
sha2init.o: $(hdrdir)/ruby/internal/anyargs.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/char.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/double.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/int.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/long.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/short.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
sha2init.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
sha2init.o: $(hdrdir)/ruby/internal/assume.h
sha2init.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
sha2init.o: $(hdrdir)/ruby/internal/attr/artificial.h
sha2init.o: $(hdrdir)/ruby/internal/attr/cold.h
sha2init.o: $(hdrdir)/ruby/internal/attr/const.h
sha2init.o: $(hdrdir)/ruby/internal/attr/constexpr.h
sha2init.o: $(hdrdir)/ruby/internal/attr/deprecated.h
sha2init.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
sha2init.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
sha2init.o: $(hdrdir)/ruby/internal/attr/error.h
sha2init.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
sha2init.o: $(hdrdir)/ruby/internal/attr/forceinline.h
sha2init.o: $(hdrdir)/ruby/internal/attr/format.h
sha2init.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
sha2init.o: $(hdrdir)/ruby/internal/attr/noalias.h
sha2init.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
sha2init.o: $(hdrdir)/ruby/internal/attr/noexcept.h
sha2init.o: $(hdrdir)/ruby/internal/attr/noinline.h
sha2init.o: $(hdrdir)/ruby/internal/attr/nonnull.h
sha2init.o: $(hdrdir)/ruby/internal/attr/noreturn.h
sha2init.o: $(hdrdir)/ruby/internal/attr/pure.h
sha2init.o: $(hdrdir)/ruby/internal/attr/restrict.h
sha2init.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
sha2init.o: $(hdrdir)/ruby/internal/attr/warning.h
sha2init.o: $(hdrdir)/ruby/internal/attr/weakref.h
sha2init.o: $(hdrdir)/ruby/internal/cast.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
sha2init.o: $(hdrdir)/ruby/internal/compiler_since.h
sha2init.o: $(hdrdir)/ruby/internal/config.h
sha2init.o: $(hdrdir)/ruby/internal/constant_p.h
sha2init.o: $(hdrdir)/ruby/internal/core.h
sha2init.o: $(hdrdir)/ruby/internal/core/rarray.h
sha2init.o: $(hdrdir)/ruby/internal/core/rbasic.h
sha2init.o: $(hdrdir)/ruby/internal/core/rbignum.h
sha2init.o: $(hdrdir)/ruby/internal/core/rclass.h
sha2init.o: $(hdrdir)/ruby/internal/core/rdata.h
sha2init.o: $(hdrdir)/ruby/internal/core/rfile.h
sha2init.o: $(hdrdir)/ruby/internal/core/rhash.h
sha2init.o: $(hdrdir)/ruby/internal/core/robject.h
sha2init.o: $(hdrdir)/ruby/internal/core/rregexp.h
sha2init.o: $(hdrdir)/ruby/internal/core/rstring.h
sha2init.o: $(hdrdir)/ruby/internal/core/rstruct.h
sha2init.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
sha2init.o: $(hdrdir)/ruby/internal/ctype.h
sha2init.o: $(hdrdir)/ruby/internal/dllexport.h
sha2init.o: $(hdrdir)/ruby/internal/dosish.h
sha2init.o: $(hdrdir)/ruby/internal/error.h
sha2init.o: $(hdrdir)/ruby/internal/eval.h
sha2init.o: $(hdrdir)/ruby/internal/event.h
sha2init.o: $(hdrdir)/ruby/internal/fl_type.h
sha2init.o: $(hdrdir)/ruby/internal/gc.h
sha2init.o: $(hdrdir)/ruby/internal/glob.h
sha2init.o: $(hdrdir)/ruby/internal/globals.h
sha2init.o: $(hdrdir)/ruby/internal/has/attribute.h
sha2init.o: $(hdrdir)/ruby/internal/has/builtin.h
sha2init.o: $(hdrdir)/ruby/internal/has/c_attribute.h
sha2init.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
sha2init.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
sha2init.o: $(hdrdir)/ruby/internal/has/extension.h
sha2init.o: $(hdrdir)/ruby/internal/has/feature.h
sha2init.o: $(hdrdir)/ruby/internal/has/warning.h
sha2init.o: $(hdrdir)/ruby/internal/intern/array.h
sha2init.o: $(hdrdir)/ruby/internal/intern/bignum.h
sha2init.o: $(hdrdir)/ruby/internal/intern/class.h
sha2init.o: $(hdrdir)/ruby/internal/intern/compar.h
sha2init.o: $(hdrdir)/ruby/internal/intern/complex.h
sha2init.o: $(hdrdir)/ruby/internal/intern/cont.h
sha2init.o: $(hdrdir)/ruby/internal/intern/dir.h
sha2init.o: $(hdrdir)/ruby/internal/intern/enum.h
sha2init.o: $(hdrdir)/ruby/internal/intern/enumerator.h
sha2init.o: $(hdrdir)/ruby/internal/intern/error.h
sha2init.o: $(hdrdir)/ruby/internal/intern/eval.h
sha2init.o: $(hdrdir)/ruby/internal/intern/file.h
sha2init.o: $(hdrdir)/ruby/internal/intern/gc.h
sha2init.o: $(hdrdir)/ruby/internal/intern/hash.h
sha2init.o: $(hdrdir)/ruby/internal/intern/io.h
sha2init.o: $(hdrdir)/ruby/internal/intern/load.h
sha2init.o: $(hdrdir)/ruby/internal/intern/marshal.h
sha2init.o: $(hdrdir)/ruby/internal/intern/numeric.h
sha2init.o: $(hdrdir)/ruby/internal/intern/object.h
sha2init.o: $(hdrdir)/ruby/internal/intern/parse.h
sha2init.o: $(hdrdir)/ruby/internal/intern/proc.h
sha2init.o: $(hdrdir)/ruby/internal/intern/process.h
sha2init.o: $(hdrdir)/ruby/internal/intern/random.h
sha2init.o: $(hdrdir)/ruby/internal/intern/range.h
sha2init.o: $(hdrdir)/ruby/internal/intern/rational.h
sha2init.o: $(hdrdir)/ruby/internal/intern/re.h
sha2init.o: $(hdrdir)/ruby/internal/intern/ruby.h
sha2init.o: $(hdrdir)/ruby/internal/intern/select.h
sha2init.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
sha2init.o: $(hdrdir)/ruby/internal/intern/signal.h
sha2init.o: $(hdrdir)/ruby/internal/intern/sprintf.h
sha2init.o: $(hdrdir)/ruby/internal/intern/string.h
sha2init.o: $(hdrdir)/ruby/internal/intern/struct.h
sha2init.o: $(hdrdir)/ruby/internal/intern/thread.h
sha2init.o: $(hdrdir)/ruby/internal/intern/time.h
sha2init.o: $(hdrdir)/ruby/internal/intern/variable.h
sha2init.o: $(hdrdir)/ruby/internal/intern/vm.h
sha2init.o: $(hdrdir)/ruby/internal/interpreter.h
sha2init.o: $(hdrdir)/ruby/internal/iterator.h
sha2init.o: $(hdrdir)/ruby/internal/memory.h
sha2init.o: $(hdrdir)/ruby/internal/method.h
sha2init.o: $(hdrdir)/ruby/internal/module.h
sha2init.o: $(hdrdir)/ruby/internal/newobj.h
sha2init.o: $(hdrdir)/ruby/internal/rgengc.h
sha2init.o: $(hdrdir)/ruby/internal/scan_args.h
sha2init.o: $(hdrdir)/ruby/internal/special_consts.h
sha2init.o: $(hdrdir)/ruby/internal/static_assert.h
sha2init.o: $(hdrdir)/ruby/internal/stdalign.h
sha2init.o: $(hdrdir)/ruby/internal/stdbool.h
sha2init.o: $(hdrdir)/ruby/internal/symbol.h
sha2init.o: $(hdrdir)/ruby/internal/token_paste.h
sha2init.o: $(hdrdir)/ruby/internal/value.h
sha2init.o: $(hdrdir)/ruby/internal/value_type.h
sha2init.o: $(hdrdir)/ruby/internal/variable.h
sha2init.o: $(hdrdir)/ruby/internal/warning_push.h
sha2init.o: $(hdrdir)/ruby/internal/xmalloc.h
sha2init.o: $(hdrdir)/ruby/missing.h
sha2init.o: $(hdrdir)/ruby/ruby.h
sha2init.o: $(hdrdir)/ruby/st.h
sha2init.o: $(hdrdir)/ruby/subst.h
sha2init.o: $(srcdir)/../digest.h
sha2init.o: sha2.h
sha2init.o: sha2init.c
# AUTOGENERATED DEPENDENCIES END
