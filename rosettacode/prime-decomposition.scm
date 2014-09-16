(define (factor number)
  (define (*factor divisor number)
    (if (> (* divisor divisor) number)
        (list number)
        (if (= (modulo number divisor) 0)
            (cons divisor (*factor divisor (/ number divisor)))
            (*factor (+ divisor 1) number))))
  (*factor 2 number))
 
(display (factor 111111111111))
(newline)
