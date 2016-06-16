#lang racket
(define (f n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (f (- n 1))
                     (f (- n 2))
                     (f (- n 3))))))
(f 3) ;; 3
(f 4) ;; 6
(f 8) ;; 68

(define (f-i n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0)
      c
      (f-iter (+ a b c) a b (- count 1))))

(f-i 3) ;; 3
(f-i 4) ;; 6
(f-i 8) ;; 68