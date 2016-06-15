#lang racket
(define (square x)
  (* x x))

(define (qube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs(- (qube guess) x)) 0.001))

(define (improve guess x)
  (/(+(/ x (square guess))
      (* 2 guess)) 
    3))

(define (qbrt-iter guess x)
  (if (good-enough? guess x)
        guess
        (qbrt-iter (improve guess x)               
                   x)))

(define (qbrt x)
  (qbrt-iter 1.0 x))

(qbrt 27)
(qbrt 8)
(qbrt 1)
(qbrt 0.001)


