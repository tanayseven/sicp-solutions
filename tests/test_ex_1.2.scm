(load "../test-manager/load.scm")
(load "../src/ex_1.2.scm")

(in-test-group
  translation-of-an-expression-into-prefix-form
  (define-test (expression-infix)
     (assert-= (expression) -37/150)))
(run-registered-tests)
(quit)
