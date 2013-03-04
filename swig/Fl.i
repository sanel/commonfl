//%apply unsigned int { enum Fl_Color};
//%apply const unsigned int& { const enum Fl_Color&};
//%apply uchar* OUTPUT { uchar& };

%{
#include "FL/Fl.H"
%}

%ignore Fl::grab(Fl_Window &);

%ignore Fl::has_check(Fl_Timeout_Handler, void* = 0);
%ignore Fl::set_labeltype(Fl_Labeltype, Fl_Labeltype from);
%ignore Fl::add_timeout(double t, Fl_Timeout_Handler,void* = 0);
%ignore Fl::repeat_timeout(double t, Fl_Timeout_Handler,void* = 0);
%ignore Fl::remove_timeout(Fl_Timeout_Handler,void* = 0);
%ignore Fl::add_check(Fl_Timeout_Handler, void* = 0);
%ignore Fl::add_idle(void (*cb)(void*), void* = 0);
%ignore Fl::set_idle(void (*cb)());
%ignore Fl::remove_idle(void (*cb)(void*), void* = 0);
%ignore Fl::get_color(Fl_Color);
%ignore Fl::add_fd;
%ignore Fl::remove_fd;
%ignore Fl::add_handler;
%ignore Fl::remove_handler;
%ignore Fl::remove_check;
%ignore Fl::gl_visual;
%ignore Fl::get_awake_handler_;

#ifdef __APPLE__ 
%ignore Fl::free_color() 
#endif 

//%apply int* OUTPUT { int* attributes };

%include "FL/Fl.H"
