#lang sicp
; Exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the
; sum of the squares of the two larger numbers.
(#%require (only racket module+ printf) rackunit)


;; Solution

(define (square num)
  (* num num))
(define (>-of-2 a b) (if (> a b) a b))
(define (<-of-2 a b) (if (< a b) a b))
(define (largest-of-3 a b c) (define larger (>-of-2 a b)) (if (> c larger) c larger))
(define (sum-of-square-of-two-larger num1 num2 num3)
  (begin
    (define largest (largest-of-3 num1 num2 num3))
    (define second-largest
      (let ((>-between-first-2 (>-of-2 num1 num2))
        (<-between-first-2 (<-of-2 num1 num2)))
      (if (> num3 >-between-first-2) >-between-first-2 (>-of-2 <-between-first-2 num3))))
    (+ (square largest) (square second-largest))))


;; Tests

(module+ test
  (check-= (sum-of-square-of-two-larger 3 2 4) 25 1e-6)
  (check-= (sum-of-square-of-two-larger 4 3 2) 25 1e-6)
  (check-= (sum-of-square-of-two-larger 2 4 3) 25 1e-6)
  (check-= (sum-of-square-of-two-larger 2 2 3) 13 1e-6)
  (check-= (sum-of-square-of-two-larger 2 2 1) 8 1e-6)
  (check-= (sum-of-square-of-two-larger 2 2 2) 8 1e-6))