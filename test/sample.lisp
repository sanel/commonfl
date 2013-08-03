;; simple example how to use CommonFL
;; a lot of things needs to be completed this thing be usable

(defpackage :fltk-sample
  (:use :cl :fltk)
  (:export main))

(in-package :fltk-sample)

(defun main ()
  (let ((win (new_fl_window_3 300 200 "")))
	(fl_widget_copy_label win "This is label")
	(fl_window_show win)
	(fl_run)))
