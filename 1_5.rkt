#lang racket
(define (p) (p))
(define (test x y) (if (= x 0) 0 y)) ;;doesn't matter the body for applicative-order evaluation

(test 0 (p)) ;;infinity for aplicative order and 0 for normal evaluation