(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;substituting an operator based on the result of the if conditional.

(a-plus-abs-b 5 8)
;13

(a-plus-abs-b 4 -6)
;10
