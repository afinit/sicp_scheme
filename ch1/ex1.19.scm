(define (trans-fib-a a b p q)
  (+ (* b q) (* a q) (* a p)))

(define (trans-fib-b a b p q)
  (+ (* b p) (* a q)))

(define (even? n)
  (= (remainder n 2) 0))
(define (fast-fib-help n a b)
  (cond ((= n 0) b)
        ((even? n)
          (fast-fib-help
            (- n 2)
            (trans-fib-a a b 1 1)
            (trans-fib-b a b 1 1)))
        (else (fast-fib-help
                (- n 1)
                  (trans-fib-a a b 0 1)
                  (trans-fib-b a b 0 1)))))

(define (fast-fib n)
  (fast-fib-help n 1 0))


(define (println ex)
  (display ex) (newline))

(newline)
(println (quote ((fast-fib 5) = 5) ))
(println (fast-fib 5))

(println (quote ((fast-fib 7) = 13) ))
(println (fast-fib 7))

(println (quote ((fast-fib 8) = 21) ))
(println (fast-fib 8))

(exit)
