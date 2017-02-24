; Exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the
; sum of the squares of the two larger numbers.

(define (sum-of-square-of-two-larger num1 num2 num3)
  (define second_largest_1 (if (> num1 num2) 
                               (num1) 
                               (num2))
  (define first_largest (if (> (second_largest_1) num3) 
                               (second_largest_1) 
                               ())))
  )
