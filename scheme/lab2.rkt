;; Exercise 1
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

;; Exercise 2
;; a
(define (product-integers a b)
  (if (> a b)
      1
      (* a (product-integers (+ a 1) b))))

(define (cube a) (* a a a))

(define (product-cubes a b)
  (if (> a b)
      1
      (* (cube a) (product-cubes (+ a 1) b))))

;; b
(define (product factor a next b)
  (define (product-iter a result)
    (if (> a b)
        1
        (product-iter (next a) (* (factor a) result))))
  (product-iter a 1))

;; c

;; d

;; Exercise 3
(define (accumulate combiner null-elem term a next b)
  (if (> a b)
      null-elem
      (combiner (term a)
                (accumulate combiner null-elem term (next a) next b))))

(define (sum2 term a next b) (accumulate + 0 term a next b))

(define (product2 factor a next b) (acummulate * 1 factor a next b))

;; Exercise 4
(define (compose f g) (lambda (x) (f (g x))))

;; Exercise 5
(define (rac list)
  (if (null? (cdr list))
      (car list)
      (rac (cdr list))))

(define (rdc list)
  (if (null? (cdr list))
      (cdr list)
      (cons (car list) (rdc (cdr list)) )))

;; Exercise 6

;; Exercise 7
(define (quicksort lst op)
 (if (null? lst)
 lst
 (let* ((one (car lst))
 (left (filter (lambda (x)
 (op x one))
 (cdr lst)))
 (right (filter (lambda (x)
 (not (op x one)))
 (cdr lst))))
 (append (quicksort left op) (list one) (quicksort right op)))))

