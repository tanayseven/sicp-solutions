; Exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the
; sum of the squares of the two larger numbers.

(define (square num)
  (* num num))

(define (sum-of-square-of-two-larger num1 num2 num3)
(begin
  (define (second-largest) (if (> num1 num2) 
                             num1 
                             num2))
  (if (> (second-largest) num3)
      (+ (square num1) (square num2))
      (+ (square (second-largest)) (square num3)))))
