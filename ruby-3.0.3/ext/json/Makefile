
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
srcdir = $(top_srcdir)/ext/json
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
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = 
SRCS = $(ORIG_SRCS) 
OBJS = 
HDRS = 
LOCAL_HDRS = 
TARGET = 
TARGET_NAME = 
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = 
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
CLEANLIBS     = 
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

install-so: Makefile
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
do-install-rb-default: $(RUBYLIBDIR)/json/add/bigdecimal.rb
$(RUBYLIBDIR)/json/add/bigdecimal.rb: $(srcdir)/lib/json/add/bigdecimal.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/bigdecimal.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/bigdecimal.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/complex.rb
$(RUBYLIBDIR)/json/add/complex.rb: $(srcdir)/lib/json/add/complex.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/complex.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/complex.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/core.rb
$(RUBYLIBDIR)/json/add/core.rb: $(srcdir)/lib/json/add/core.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/core.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/core.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/date.rb
$(RUBYLIBDIR)/json/add/date.rb: $(srcdir)/lib/json/add/date.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/date.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/date.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/date_time.rb
$(RUBYLIBDIR)/json/add/date_time.rb: $(srcdir)/lib/json/add/date_time.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/date_time.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/date_time.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/exception.rb
$(RUBYLIBDIR)/json/add/exception.rb: $(srcdir)/lib/json/add/exception.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/exception.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/exception.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/ostruct.rb
$(RUBYLIBDIR)/json/add/ostruct.rb: $(srcdir)/lib/json/add/ostruct.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/ostruct.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/ostruct.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/range.rb
$(RUBYLIBDIR)/json/add/range.rb: $(srcdir)/lib/json/add/range.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/range.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/range.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/rational.rb
$(RUBYLIBDIR)/json/add/rational.rb: $(srcdir)/lib/json/add/rational.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/rational.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/rational.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/regexp.rb
$(RUBYLIBDIR)/json/add/regexp.rb: $(srcdir)/lib/json/add/regexp.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/regexp.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/regexp.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/set.rb
$(RUBYLIBDIR)/json/add/set.rb: $(srcdir)/lib/json/add/set.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/set.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/set.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/struct.rb
$(RUBYLIBDIR)/json/add/struct.rb: $(srcdir)/lib/json/add/struct.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/struct.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/struct.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/symbol.rb
$(RUBYLIBDIR)/json/add/symbol.rb: $(srcdir)/lib/json/add/symbol.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/symbol.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/symbol.rb
do-install-rb-default: $(RUBYLIBDIR)/json/add/time.rb
$(RUBYLIBDIR)/json/add/time.rb: $(srcdir)/lib/json/add/time.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	$(Q) $(COPY) $(srcdir)/lib/json/add/time.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/add/time.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
do-install-rb-default: $(RUBYLIBDIR)/json/common.rb
$(RUBYLIBDIR)/json/common.rb: $(srcdir)/lib/json/common.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/json/common.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/common.rb
do-install-rb-default: $(RUBYLIBDIR)/json/ext.rb
$(RUBYLIBDIR)/json/ext.rb: $(srcdir)/lib/json/ext.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/json/ext.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/ext.rb
do-install-rb-default: $(RUBYLIBDIR)/json/generic_object.rb
$(RUBYLIBDIR)/json/generic_object.rb: $(srcdir)/lib/json/generic_object.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/json/generic_object.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/generic_object.rb
do-install-rb-default: $(RUBYLIBDIR)/json/version.rb
$(RUBYLIBDIR)/json/version.rb: $(srcdir)/lib/json/version.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/json/version.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json/version.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/json.rb
$(RUBYLIBDIR)/json.rb: $(srcdir)/lib/json.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/json.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/json.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default  libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/json/add 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/json 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.-.add.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/json/add
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.json.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/json
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

