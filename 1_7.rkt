#lang racket
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
        guess
        (sqrt-iter (improve guess x)
                   guess
                   x)))

(define (sqrt x)
  (sqrt-iter 1.0 0.5 x))

(sqrt 9)
(sqrt 0.01)
(sqrt 0.001)
(sqrt 0.0001)
(sqrt 0.00001)
(sqrt 0.0000001)


