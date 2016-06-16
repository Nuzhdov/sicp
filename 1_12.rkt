#lang racket
(define (pascal row elem)
  (cond ((or (= elem 1) (= elem row)) 1)
        ((and (> elem 1) (< elem row)) (+ (pascal (- row 1) (- elem 1))
                                          (pascal (- row 1) elem)))))

(pascal 5 4)