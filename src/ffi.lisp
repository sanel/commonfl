(in-package :fltk)

(defun load-fltk ()
  (cffi:load-foreign-library 
   #+windows "commonfl.dll"
   #-windows
   (namestring 
	(make-pathname :name "commonfl"
				   :type #+darvin "dylib" #-darvin "so"
				   :defaults (asdf:component-relative-pathname
							  (asdf:find-system :fltk))))))

(load-fltk)
