(defpackage :fltk-test-system
  (:use :cl :asdf))

(in-package :fltk-test-system)

(defsystem :fltk-test
  :serial t
  :pathname #-asdf2 (merge-patnames #p"test/" *load-truename*)
  			#+asdf2 "test/"
  :components ((:file "sample"))
  :depends-on (:fltk))
