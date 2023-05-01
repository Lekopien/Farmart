# -*- makefile -*-
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)
old_extensions =
extensions = ext/-test-/RUBY_ALIGNOF/. ext/-test-/arith_seq/extract/. \
	     ext/-test-/array/concat/. ext/-test-/array/resize/. \
	     ext/-test-/bignum/. ext/-test-/bug-14834/. \
	     ext/-test-/bug-3571/. ext/-test-/bug-5832/. \
	     ext/-test-/bug_reporter/. ext/-test-/class/. \
	     ext/-test-/cxxanyargs/. ext/-test-/debug/. \
	     ext/-test-/dln/empty/. ext/-test-/enumerator_kw/. \
	     ext/-test-/exception/. ext/-test-/fatal/. \
	     ext/-test-/file/. ext/-test-/float/. ext/-test-/funcall/. \
	     ext/-test-/gvl/call_without_gvl/. ext/-test-/hash/. \
	     ext/-test-/integer/. ext/-test-/iseq_load/. \
	     ext/-test-/iter/. ext/-test-/load/dot.dot/. \
	     ext/-test-/load/protect/. ext/-test-/marshal/compat/. \
	     ext/-test-/marshal/internal_ivar/. \
	     ext/-test-/marshal/usr/. ext/-test-/memory_status/. \
	     ext/-test-/memory_view/. ext/-test-/method/. \
	     ext/-test-/notimplement/. ext/-test-/num2int/. \
	     ext/-test-/path_to_class/. ext/-test-/popen_deadlock/. \
	     ext/-test-/postponed_job/. ext/-test-/printf/. \
	     ext/-test-/proc/. ext/-test-/random/. \
	     ext/-test-/rational/. ext/-test-/rb_call_super_kw/. \
	     ext/-test-/recursion/. ext/-test-/regexp/. \
	     ext/-test-/scan_args/. ext/-test-/st/foreach/. \
	     ext/-test-/st/numhash/. ext/-test-/st/update/. \
	     ext/-test-/string/. ext/-test-/struct/. \
	     ext/-test-/symbol/. ext/-test-/thread_fd_close/. \
	     ext/-test-/time/. ext/-test-/tracepoint/. \
	     ext/-test-/typeddata/. ext/-test-/vm/. \
	     ext/-test-/wait_for_single_fd/. ext/bigdecimal/. \
	     ext/cgi/escape/. ext/continuation/. ext/coverage/. \
	     ext/date/. ext/dbm/. ext/digest/. \
	     ext/digest/bubblebabble/. ext/digest/md5/. \
	     ext/digest/rmd160/. ext/digest/sha1/. ext/digest/sha2/. \
	     ext/etc/. ext/fcntl/. ext/fiber/. ext/fiddle/. ext/gdbm/. \
	     ext/io/console/. ext/io/nonblock/. ext/io/wait/. \
	     ext/json/. ext/json/generator/. ext/json/parser/. \
	     ext/monitor/. ext/nkf/. ext/objspace/. ext/openssl/. \
	     ext/pathname/. ext/psych/. ext/pty/. ext/racc/cparse/. \
	     ext/rbconfig/sizeof/. ext/readline/. ext/ripper/. \
	     ext/rubyvm/. ext/socket/. ext/stringio/. ext/strscan/. \
	     ext/syslog/. ext/zlib/.
EXTOBJS = dmyext.o
SUBMAKEOPTS = EXTOBJS="$(EXTOBJS) $(EXTENCS)" EXTLIBS="$(EXTLIBS)" \
	      EXTLDFLAGS="$(EXTLDFLAGS)" EXTINITS="$(EXTINITS)" \
	      UPDATE_LIBRARIES="$(UPDATE_LIBRARIES)" SHOWFLAGS=
NOTE_MESG = $(RUBY) $(top_srcdir)/tool/lib/colorize.rb skip
NOTE_NAME = $(RUBY) $(top_srcdir)/tool/lib/colorize.rb fail
PLATFORM_DIR = 
RMALL = rm -fr
RMDIRS = rmdir --ignore-fail-on-non-empty -p
RMDIR = rmdir --ignore-fail-on-non-empty
RM = rm -f

all:
static:

clean:
	-$(Q)$(RM) ext/extinit.o
