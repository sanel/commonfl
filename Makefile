
FLTK_CONFIG = fltk-config

SWIG = swig
CPP  = g++
LD   = gcc

FLTK_CXXFLAGS = $(shell $(FLTK_CONFIG) --cxxflags)
FLTK_LIBS     = $(shell $(FLTK_CONFIG) --use-gl --ldflags)
FLTK_HEADERS  = $(shell $(FLTK_CONFIG) --includedir)

SRCDIR  = src
SWIGDIR = swig

all: swig fltk_wrap.so

$(SRCDIR)/fltk_wrap.cxx: $(SWIGDIR)/fltk.i
	$(SWIG) -c++ -cffi -I$(FLTK_HEADERS) -o $@ -outdir $(SRCDIR) $<

fltk_wrap.o: $(SRCDIR)/fltk_wrap.cxx
	$(CPP) -c -fpic $< $(FLTK_CXXFLAGS) -I$(FLTK_HEADERS)

fltk_wrap.so: fltk_wrap.o
	$(LD) $(FLTK_LIBS) -shared $< -o $@

swig: $(SRCDIR)/fltk_wrap.cxx

.PHONY: clean

clean:
	@rm -f $(SRCDIR)/*
	@rm -f fltk_wrap.so fltk_wrap.o
