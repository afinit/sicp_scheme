
(define (accumulate combiner null-value term a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (combiner (term x) result))))
    (iter a null-value))

(define (inc x)
    (+ x 1))
(define (identity x)
    x)

(define (sum a b)
    (accumulate + 0 identity a inc b))

(sum 1 5)