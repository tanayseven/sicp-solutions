#lang sicp
; Exercise 1.2
; Translate the following expression into prefix form
;
; 5 + 4 + ( 2 - ( 3 - ( 6 + (4 / 5) ) ) )
; ---------------------------------------
;            3(6 - 2)(2 - 7)
(#%require (only racket module+ printf) rackunit)


;; Solution

(define (expression)
  (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) 
     (* 3 (- 6 2) (- 2 7))))


;; Tests

(module+ test
  (check-= (expression) -37/150 1e-6))