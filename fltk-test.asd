(defpackage :fltk-test-system
  (:use :cl :asdf))

(in-package :fltk-test-system)

(defsystem :fltk-test
  :serial t
  :depends-on (:fltk)
  :components ((:file "test/sample")))
