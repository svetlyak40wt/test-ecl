;; without this line, build under the ECL
;; crashes when dependencies include something like cffi
(asdf:register-immutable-system "uiop")
(asdf:register-immutable-system :sb-bsd-sockets)

(defpackage :build
  (:use
   :common-lisp
   ;; we need this extension to make function QUIT is available
   #+ecl
   :ext))

(in-package :build)

(defconstant +project-system-name+ :test-ecl)
(defconstant +executable-file-name+ "test-ecl")


(format t "~&Running on ~A ~A, using Quicklisp dist version ~A~%"
        (lisp-implementation-type)
        (lisp-implementation-version)
        (or #+quicklisp (ql:dist-version "quicklisp")
            "n/a"))

#-quicklisp
(progn
    (warn "Quicklisp is not available to download dependencies.")
   (quit 1))

(push (merge-pathnames "") asdf:*central-registry*)

(defmethod asdf:output-files ((o asdf:program-op) (s (eql (asdf:find-system +project-system-name+))))
  (values (list +executable-file-name+) t))


(ql:quickload +project-system-name+)
(asdf:operate 'asdf:program-op +project-system-name+)

(quit)
