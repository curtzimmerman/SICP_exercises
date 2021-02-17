(define (square x) (* x x))

(define (square-larger a b c)
  (cond ((and (> a c) (> b c))
	 (+ (square a) (square b)))
	((and (> a b) (> c b))
	 (+ (square a) (square c)))
	((and (> b a) (> c a))
	 (+ (square b) (square c)))))

(square-larger 2 3 4)
;25

