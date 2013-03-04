%include "stdint.i"

 //%apply unsigned int { Fl_Color };
//%apply const unsigned int& { const Fl_Color& };

%{
#include "FL/Enumerations.H"
%}

#define FL_CAPS_LOCK	0x00020000

%include "FL/Enumerations.H"
