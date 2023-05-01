
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
srcdir = $(top_srcdir)/ext/psych
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
LIBS =  -lyaml  -lm   -lc
ORIG_SRCS = psych.c psych_emitter.c psych_parser.c psych_to_ruby.c psych_yaml_tree.c
SRCS = $(ORIG_SRCS) 
OBJS = psych.o psych_emitter.o psych_parser.o psych_to_ruby.o psych_yaml_tree.o
HDRS = $(srcdir)/psych.h $(srcdir)/psych_emitter.h $(srcdir)/psych_parser.h $(srcdir)/psych_to_ruby.h $(srcdir)/psych_yaml_tree.h
LOCAL_HDRS = 
TARGET = psych
TARGET_NAME = psych
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
YAML_H =


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
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
do-install-rb-default: $(RUBYLIBDIR)/psych/class_loader.rb
$(RUBYLIBDIR)/psych/class_loader.rb: $(srcdir)/lib/psych/class_loader.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/class_loader.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/class_loader.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/coder.rb
$(RUBYLIBDIR)/psych/coder.rb: $(srcdir)/lib/psych/coder.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/coder.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/coder.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/core_ext.rb
$(RUBYLIBDIR)/psych/core_ext.rb: $(srcdir)/lib/psych/core_ext.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/core_ext.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/core_ext.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/exception.rb
$(RUBYLIBDIR)/psych/exception.rb: $(srcdir)/lib/psych/exception.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/exception.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/exception.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/handler.rb
$(RUBYLIBDIR)/psych/handler.rb: $(srcdir)/lib/psych/handler.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/handler.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/handler.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes.rb
$(RUBYLIBDIR)/psych/nodes.rb: $(srcdir)/lib/psych/nodes.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/omap.rb
$(RUBYLIBDIR)/psych/omap.rb: $(srcdir)/lib/psych/omap.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/omap.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/omap.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/parser.rb
$(RUBYLIBDIR)/psych/parser.rb: $(srcdir)/lib/psych/parser.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/parser.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/parser.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/scalar_scanner.rb
$(RUBYLIBDIR)/psych/scalar_scanner.rb: $(srcdir)/lib/psych/scalar_scanner.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/scalar_scanner.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/scalar_scanner.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/set.rb
$(RUBYLIBDIR)/psych/set.rb: $(srcdir)/lib/psych/set.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/set.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/set.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/stream.rb
$(RUBYLIBDIR)/psych/stream.rb: $(srcdir)/lib/psych/stream.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/stream.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/stream.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/streaming.rb
$(RUBYLIBDIR)/psych/streaming.rb: $(srcdir)/lib/psych/streaming.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/streaming.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/streaming.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/syntax_error.rb
$(RUBYLIBDIR)/psych/syntax_error.rb: $(srcdir)/lib/psych/syntax_error.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/syntax_error.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/syntax_error.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/tree_builder.rb
$(RUBYLIBDIR)/psych/tree_builder.rb: $(srcdir)/lib/psych/tree_builder.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/tree_builder.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/tree_builder.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/versions.rb
$(RUBYLIBDIR)/psych/versions.rb: $(srcdir)/lib/psych/versions.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/versions.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/versions.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors.rb
$(RUBYLIBDIR)/psych/visitors.rb: $(srcdir)/lib/psych/visitors.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/y.rb
$(RUBYLIBDIR)/psych/y.rb: $(srcdir)/lib/psych/y.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	$(Q) $(COPY) $(srcdir)/lib/psych/y.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/y.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.handlers.time
do-install-rb-default: $(RUBYLIBDIR)/psych/handlers/document_stream.rb
$(RUBYLIBDIR)/psych/handlers/document_stream.rb: $(srcdir)/lib/psych/handlers/document_stream.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.handlers.time
	$(Q) $(COPY) $(srcdir)/lib/psych/handlers/document_stream.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/handlers/document_stream.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/handlers/recorder.rb
$(RUBYLIBDIR)/psych/handlers/recorder.rb: $(srcdir)/lib/psych/handlers/recorder.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.handlers.time
	$(Q) $(COPY) $(srcdir)/lib/psych/handlers/recorder.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/handlers/recorder.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
