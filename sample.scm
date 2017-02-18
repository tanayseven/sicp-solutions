(load "test-manager/load.scm")

(in-test-group
   simple-stuff
   (define-test (arithmetic)
     "Checking that set! and arithmetic work"
     (define foo 5)
     (assert-= 5 foo "Foo should start as five.")
     (set! foo 6)
     (assert-= 36 (* foo foo)))
   ; Each of these will become a separate anonymous one-form test
   (define-each-test
     (assert-= 4 (+ 2 2) "Two and two should make four.")
     (assert-= 6 (+ 2 2 2))
     (assert-= 2147483648 (+ 2147483647 1) "Addition shouldn't overflow.")
     (assert-equal '(1 2 3) (cons 1 '(2 3)))))

(run-registered-tests)
