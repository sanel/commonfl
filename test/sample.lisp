;; simple example how to use CommonFL
;; a lot of things needs to be completed this thing be usable

(defpackage :fltk-sample
  (:use :cl :fltk)
  (:export main))

(in-package :fltk-sample)

(defun fl_widget_event (widget func)
  (cffi:defcallback cb :void ((obj :pointer) (param :pointer))
	(funcall func))
  (fl_widget_callback widget (cffi:callback cb) 0))

(defun main ()
  (let ((win    (new_fl_window_3 300 200 ""))
		(button (new_fl_button 10 10 90 25 "")))
	(fl_widget_copy_label win "This is label")
	(fl_widget_copy_label button "Click me")
	(fl_widget_event button
					 (lambda ()
					   (print "zzz")))
	(fl_group_add win button)
	(fl_window_show win)
	(fl_run)))
