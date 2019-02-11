
(define (product term a next b)
    (if (> a b)
        1
        (* (term a) 
           (product term (next a) next b))))

(define (product-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result))))
    (iter a 1))

(define (inc x)
    (+ x 1))
(define (identity x)
    x)

(define (factorial x)
    (product identity 1 inc x))

(define (factorial-iter x)
    (product-iter identity 1 inc x))

(factorial 5)

(define (odds x)
    (+ 
        (* 
            (floor (/ (+ 1 x) 2)) 
            2) 
        1))

(define (evens x)
    (* 
        (+
            (floor (/ x 2))
            1)
        2))

(define (pi-estimate x)
    (exact->inexact
        (* 
            4
            (/
                (product-iter evens 1 inc x)
                (product-iter odds 1 inc x)))))

(pi-estimate 55)
(pi-estimate 555)
(pi-estimate 5555)