(load "test-manager/load.scm")
(load "src/ex_1.4.scm")

(in-test-group 
  a-plus-abs-b-should-work-the-way-expected
  (define-test (if-input-is-2-1-output-is-3)
    (assert-= (a-plus-abs-b 2 1) 3))
  (define-test (if-input-is-4--3-output-is-1)
    (assert-= (a-plus-abs-b 4 -3) 7)))
(run-registered-tests)
