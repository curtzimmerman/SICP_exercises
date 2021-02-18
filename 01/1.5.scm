(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;(test 0 (p))
;since mit-scheme uses applicative-order evaluation, it evaluates all arguments and then applies. p is a recursive function with no exit clause, so it will cause an interpreter crash when evaluated.
