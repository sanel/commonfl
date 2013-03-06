%{
#include <FL/Fl.H>
#include "FL/Fl_Widget.H"
%}

%ignore Fl_Widget::image(Fl_Image& a);
%ignore Fl_Widget::deimage(Fl_Image& a);
%ignore Fl_Label;

%include "FL/Fl_Widget.H"
