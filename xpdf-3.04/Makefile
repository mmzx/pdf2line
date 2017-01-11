SHELL = /bin/sh

DESTDIR =

prefix = /usr/local
exec_prefix = ${prefix}
srcdir = .

INSTALL = /usr/bin/ginstall -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644

EXE = 

all: pdftotext

pdftotext: dummy
	cd goo; $(MAKE)
	cd fofi; $(MAKE)
	cd splash; $(MAKE)
	cd xpdf; $(MAKE) pdftotext$(EXE)

dummy:

clean:
	-cd goo; $(MAKE) clean
	-cd fofi; $(MAKE) clean
	-cd splash; $(MAKE) clean
	-cd xpdf; $(MAKE) clean