distclean:
	-$(Q)$(RM) ext/extinit.c

all static: ruby
all: $(extensions:/.=/all)
all:
install: $(extensions:/.=/install)
install:
static: $(extensions:/.=/static)
static:
install-so: $(extensions:/.=/install-so)
install-so:
install-rb: $(extensions:/.=/install-rb)
install-rb:
clean: $(extensions:/.=/clean)
distclean: $(extensions:/.=/distclean)
realclean: $(extensions:/.=/realclean)
ruby: $(extensions:/.=/all)
ruby: $(EXTOBJS)

ruby:
	$(Q)$(MAKE) $(SUBMAKEOPTS) $@

libencs:
	$(Q)$(MAKE) -f enc.mk V=$(V) $@
ext/extinit.o:
	$(Q)$(MAKE) V=$(V) EXTINITS="$(EXTINITS)" $@

ext/-test-/RUBY_ALIGNOF/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/all: ext/digest/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/all: ext/digest/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/all: ext/digest/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/all: ext/digest/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/all: ext/digest/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/all: ext/json/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/all: ext/json/all
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/all:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/static: ext/digest/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/static: ext/digest/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/static: ext/digest/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/static: ext/digest/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/static: ext/digest/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/static: ext/json/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/static: ext/json/static
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/static:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/install: ext/digest/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/install: ext/digest/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/install: ext/digest/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/install: ext/digest/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/install: ext/digest/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/install: ext/json/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/install: ext/json/install
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/install:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/install-so: ext/digest/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/install-so: ext/digest/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/install-so: ext/digest/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/install-so: ext/digest/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/install-so: ext/digest/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/install-so: ext/json/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/install-so: ext/json/install-so
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/install-so:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/install-rb: ext/digest/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/install-rb: ext/digest/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/install-rb: ext/digest/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/install-rb: ext/digest/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/install-rb: ext/digest/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/install-rb: ext/json/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/install-rb: ext/json/install-rb
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/install-rb:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/arith_seq/extract/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/concat/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/array/resize/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bignum/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-14834/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-3571/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug-5832/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/bug_reporter/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/class/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/cxxanyargs/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/debug/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/dln/empty/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/enumerator_kw/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/exception/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/fatal/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/file/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/float/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/funcall/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/gvl/call_without_gvl/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/hash/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/integer/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iseq_load/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/iter/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/dot.dot/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/load/protect/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/compat/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/internal_ivar/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/marshal/usr/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_status/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/memory_view/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/method/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/notimplement/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/num2int/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/path_to_class/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/popen_deadlock/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/postponed_job/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/printf/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/proc/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/random/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rational/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/rb_call_super_kw/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/recursion/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/regexp/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/scan_args/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/foreach/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/numhash/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/st/update/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/string/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/struct/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/symbol/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/thread_fd_close/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/time/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/tracepoint/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/typeddata/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/vm/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/wait_for_single_fd/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/bigdecimal/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/cgi/escape/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/continuation/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/coverage/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/date/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/dbm/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/clean: ext/digest/bubblebabble/clean ext/digest/md5/clean ext/digest/rmd160/clean ext/digest/sha1/clean ext/digest/sha2/clean
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/bubblebabble/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/md5/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/rmd160/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha1/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/digest/sha2/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/etc/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fcntl/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiber/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/fiddle/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/gdbm/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/console/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/nonblock/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/io/wait/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/clean: ext/json/generator/clean ext/json/parser/clean
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/generator/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/json/parser/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/monitor/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/nkf/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/objspace/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/openssl/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pathname/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/psych/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/pty/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/racc/cparse/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rbconfig/sizeof/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/readline/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/ripper/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/rubyvm/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/socket/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/stringio/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/strscan/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/syslog/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/zlib/clean:
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
ext/-test-/RUBY_ALIGNOF/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/arith_seq/extract/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/array/concat/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/array/resize/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bignum/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-14834/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-3571/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-5832/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug_reporter/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/class/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/cxxanyargs/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/debug/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/dln/empty/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/enumerator_kw/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/exception/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/fatal/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/file/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/float/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/funcall/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/gvl/call_without_gvl/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/hash/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/integer/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/iseq_load/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/iter/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/load/dot.dot/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/load/protect/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/compat/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/internal_ivar/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/usr/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/memory_status/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/memory_view/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/method/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/notimplement/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/num2int/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/path_to_class/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/popen_deadlock/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/postponed_job/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/printf/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/proc/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/random/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/rational/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/rb_call_super_kw/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/recursion/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/regexp/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/scan_args/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/foreach/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/numhash/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/update/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/string/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/struct/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/symbol/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/thread_fd_close/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/time/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/tracepoint/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/typeddata/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/vm/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/wait_for_single_fd/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/bigdecimal/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/cgi/escape/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/continuation/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/coverage/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/date/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/dbm/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/distclean: ext/digest/bubblebabble/distclean ext/digest/md5/distclean ext/digest/rmd160/distclean ext/digest/sha1/distclean ext/digest/sha2/distclean
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/bubblebabble/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/md5/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/rmd160/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/sha1/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/sha2/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/etc/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fcntl/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fiber/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fiddle/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/gdbm/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/console/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/nonblock/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/wait/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/distclean: ext/json/generator/distclean ext/json/parser/distclean
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/generator/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/parser/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/monitor/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/nkf/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/objspace/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/openssl/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/pathname/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/psych/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/pty/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/racc/cparse/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/rbconfig/sizeof/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/readline/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/ripper/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/rubyvm/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/socket/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/stringio/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/strscan/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/syslog/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/zlib/distclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/RUBY_ALIGNOF/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/arith_seq/extract/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/array/concat/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/array/resize/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bignum/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-14834/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-3571/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug-5832/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/bug_reporter/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/class/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/cxxanyargs/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/debug/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/dln/empty/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/enumerator_kw/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/exception/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/fatal/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/file/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/float/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/funcall/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/gvl/call_without_gvl/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/hash/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/integer/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/iseq_load/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/iter/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/load/dot.dot/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/load/protect/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/compat/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/internal_ivar/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/marshal/usr/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/memory_status/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/memory_view/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/method/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/notimplement/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/num2int/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/path_to_class/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/popen_deadlock/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/postponed_job/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/printf/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/proc/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/random/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/rational/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/rb_call_super_kw/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/recursion/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/regexp/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/scan_args/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/foreach/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/numhash/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/st/update/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/string/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/struct/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/symbol/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/thread_fd_close/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/time/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/tracepoint/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/typeddata/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/vm/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/-test-/wait_for_single_fd/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/bigdecimal/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/cgi/escape/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/continuation/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/coverage/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/date/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/dbm/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/realclean: ext/digest/bubblebabble/realclean ext/digest/md5/realclean ext/digest/rmd160/realclean ext/digest/sha1/realclean ext/digest/sha2/realclean
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/bubblebabble/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/md5/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/rmd160/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/sha1/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/digest/sha2/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/etc/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fcntl/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fiber/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/fiddle/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/gdbm/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/console/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/nonblock/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/io/wait/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/realclean: ext/json/generator/realclean ext/json/parser/realclean
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/generator/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/json/parser/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/monitor/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/nkf/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/objspace/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/openssl/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/pathname/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/psych/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/pty/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/racc/cparse/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/rbconfig/sizeof/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/readline/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/ripper/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/rubyvm/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/socket/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/stringio/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/strscan/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/syslog/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)
ext/zlib/realclean:
	$(ECHO) $(@F)ing $(@D)
	$(Q)$(MAKE) -C $(@D) V=$(V) $(@F)
	$(Q)$(RM) $(@D)/exts.mk
	$(Q)$(RMDIRS) $(@D)

extso:
	@echo EXTSO=$(EXTSO)

note: note-body
	@$(NOTE_MESG) "*** Fix the problems, then remove these directories and try again if you want."

note-body:: note-header
	@$(NOTE_NAME) "openssl:"
	@echo "	Could not be configured. It will not be installed."
	@echo "	/home/volta/PHASE5-PROJECT/Farmart/ruby-3.0.3/ext/openssl/extconf.rb:113: OpenSSL >= 1.0.1, < 3.0.0 or LibreSSL >= 2.5.0 is required"
	@echo "	Check ext/openssl/mkmf.log for more details."

note-header:
	@$(NOTE_MESG) "*** Following extensions are not compiled:"


remove-old-extensions: $(old_extensions:/.=/distclean)
