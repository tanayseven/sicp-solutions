#lang sicp
; Exercise 1.3
; Observe that our model of evaluation allows for combinations whose 
; operators are compound expressions. Use this observation to describe 
; the behavior of the following procedure:
; (define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
(#%require (only racket module+ printf) rackunit)


;; Solution

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


;; Tests

(module+ test
  (check-= (a-plus-abs-b 2 1) 3 1e-6)
  (check-= (a-plus-abs-b 4 -3) 7 1e-6))