do-install-rb-default: $(RUBYLIBDIR)/psych/json/ruby_events.rb
$(RUBYLIBDIR)/psych/json/ruby_events.rb: $(srcdir)/lib/psych/json/ruby_events.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/psych/json/ruby_events.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/json/ruby_events.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/json/stream.rb
$(RUBYLIBDIR)/psych/json/stream.rb: $(srcdir)/lib/psych/json/stream.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/psych/json/stream.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/json/stream.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/json/tree_builder.rb
$(RUBYLIBDIR)/psych/json/tree_builder.rb: $(srcdir)/lib/psych/json/tree_builder.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/psych/json/tree_builder.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/json/tree_builder.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/json/yaml_events.rb
$(RUBYLIBDIR)/psych/json/yaml_events.rb: $(srcdir)/lib/psych/json/yaml_events.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
	$(Q) $(COPY) $(srcdir)/lib/psych/json/yaml_events.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/json/yaml_events.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/alias.rb
$(RUBYLIBDIR)/psych/nodes/alias.rb: $(srcdir)/lib/psych/nodes/alias.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/alias.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/alias.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/document.rb
$(RUBYLIBDIR)/psych/nodes/document.rb: $(srcdir)/lib/psych/nodes/document.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/document.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/document.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/mapping.rb
$(RUBYLIBDIR)/psych/nodes/mapping.rb: $(srcdir)/lib/psych/nodes/mapping.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/mapping.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/mapping.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/node.rb
$(RUBYLIBDIR)/psych/nodes/node.rb: $(srcdir)/lib/psych/nodes/node.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/node.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/node.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/scalar.rb
$(RUBYLIBDIR)/psych/nodes/scalar.rb: $(srcdir)/lib/psych/nodes/scalar.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/scalar.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/scalar.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/sequence.rb
$(RUBYLIBDIR)/psych/nodes/sequence.rb: $(srcdir)/lib/psych/nodes/sequence.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/sequence.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/sequence.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/nodes/stream.rb
$(RUBYLIBDIR)/psych/nodes/stream.rb: $(srcdir)/lib/psych/nodes/stream.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/stream.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/nodes/stream.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/depth_first.rb
$(RUBYLIBDIR)/psych/visitors/depth_first.rb: $(srcdir)/lib/psych/visitors/depth_first.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/depth_first.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/depth_first.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/emitter.rb
$(RUBYLIBDIR)/psych/visitors/emitter.rb: $(srcdir)/lib/psych/visitors/emitter.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/emitter.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/emitter.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/json_tree.rb
$(RUBYLIBDIR)/psych/visitors/json_tree.rb: $(srcdir)/lib/psych/visitors/json_tree.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/json_tree.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/json_tree.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/to_ruby.rb
$(RUBYLIBDIR)/psych/visitors/to_ruby.rb: $(srcdir)/lib/psych/visitors/to_ruby.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/to_ruby.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/to_ruby.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/visitor.rb
$(RUBYLIBDIR)/psych/visitors/visitor.rb: $(srcdir)/lib/psych/visitors/visitor.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/visitor.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/visitor.rb
do-install-rb-default: $(RUBYLIBDIR)/psych/visitors/yaml_tree.rb
$(RUBYLIBDIR)/psych/visitors/yaml_tree.rb: $(srcdir)/lib/psych/visitors/yaml_tree.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/yaml_tree.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych/visitors/yaml_tree.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/psych.rb
$(RUBYLIBDIR)/psych.rb: $(srcdir)/lib/psych.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/psych.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/psych.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default psych libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.handlers.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/psych/handlers 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/psych/json 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/psych/nodes 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/psych/visitors 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR)/psych 2> /dev/null || true
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/$(arch)/.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/psych
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.handlers.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/psych/handlers
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.json.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/psych/json
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.nodes.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/psych/nodes
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.psych.-.visitors.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/psych/visitors
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

$(OBJS): $(YAML_H)

