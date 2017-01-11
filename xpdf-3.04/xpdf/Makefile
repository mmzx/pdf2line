SHELL = /bin/sh

prefix = /usr/local
srcdir = .

GOOSRCDIR = $(srcdir)/../goo
GOOLIBDIR = ../goo
FOFISRCDIR = $(srcdir)/../fofi
FOFILIBDIR = ../fofi
SPLASHSRCDIR = $(srcdir)/../splash

CXXFLAGS = -O2 -fpermissive -Wwrite-strings -DHAVE_CONFIG_H -I.. -I$(srcdir)/.. -I$(GOOSRCDIR) -I$(FOFISRCDIR) -I$(SPLASHSRCDIR) -I$(srcdir)

OTHERLIBS =    \
	-L$(FOFILIBDIR) -lfofi \
	-L$(GOOLIBDIR) -lGoo

CXX = g++ 

LIBPREFIX = lib
EXE = 
BINDIR = ../../bin
BIN = $(BINDIR)/pdftotext$(EXE)
#------------------------------------------------------------------------

.SUFFIXES: .cc

.cc.o:
	$(CXX) $(CXXFLAGS) -c $<

#------------------------------------------------------------------------

CXX_SRC = \
	$(srcdir)/AcroForm.cc \
	$(srcdir)/Annot.cc \
	$(srcdir)/Array.cc \
	$(srcdir)/BuiltinFont.cc \
	$(srcdir)/BuiltinFontTables.cc \
	$(srcdir)/CMap.cc \
	$(srcdir)/Catalog.cc \
	$(srcdir)/CharCodeToUnicode.cc \
	$(srcdir)/CoreOutputDev.cc \
	$(srcdir)/Decrypt.cc \
	$(srcdir)/Dict.cc \
	$(srcdir)/Error.cc \
	$(srcdir)/FontEncodingTables.cc \
	$(srcdir)/Form.cc \
	$(srcdir)/Function.cc \
	$(srcdir)/Gfx.cc \
	$(srcdir)/GfxFont.cc \
	$(srcdir)/GfxState.cc \
	$(srcdir)/GlobalParams.cc \
	$(srcdir)/HTMLGen.cc \
	$(srcdir)/ImageOutputDev.cc \
	$(srcdir)/JArithmeticDecoder.cc \
	$(srcdir)/JBIG2Stream.cc \
	$(srcdir)/JPXStream.cc \
	$(srcdir)/Lexer.cc \
	$(srcdir)/Link.cc \
	$(srcdir)/NameToCharCode.cc \
	$(srcdir)/Object.cc \
	$(srcdir)/OptionalContent.cc \
	$(srcdir)/Outline.cc \
	$(srcdir)/OutputDev.cc \
	$(srcdir)/PDFCore.cc \
	$(srcdir)/PDFDoc.cc \
	$(srcdir)/PDFDocEncoding.cc \
	$(srcdir)/PSOutputDev.cc \
	$(srcdir)/PSTokenizer.cc \
	$(srcdir)/Page.cc \
	$(srcdir)/Parser.cc \
	$(srcdir)/PreScanOutputDev.cc \
	$(srcdir)/SecurityHandler.cc \
	$(srcdir)/SplashOutputDev.cc \
	$(srcdir)/Stream.cc \
	$(srcdir)/TextOutputDev.cc \
	$(srcdir)/TextString.cc \
	$(srcdir)/UnicodeMap.cc \
	$(srcdir)/UnicodeTypeTable.cc \
	$(srcdir)/XFAForm.cc \
	$(srcdir)/XPDFApp.cc \
	$(srcdir)/XPDFCore.cc \
	$(srcdir)/XPDFTree.cc \
	$(srcdir)/XPDFViewer.cc \
	$(srcdir)/XpdfPluginAPI.cc \
	$(srcdir)/XRef.cc \
	$(srcdir)/Zoox.cc \
	$(srcdir)/pdftops.cc \
	$(srcdir)/pdftotext.cc \
	$(srcdir)/pdftohtml.cc \
	$(srcdir)/pdfinfo.cc \
	$(srcdir)/pdffonts.cc \
	$(srcdir)/pdfdetach.cc \
	$(srcdir)/pdftoppm.cc \
	$(srcdir)/pdftopng.cc \
	$(srcdir)/pdfimages.cc \
	$(srcdir)/xpdf.cc

PDFTOTEXT_OBJS = \
	pdftotext.o \
	TextOutputDev.o \
	AcroForm.o \
	Annot.o \
	Array.o \
	BuiltinFont.o \
	BuiltinFontTables.o \
	Catalog.o \
	CharCodeToUnicode.o \
	CMap.o \
	Decrypt.o \
	Dict.o \
	Error.o \
	FontEncodingTables.o \
	Form.o \
	Function.o \
	Gfx.o \
	GfxFont.o \
	GfxState.o \
	GlobalParams.o \
	JArithmeticDecoder.o \
	JBIG2Stream.o \
	JPXStream.o \
	Lexer.o \
	Link.o \
	NameToCharCode.o \
	Object.o \
	OptionalContent.o \
	Outline.o \
	OutputDev.o \
	Page.o \
	Parser.o \
	PDFDoc.o \
	PDFDocEncoding.o \
	PSTokenizer.o \
	SecurityHandler.o \
	Stream.o \
	TextString.o \
	UnicodeMap.o \
	UnicodeTypeTable.o \
	XFAForm.o \
	XpdfPluginAPI.o \
	XRef.o \
	Zoox.o \

PDFTOTEXT_LIBS = -L$(GOOLIBDIR) -lGoo $(OTHERLIBS) -lm

#------------------------------------------------------------------------

all: pdftotext$(EXE)

# todo: source files defined in variables not in the rule.
pdftotext$(EXE): $(PDFTOTEXT_OBJS) $(GOOLIBDIR)/$(LIBPREFIX)Goo.a
	ar rvs libdeps.a pdftotext.o $(PDFTOTEXT_OBJS)
	mkdir -p $(BINDIR)
	ghc -optl -fexceptions --make pdftotext.hs -o $(BIN) libdeps.a -lm -lstdc++ $(PDFTOTEXT_LIBS)

clean:
	rm -f *.o *.hi *.a
	rm -f $(PDFTOTEXT_OBJS)
	rm -rf $(BINDIR)
