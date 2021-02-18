(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

;(sqrt 27)
;5.196192237708947

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)
;5

(new-if (= 1 1) 0 5)
;0

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) x)))
;(sqrt-iter 1.0 27)
;gives a 'maximum recursion depth exceeded' error.
;since scheme uses applicative order evaluation, it evaluates all arguments to the cond statement.
;If statements do not evaluate all arguments, it is a special form.
