; fast-expt recursive process from book
(define (even? n)
  (= (remainder n 2) 0))
(define (square x) (* x x))
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (f-expt-iter-help b n a)
  (cond ((= n 0) 1)
        ((= n 1) a)
        ((even? n) (f-expt-iter-help b (/ n 2) (* (square b) a)))
        (else (f-expt-iter-help b (- n 1) (* b a)))))

(define (fast-expt-iter b n)
  (f-expt-iter-help b n 1))

(define (println ex)
  (display ex) (newline))

(newline)
(println (quote (= (fast-expt 2 3) 8)))
(println (= (fast-expt 2 3) 8))
(println (quote (= (fast-expt-iter 2 3) 8)))
(println (= (fast-expt-iter 2 3) 8))

(println (quote (= (fast-expt 3 4) 81)))
(println (= (fast-expt 3 4) 81))
(println (quote (= (fast-expt-iter 3 4) 81)))
(println (= (fast-expt-iter 3 4) 81))

(exit)