# AUTOGENERATED DEPENDENCIES START
psych.o: $(RUBY_EXTCONF_H)
psych.o: $(arch_hdrdir)/ruby/config.h
psych.o: $(hdrdir)/ruby.h
psych.o: $(hdrdir)/ruby/internal/anyargs.h
psych.o: $(hdrdir)/ruby/internal/arithmetic.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/char.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/double.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/int.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/long.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/short.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
psych.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
psych.o: $(hdrdir)/ruby/internal/assume.h
psych.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
psych.o: $(hdrdir)/ruby/internal/attr/artificial.h
psych.o: $(hdrdir)/ruby/internal/attr/cold.h
psych.o: $(hdrdir)/ruby/internal/attr/const.h
psych.o: $(hdrdir)/ruby/internal/attr/constexpr.h
psych.o: $(hdrdir)/ruby/internal/attr/deprecated.h
psych.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
psych.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
psych.o: $(hdrdir)/ruby/internal/attr/error.h
psych.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
psych.o: $(hdrdir)/ruby/internal/attr/forceinline.h
psych.o: $(hdrdir)/ruby/internal/attr/format.h
psych.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
psych.o: $(hdrdir)/ruby/internal/attr/noalias.h
psych.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
psych.o: $(hdrdir)/ruby/internal/attr/noexcept.h
psych.o: $(hdrdir)/ruby/internal/attr/noinline.h
psych.o: $(hdrdir)/ruby/internal/attr/nonnull.h
psych.o: $(hdrdir)/ruby/internal/attr/noreturn.h
psych.o: $(hdrdir)/ruby/internal/attr/pure.h
psych.o: $(hdrdir)/ruby/internal/attr/restrict.h
psych.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
psych.o: $(hdrdir)/ruby/internal/attr/warning.h
psych.o: $(hdrdir)/ruby/internal/attr/weakref.h
psych.o: $(hdrdir)/ruby/internal/cast.h
psych.o: $(hdrdir)/ruby/internal/compiler_is.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
psych.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
psych.o: $(hdrdir)/ruby/internal/compiler_since.h
psych.o: $(hdrdir)/ruby/internal/config.h
psych.o: $(hdrdir)/ruby/internal/constant_p.h
psych.o: $(hdrdir)/ruby/internal/core.h
psych.o: $(hdrdir)/ruby/internal/core/rarray.h
psych.o: $(hdrdir)/ruby/internal/core/rbasic.h
psych.o: $(hdrdir)/ruby/internal/core/rbignum.h
psych.o: $(hdrdir)/ruby/internal/core/rclass.h
psych.o: $(hdrdir)/ruby/internal/core/rdata.h
psych.o: $(hdrdir)/ruby/internal/core/rfile.h
psych.o: $(hdrdir)/ruby/internal/core/rhash.h
psych.o: $(hdrdir)/ruby/internal/core/robject.h
psych.o: $(hdrdir)/ruby/internal/core/rregexp.h
psych.o: $(hdrdir)/ruby/internal/core/rstring.h
psych.o: $(hdrdir)/ruby/internal/core/rstruct.h
psych.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
psych.o: $(hdrdir)/ruby/internal/ctype.h
psych.o: $(hdrdir)/ruby/internal/dllexport.h
psych.o: $(hdrdir)/ruby/internal/dosish.h
psych.o: $(hdrdir)/ruby/internal/error.h
psych.o: $(hdrdir)/ruby/internal/eval.h
psych.o: $(hdrdir)/ruby/internal/event.h
psych.o: $(hdrdir)/ruby/internal/fl_type.h
psych.o: $(hdrdir)/ruby/internal/gc.h
psych.o: $(hdrdir)/ruby/internal/glob.h
psych.o: $(hdrdir)/ruby/internal/globals.h
psych.o: $(hdrdir)/ruby/internal/has/attribute.h
psych.o: $(hdrdir)/ruby/internal/has/builtin.h
psych.o: $(hdrdir)/ruby/internal/has/c_attribute.h
psych.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
psych.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
psych.o: $(hdrdir)/ruby/internal/has/extension.h
psych.o: $(hdrdir)/ruby/internal/has/feature.h
psych.o: $(hdrdir)/ruby/internal/has/warning.h
psych.o: $(hdrdir)/ruby/internal/intern/array.h
psych.o: $(hdrdir)/ruby/internal/intern/bignum.h
psych.o: $(hdrdir)/ruby/internal/intern/class.h
psych.o: $(hdrdir)/ruby/internal/intern/compar.h
psych.o: $(hdrdir)/ruby/internal/intern/complex.h
psych.o: $(hdrdir)/ruby/internal/intern/cont.h
psych.o: $(hdrdir)/ruby/internal/intern/dir.h
psych.o: $(hdrdir)/ruby/internal/intern/enum.h
psych.o: $(hdrdir)/ruby/internal/intern/enumerator.h
psych.o: $(hdrdir)/ruby/internal/intern/error.h
psych.o: $(hdrdir)/ruby/internal/intern/eval.h
psych.o: $(hdrdir)/ruby/internal/intern/file.h
psych.o: $(hdrdir)/ruby/internal/intern/gc.h
psych.o: $(hdrdir)/ruby/internal/intern/hash.h
psych.o: $(hdrdir)/ruby/internal/intern/io.h
psych.o: $(hdrdir)/ruby/internal/intern/load.h
psych.o: $(hdrdir)/ruby/internal/intern/marshal.h
psych.o: $(hdrdir)/ruby/internal/intern/numeric.h
psych.o: $(hdrdir)/ruby/internal/intern/object.h
psych.o: $(hdrdir)/ruby/internal/intern/parse.h
psych.o: $(hdrdir)/ruby/internal/intern/proc.h
psych.o: $(hdrdir)/ruby/internal/intern/process.h
psych.o: $(hdrdir)/ruby/internal/intern/random.h
psych.o: $(hdrdir)/ruby/internal/intern/range.h
psych.o: $(hdrdir)/ruby/internal/intern/rational.h
psych.o: $(hdrdir)/ruby/internal/intern/re.h
psych.o: $(hdrdir)/ruby/internal/intern/ruby.h
psych.o: $(hdrdir)/ruby/internal/intern/select.h
psych.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
psych.o: $(hdrdir)/ruby/internal/intern/signal.h
psych.o: $(hdrdir)/ruby/internal/intern/sprintf.h
psych.o: $(hdrdir)/ruby/internal/intern/string.h
psych.o: $(hdrdir)/ruby/internal/intern/struct.h
psych.o: $(hdrdir)/ruby/internal/intern/thread.h
psych.o: $(hdrdir)/ruby/internal/intern/time.h
psych.o: $(hdrdir)/ruby/internal/intern/variable.h
psych.o: $(hdrdir)/ruby/internal/intern/vm.h
psych.o: $(hdrdir)/ruby/internal/interpreter.h
psych.o: $(hdrdir)/ruby/internal/iterator.h
psych.o: $(hdrdir)/ruby/internal/memory.h
psych.o: $(hdrdir)/ruby/internal/method.h
psych.o: $(hdrdir)/ruby/internal/module.h
psych.o: $(hdrdir)/ruby/internal/newobj.h
psych.o: $(hdrdir)/ruby/internal/rgengc.h
psych.o: $(hdrdir)/ruby/internal/scan_args.h
psych.o: $(hdrdir)/ruby/internal/special_consts.h
psych.o: $(hdrdir)/ruby/internal/static_assert.h
psych.o: $(hdrdir)/ruby/internal/stdalign.h
psych.o: $(hdrdir)/ruby/internal/stdbool.h
psych.o: $(hdrdir)/ruby/internal/symbol.h
psych.o: $(hdrdir)/ruby/internal/token_paste.h
psych.o: $(hdrdir)/ruby/internal/value.h
psych.o: $(hdrdir)/ruby/internal/value_type.h
psych.o: $(hdrdir)/ruby/internal/variable.h
psych.o: $(hdrdir)/ruby/internal/warning_push.h
psych.o: $(hdrdir)/ruby/internal/xmalloc.h
psych.o: $(hdrdir)/ruby/assert.h
psych.o: $(hdrdir)/ruby/backward.h
psych.o: $(hdrdir)/ruby/backward/2/assume.h
psych.o: $(hdrdir)/ruby/backward/2/attributes.h
psych.o: $(hdrdir)/ruby/backward/2/bool.h
psych.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
psych.o: $(hdrdir)/ruby/backward/2/inttypes.h
psych.o: $(hdrdir)/ruby/backward/2/limits.h
psych.o: $(hdrdir)/ruby/backward/2/long_long.h
psych.o: $(hdrdir)/ruby/backward/2/stdalign.h
psych.o: $(hdrdir)/ruby/backward/2/stdarg.h
psych.o: $(hdrdir)/ruby/defines.h
psych.o: $(hdrdir)/ruby/encoding.h
psych.o: $(hdrdir)/ruby/intern.h
psych.o: $(hdrdir)/ruby/missing.h
psych.o: $(hdrdir)/ruby/onigmo.h
psych.o: $(hdrdir)/ruby/oniguruma.h
psych.o: $(hdrdir)/ruby/ruby.h
psych.o: $(hdrdir)/ruby/st.h
psych.o: $(hdrdir)/ruby/subst.h
psych.o: psych.c
psych.o: psych.h
psych.o: psych_emitter.h
psych.o: psych_parser.h
psych.o: psych_to_ruby.h
psych.o: psych_yaml_tree.h
psych_emitter.o: $(RUBY_EXTCONF_H)
psych_emitter.o: $(arch_hdrdir)/ruby/config.h
psych_emitter.o: $(hdrdir)/ruby.h
psych_emitter.o: $(hdrdir)/ruby/internal/anyargs.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/char.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/double.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/int.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/long.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/short.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
psych_emitter.o: $(hdrdir)/ruby/internal/assume.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/artificial.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/cold.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/const.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/constexpr.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/deprecated.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/error.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/forceinline.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/format.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/noalias.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/noexcept.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/noinline.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/nonnull.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/noreturn.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/pure.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/restrict.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/warning.h
psych_emitter.o: $(hdrdir)/ruby/internal/attr/weakref.h
psych_emitter.o: $(hdrdir)/ruby/internal/cast.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
psych_emitter.o: $(hdrdir)/ruby/internal/compiler_since.h
psych_emitter.o: $(hdrdir)/ruby/internal/config.h
psych_emitter.o: $(hdrdir)/ruby/internal/constant_p.h
psych_emitter.o: $(hdrdir)/ruby/internal/core.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rarray.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rbasic.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rbignum.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rclass.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rdata.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rfile.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rhash.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/robject.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rregexp.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rstring.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rstruct.h
psych_emitter.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
psych_emitter.o: $(hdrdir)/ruby/internal/ctype.h
psych_emitter.o: $(hdrdir)/ruby/internal/dllexport.h
psych_emitter.o: $(hdrdir)/ruby/internal/dosish.h
psych_emitter.o: $(hdrdir)/ruby/internal/error.h
psych_emitter.o: $(hdrdir)/ruby/internal/eval.h
psych_emitter.o: $(hdrdir)/ruby/internal/event.h
psych_emitter.o: $(hdrdir)/ruby/internal/fl_type.h
psych_emitter.o: $(hdrdir)/ruby/internal/gc.h
psych_emitter.o: $(hdrdir)/ruby/internal/glob.h
psych_emitter.o: $(hdrdir)/ruby/internal/globals.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/attribute.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/builtin.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/c_attribute.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/extension.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/feature.h
psych_emitter.o: $(hdrdir)/ruby/internal/has/warning.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/array.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/bignum.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/class.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/compar.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/complex.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/cont.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/dir.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/enum.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/enumerator.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/error.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/eval.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/file.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/gc.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/hash.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/io.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/load.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/marshal.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/numeric.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/object.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/parse.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/proc.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/process.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/random.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/range.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/rational.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/re.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/ruby.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/select.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/signal.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/sprintf.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/string.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/struct.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/thread.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/time.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/variable.h
psych_emitter.o: $(hdrdir)/ruby/internal/intern/vm.h
psych_emitter.o: $(hdrdir)/ruby/internal/interpreter.h
psych_emitter.o: $(hdrdir)/ruby/internal/iterator.h
psych_emitter.o: $(hdrdir)/ruby/internal/memory.h
psych_emitter.o: $(hdrdir)/ruby/internal/method.h
psych_emitter.o: $(hdrdir)/ruby/internal/module.h
psych_emitter.o: $(hdrdir)/ruby/internal/newobj.h
psych_emitter.o: $(hdrdir)/ruby/internal/rgengc.h
psych_emitter.o: $(hdrdir)/ruby/internal/scan_args.h
psych_emitter.o: $(hdrdir)/ruby/internal/special_consts.h
psych_emitter.o: $(hdrdir)/ruby/internal/static_assert.h
psych_emitter.o: $(hdrdir)/ruby/internal/stdalign.h
psych_emitter.o: $(hdrdir)/ruby/internal/stdbool.h
psych_emitter.o: $(hdrdir)/ruby/internal/symbol.h
psych_emitter.o: $(hdrdir)/ruby/internal/token_paste.h
psych_emitter.o: $(hdrdir)/ruby/internal/value.h
psych_emitter.o: $(hdrdir)/ruby/internal/value_type.h
psych_emitter.o: $(hdrdir)/ruby/internal/variable.h
psych_emitter.o: $(hdrdir)/ruby/internal/warning_push.h
psych_emitter.o: $(hdrdir)/ruby/internal/xmalloc.h
psych_emitter.o: $(hdrdir)/ruby/assert.h
psych_emitter.o: $(hdrdir)/ruby/backward.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/assume.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/attributes.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/bool.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/inttypes.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/limits.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/long_long.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/stdalign.h
psych_emitter.o: $(hdrdir)/ruby/backward/2/stdarg.h
psych_emitter.o: $(hdrdir)/ruby/defines.h
psych_emitter.o: $(hdrdir)/ruby/encoding.h
psych_emitter.o: $(hdrdir)/ruby/intern.h
psych_emitter.o: $(hdrdir)/ruby/missing.h
psych_emitter.o: $(hdrdir)/ruby/onigmo.h
psych_emitter.o: $(hdrdir)/ruby/oniguruma.h
psych_emitter.o: $(hdrdir)/ruby/ruby.h
psych_emitter.o: $(hdrdir)/ruby/st.h
psych_emitter.o: $(hdrdir)/ruby/subst.h
psych_emitter.o: psych.h
psych_emitter.o: psych_emitter.c
psych_emitter.o: psych_emitter.h
psych_emitter.o: psych_parser.h
psych_emitter.o: psych_to_ruby.h
psych_emitter.o: psych_yaml_tree.h
psych_parser.o: $(RUBY_EXTCONF_H)
psych_parser.o: $(arch_hdrdir)/ruby/config.h
psych_parser.o: $(hdrdir)/ruby.h
psych_parser.o: $(hdrdir)/ruby/internal/anyargs.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/char.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/double.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/int.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/long.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/short.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
psych_parser.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
psych_parser.o: $(hdrdir)/ruby/internal/assume.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/artificial.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/cold.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/const.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/constexpr.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/deprecated.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/error.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/forceinline.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/format.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/noalias.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/noexcept.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/noinline.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/nonnull.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/noreturn.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/pure.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/restrict.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/warning.h
psych_parser.o: $(hdrdir)/ruby/internal/attr/weakref.h
psych_parser.o: $(hdrdir)/ruby/internal/cast.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
psych_parser.o: $(hdrdir)/ruby/internal/compiler_since.h
psych_parser.o: $(hdrdir)/ruby/internal/config.h
psych_parser.o: $(hdrdir)/ruby/internal/constant_p.h
psych_parser.o: $(hdrdir)/ruby/internal/core.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rarray.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rbasic.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rbignum.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rclass.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rdata.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rfile.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rhash.h
psych_parser.o: $(hdrdir)/ruby/internal/core/robject.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rregexp.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rstring.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rstruct.h
psych_parser.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
psych_parser.o: $(hdrdir)/ruby/internal/ctype.h
psych_parser.o: $(hdrdir)/ruby/internal/dllexport.h
psych_parser.o: $(hdrdir)/ruby/internal/dosish.h
psych_parser.o: $(hdrdir)/ruby/internal/error.h
psych_parser.o: $(hdrdir)/ruby/internal/eval.h
psych_parser.o: $(hdrdir)/ruby/internal/event.h
psych_parser.o: $(hdrdir)/ruby/internal/fl_type.h
psych_parser.o: $(hdrdir)/ruby/internal/gc.h
psych_parser.o: $(hdrdir)/ruby/internal/glob.h
psych_parser.o: $(hdrdir)/ruby/internal/globals.h
psych_parser.o: $(hdrdir)/ruby/internal/has/attribute.h
psych_parser.o: $(hdrdir)/ruby/internal/has/builtin.h
psych_parser.o: $(hdrdir)/ruby/internal/has/c_attribute.h
psych_parser.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
psych_parser.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
psych_parser.o: $(hdrdir)/ruby/internal/has/extension.h
psych_parser.o: $(hdrdir)/ruby/internal/has/feature.h
psych_parser.o: $(hdrdir)/ruby/internal/has/warning.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/array.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/bignum.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/class.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/compar.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/complex.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/cont.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/dir.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/enum.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/enumerator.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/error.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/eval.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/file.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/gc.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/hash.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/io.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/load.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/marshal.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/numeric.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/object.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/parse.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/proc.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/process.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/random.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/range.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/rational.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/re.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/ruby.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/select.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/signal.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/sprintf.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/string.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/struct.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/thread.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/time.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/variable.h
psych_parser.o: $(hdrdir)/ruby/internal/intern/vm.h
psych_parser.o: $(hdrdir)/ruby/internal/interpreter.h
psych_parser.o: $(hdrdir)/ruby/internal/iterator.h
psych_parser.o: $(hdrdir)/ruby/internal/memory.h
psych_parser.o: $(hdrdir)/ruby/internal/method.h
psych_parser.o: $(hdrdir)/ruby/internal/module.h
psych_parser.o: $(hdrdir)/ruby/internal/newobj.h
psych_parser.o: $(hdrdir)/ruby/internal/rgengc.h
psych_parser.o: $(hdrdir)/ruby/internal/scan_args.h
psych_parser.o: $(hdrdir)/ruby/internal/special_consts.h
psych_parser.o: $(hdrdir)/ruby/internal/static_assert.h
psych_parser.o: $(hdrdir)/ruby/internal/stdalign.h
psych_parser.o: $(hdrdir)/ruby/internal/stdbool.h
psych_parser.o: $(hdrdir)/ruby/internal/symbol.h
psych_parser.o: $(hdrdir)/ruby/internal/token_paste.h
psych_parser.o: $(hdrdir)/ruby/internal/value.h
psych_parser.o: $(hdrdir)/ruby/internal/value_type.h
psych_parser.o: $(hdrdir)/ruby/internal/variable.h
psych_parser.o: $(hdrdir)/ruby/internal/warning_push.h
psych_parser.o: $(hdrdir)/ruby/internal/xmalloc.h
psych_parser.o: $(hdrdir)/ruby/assert.h
psych_parser.o: $(hdrdir)/ruby/backward.h
psych_parser.o: $(hdrdir)/ruby/backward/2/assume.h
psych_parser.o: $(hdrdir)/ruby/backward/2/attributes.h
psych_parser.o: $(hdrdir)/ruby/backward/2/bool.h
psych_parser.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
psych_parser.o: $(hdrdir)/ruby/backward/2/inttypes.h
psych_parser.o: $(hdrdir)/ruby/backward/2/limits.h
psych_parser.o: $(hdrdir)/ruby/backward/2/long_long.h
psych_parser.o: $(hdrdir)/ruby/backward/2/stdalign.h
psych_parser.o: $(hdrdir)/ruby/backward/2/stdarg.h
psych_parser.o: $(hdrdir)/ruby/defines.h
psych_parser.o: $(hdrdir)/ruby/encoding.h
psych_parser.o: $(hdrdir)/ruby/intern.h
psych_parser.o: $(hdrdir)/ruby/missing.h
psych_parser.o: $(hdrdir)/ruby/onigmo.h
psych_parser.o: $(hdrdir)/ruby/oniguruma.h
psych_parser.o: $(hdrdir)/ruby/ruby.h
psych_parser.o: $(hdrdir)/ruby/st.h
psych_parser.o: $(hdrdir)/ruby/subst.h
psych_parser.o: psych.h
psych_parser.o: psych_emitter.h
psych_parser.o: psych_parser.c
psych_parser.o: psych_parser.h
psych_parser.o: psych_to_ruby.h
psych_parser.o: psych_yaml_tree.h
psych_to_ruby.o: $(RUBY_EXTCONF_H)
psych_to_ruby.o: $(arch_hdrdir)/ruby/config.h
psych_to_ruby.o: $(hdrdir)/ruby.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/anyargs.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/char.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/double.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/int.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/long.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/short.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/assume.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/artificial.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/cold.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/const.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/constexpr.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/deprecated.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/error.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/forceinline.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/format.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/noalias.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/noexcept.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/noinline.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/nonnull.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/noreturn.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/pure.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/restrict.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/warning.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/attr/weakref.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/cast.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/compiler_since.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/config.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/constant_p.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rarray.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rbasic.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rbignum.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rclass.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rdata.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rfile.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rhash.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/robject.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rregexp.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rstring.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rstruct.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/ctype.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/dllexport.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/dosish.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/error.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/eval.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/event.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/fl_type.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/gc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/glob.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/globals.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/attribute.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/builtin.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/c_attribute.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/extension.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/feature.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/has/warning.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/array.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/bignum.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/class.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/compar.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/complex.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/cont.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/dir.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/enum.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/enumerator.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/error.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/eval.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/file.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/gc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/hash.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/io.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/load.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/marshal.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/numeric.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/object.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/parse.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/proc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/process.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/random.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/range.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/rational.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/re.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/ruby.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/select.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/signal.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/sprintf.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/string.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/struct.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/thread.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/time.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/variable.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/intern/vm.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/interpreter.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/iterator.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/memory.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/method.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/module.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/newobj.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/rgengc.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/scan_args.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/special_consts.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/static_assert.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/stdalign.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/stdbool.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/symbol.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/token_paste.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/value.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/value_type.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/variable.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/warning_push.h
psych_to_ruby.o: $(hdrdir)/ruby/internal/xmalloc.h
psych_to_ruby.o: $(hdrdir)/ruby/assert.h
psych_to_ruby.o: $(hdrdir)/ruby/backward.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/assume.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/attributes.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/bool.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/inttypes.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/limits.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/long_long.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/stdalign.h
psych_to_ruby.o: $(hdrdir)/ruby/backward/2/stdarg.h
psych_to_ruby.o: $(hdrdir)/ruby/defines.h
psych_to_ruby.o: $(hdrdir)/ruby/encoding.h
psych_to_ruby.o: $(hdrdir)/ruby/intern.h
psych_to_ruby.o: $(hdrdir)/ruby/missing.h
psych_to_ruby.o: $(hdrdir)/ruby/onigmo.h
psych_to_ruby.o: $(hdrdir)/ruby/oniguruma.h
psych_to_ruby.o: $(hdrdir)/ruby/ruby.h
psych_to_ruby.o: $(hdrdir)/ruby/st.h
psych_to_ruby.o: $(hdrdir)/ruby/subst.h
psych_to_ruby.o: psych.h
psych_to_ruby.o: psych_emitter.h
psych_to_ruby.o: psych_parser.h
psych_to_ruby.o: psych_to_ruby.c
psych_to_ruby.o: psych_to_ruby.h
psych_to_ruby.o: psych_yaml_tree.h
psych_yaml_tree.o: $(RUBY_EXTCONF_H)
psych_yaml_tree.o: $(arch_hdrdir)/ruby/config.h
psych_yaml_tree.o: $(hdrdir)/ruby.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/anyargs.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/char.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/double.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/fixnum.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/gid_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/int.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/intptr_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/long.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/long_long.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/mode_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/off_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/pid_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/short.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/size_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/st_data_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/arithmetic/uid_t.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/assume.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/alloc_size.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/artificial.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/cold.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/const.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/constexpr.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/deprecated.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/diagnose_if.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/enum_extensibility.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/error.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/flag_enum.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/forceinline.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/format.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/maybe_unused.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/noalias.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/nodiscard.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/noexcept.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/noinline.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/nonnull.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/noreturn.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/pure.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/restrict.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/returns_nonnull.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/warning.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/attr/weakref.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/cast.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/apple.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/clang.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/gcc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/intel.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/msvc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_is/sunpro.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/compiler_since.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/config.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/constant_p.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rarray.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rbasic.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rbignum.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rclass.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rdata.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rfile.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rhash.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/robject.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rregexp.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rstring.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rstruct.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/core/rtypeddata.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/ctype.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/dllexport.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/dosish.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/error.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/eval.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/event.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/fl_type.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/gc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/glob.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/globals.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/attribute.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/builtin.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/c_attribute.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/cpp_attribute.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/declspec_attribute.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/extension.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/feature.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/has/warning.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/array.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/bignum.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/class.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/compar.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/complex.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/cont.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/dir.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/enum.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/enumerator.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/error.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/eval.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/file.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/gc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/hash.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/io.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/load.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/marshal.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/numeric.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/object.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/parse.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/proc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/process.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/random.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/range.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/rational.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/re.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/ruby.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/select.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/select/largesize.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/signal.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/sprintf.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/string.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/struct.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/thread.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/time.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/variable.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/intern/vm.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/interpreter.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/iterator.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/memory.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/method.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/module.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/newobj.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/rgengc.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/scan_args.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/special_consts.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/static_assert.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/stdalign.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/stdbool.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/symbol.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/token_paste.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/value.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/value_type.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/variable.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/warning_push.h
psych_yaml_tree.o: $(hdrdir)/ruby/internal/xmalloc.h
psych_yaml_tree.o: $(hdrdir)/ruby/assert.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/assume.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/attributes.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/bool.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/gcc_version_since.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/inttypes.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/limits.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/long_long.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/stdalign.h
psych_yaml_tree.o: $(hdrdir)/ruby/backward/2/stdarg.h
psych_yaml_tree.o: $(hdrdir)/ruby/defines.h
psych_yaml_tree.o: $(hdrdir)/ruby/encoding.h
psych_yaml_tree.o: $(hdrdir)/ruby/intern.h
psych_yaml_tree.o: $(hdrdir)/ruby/missing.h
psych_yaml_tree.o: $(hdrdir)/ruby/onigmo.h
psych_yaml_tree.o: $(hdrdir)/ruby/oniguruma.h
psych_yaml_tree.o: $(hdrdir)/ruby/ruby.h
psych_yaml_tree.o: $(hdrdir)/ruby/st.h
psych_yaml_tree.o: $(hdrdir)/ruby/subst.h
psych_yaml_tree.o: psych.h
psych_yaml_tree.o: psych_emitter.h
psych_yaml_tree.o: psych_parser.h
psych_yaml_tree.o: psych_to_ruby.h
psych_yaml_tree.o: psych_yaml_tree.c
psych_yaml_tree.o: psych_yaml_tree.h
# AUTOGENERATED DEPENDENCIES END
