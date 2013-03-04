;; simple example how to use CommonFL
;; a lot of things needs to be completed this thing be usable

(defpackage :fltk-sample
  (:use :cl :fltk)
  (:export main))

(in-package :fltk-sample)

(defun main ()
  (let ((win (new_Fl_Window_3 300 200 "Test")))
	(Fl_Window_show win)
	(Fl_run)))
