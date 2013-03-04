%module fltk

%feature("director");
%feature("nodirector") Fl_Valuator;
%feature("compactdefaultargs");
/* ignore all variables -> no getters and setters */
%rename("$ignore",%$isvariable) ""; 

%include Fl_Export.i
%include Enumerations.i
%include Fl.i

/* keep it in order to avoid warnings */
%include Fl_Widget.i
%include Fl_Group.i
%include Fl_Window.i

typedef unsigned char uchar;
typedef unsigned int  uint;
