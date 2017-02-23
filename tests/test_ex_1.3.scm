(load "test-manager/load.scm")
(load "src/ex_1.2.scm")

(in-test-group 
  sum-of-squares-of-two-larger-out-of-three-numbers
  (define-test (if-input-is-2-1-3-output-is-13)
    (assert-= (sum-of-square-of-two-larger 2 1 3) 13)))

(run-registered-tests)
(quit)
