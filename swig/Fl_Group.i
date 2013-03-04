%{
#include "FL/Fl_Group.H"
%}

%ignore Fl_Group::find(const Fl_Widget*) const;
%ignore Fl_Group::add(Fl_Widget&);
%ignore Fl_Group::remove(Fl_Widget&);
%ignore Fl_Group::resizable(Fl_Widget& o);
%rename(insert_before) Fl_Group::insert(Fl_Widget& o, Fl_Widget* before);

// needed for getting directors to work
%ignore Fl_Group::array() const;

%include "FL/Fl_Group.H"

