
FLTK_CONFIG = fltk-config

SWIG = swig
CPP  = g++
LD   = gcc

FLTK_CXXFLAGS = $(shell $(FLTK_CONFIG) --cxxflags)
FLTK_LIBS     = $(shell $(FLTK_CONFIG) --use-gl --ldflags)
FLTK_HEADERS  = $(shell $(FLTK_CONFIG) --includedir)

SRCDIR  = src
SWIGDIR = swig

all: swig commonfl.so

$(SRCDIR)/commonfl.cxx: $(SWIGDIR)/fltk.i
	$(SWIG) -c++ -noexcept -cffi -I$(FLTK_HEADERS) -o $@ -outdir $(SRCDIR) $<

commonfl.o: $(SRCDIR)/commonfl.cxx
	$(CPP) -c -fpic $< $(FLTK_CXXFLAGS) -I$(FLTK_HEADERS)

commonfl.so: commonfl.o
	$(LD) $(FLTK_LIBS) -shared $< -o $@

swig: $(SRCDIR)/commonfl.cxx

.PHONY: clean

clean:
	@rm -f $(SRCDIR)/commonfl.cxx
	@rm -f $(SRCDIR)/fltk.lisp
	@rm -f $(SRCDIR)/fltk-clos.lisp
	@rm -f commonfl.so commonfl.o
