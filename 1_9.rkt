#lang racket
(define(inc x)
  (+ x 1))

(define(dec x)
  (- x 1))

;; linear recursive process
(define (rec-plus a b)
  (if (= a 0)
      b
      (inc (rec-plus (dec a) b))))

(rec-plus 4 5)
;; inc(+ 3 5)
;; inc(inc(+ 2 5))
;; inc(inc(inc(+ 1 5)))
;; inc(inc(inc(inc(+ 0 5))))
;; inc(inc(inc(inc(5))))
;; inc(inc(inc(6)))
;; inc(inc(7))
;; inc(8)
;; 9

;; linear iterative process
(define (iter-plus a b)
  (if (= a 0)
      b
      (iter-plus (dec a) (inc b))))

(iter-plus 4 5)
;; (+ 3 6)
;; (+ 2 7)
;; (+ 1 8)
;; (+ 0 9)
;; 9