#lang racket
(define (square x)
  (* x  x))

(define (sum-of-squares x y)
  (+(square x) (square y)))

(define (sum-of-squares-max-pair x y z)
  (if (> x y)
       (sum-of-squares x (if (> y z) y z))
       (sum-of-squares y (if (> x z) x z))))

(sum-of-squares-max-pair 1 2 3)
(sum-of-squares-max-pair 3 2 1)
(sum-of-squares-max-pair 2 3 1)
(sum-of-squares-max-pair 1 1 3)
(sum-of-squares-max-pair 1 3 1)
(sum-of-squares-max-pair 3 1 1)
(sum-of-squares-max-pair 2 2 2)
