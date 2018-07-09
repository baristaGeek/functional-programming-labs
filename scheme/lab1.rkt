;;; Exercise 1
(/ (- 5 1) (* 20 (- 6 5)))
(/ (+ 5 6 9) (- 7 8 9))

;;; Exercise 2
(define (id x) x)
(define (cube x) (* x x x))
(define (f1 a b) (- (* a a a) (* b b b)))

;;; Exercise 3
(define (f2 x) (cond((> x 0) "positive")
                     ((= x 0) "zero")
                     ((< x 0) "negative")))

;;; Exercise 4
(define (average x y)
 (/ (+ x y) 2))

(define (cbrt-iter guess x)
 (if (good-enough? guess x)
 guess
 (cbrt-iter (improve guess x)
 x)))

(define (improve guess x)
 (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (good-enough? guess x)
 (< (abs (- (cube guess) x)) 0.001))

(define (cbrt x)
 (cbrt-iter 1.0 x))

;;; Exercise 5
(define (f3-a x n)
  (if (= n 0)
      0
      (+ (expt x n) (f3-a x (- n 1)))))
;;; TODO: Iterative f3



