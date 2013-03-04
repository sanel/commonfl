%{
#include "FL/Fl_Window.H"
%}

%rename("Fl_Window_3") Fl_Window::Fl_Window(int, int, const char*);
%rename("Fl_Window_5") Fl_Window::Fl_Window(int, int, int, int, const char*);

%ignore Fl_Window::hotspot(const Fl_Widget& p, int offscreen = 0);
%ignore Fl_Window::show(int argc, char** argv);

%include "FL/Fl_Window.H"
