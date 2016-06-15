(asdf:defsystem :test-ecl
                :description "Checking why ECL cant build runnable binaries sometimes."
                :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
                :entry-point "test-ecl:main"
                :depends-on (:babel)
                :components ((:file "test-ecl")))
