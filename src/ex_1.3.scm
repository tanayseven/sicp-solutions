; Exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the
; sum of the squares of the two larger numbers.

(define (sum-of-square-of-two-larger num1 num2 num3)
  (+ (if (and (> num1 num2) (> num1 num3)) (square num1) (if (> num2  num3)))))