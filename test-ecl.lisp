(defpackage #:test-ecl
  (:use #:cl
        #+ecl
        :ext)
  (:export #:main))

(in-package #:test-ecl)

(ql:quickload :hunchentoot)

(defun main ()
  (format t "Starting server~%")
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :address "localhost" :port 4243)))





