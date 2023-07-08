# Makefile for src/mod/megahal.mod/

srcdir = .


doofus:
	@echo "" && \
	echo "Let's try this from the right directory..." && \
	echo "" && \
	cd ../../../ && $(MAKE)

static: ../megahal.o

modules: ../../../megahal.$(MOD_EXT)

../megahal.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -DMAKING_MODS -c $(srcdir)/megahal.c && mv -f megahal.o ../

../../../megahal.$(MOD_EXT): ../megahal.o
	$(LD) $(CFLAGS) -o ../../../megahal.$(MOD_EXT) ../megahal.o $(XLIBS) $(MODULE_XLIBS) && $(STRIP) ../../../megahal.$(MOD_EXT)

depend:
	$(CC) $(CFLAGS) -MM $(srcdir)/megahal.c -MT ../megahal.o > .depend

clean:
	@rm -f .depend *.o *.$(MOD_EXT) *~

distclean: clean

#safety hash
../megahal.o: .././megahal.mod/megahal.c .././megahal.mod/megahal.h \
 ../../../src/main.h ../../../config.h ../../../eggint.h ../../../lush.h \
 ../../../src/lang.h ../../../src/eggdrop.h ../../../src/compat/in6.h \
 ../../../src/flags.h ../../../src/cmdt.h ../../../src/tclegg.h \
 ../../../src/tclhash.h ../../../src/chan.h ../../../src/users.h \
 ../../../src/compat/compat.h ../../../src/compat/base64.h \
 ../../../src/compat/inet_aton.h ../../../src/compat/snprintf.h \
 ../../../src/compat/explicit_bzero.h ../../../src/compat/strlcpy.h \
 ../../../src/mod/modvals.h ../../../src/tandem.h .././irc.mod/irc.h \
 ../../../src/mod/server.mod/server.h \
 ../../../src/mod/irc.mod/irc.h .././irc.mod/irc.c \
 .././irc.mod/mode.c .././irc.mod/cmdsirc.c .././irc.mod/msgcmds.c \
 .././irc.mod/tclirc.c \
 ../../../src/mod/server.mod/server.h .././server.mod/server.c

