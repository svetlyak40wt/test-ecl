(defpackage #:test-ecl
  (:use #:cl
        #+ecl
        :ext)
  (:export #:main))

(in-package #:test-ecl)

(defun main ()
  (format t "HELLO WORLD~%")
  (EXIT))
