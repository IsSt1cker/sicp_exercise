(define (average x y)
    (/ (+ x y) 2))

(define (square a) (* a a))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (good-enough2? old-guess new-guess)
    (< (/ (abs (- old-guess new-guess))
            old-guess) 0.01)
        )

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (sqrt-iter2 guess x)
    (if (good-enough2? guess x)
        guess
        (sqrt-iter2 (improve guess x)
                    x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt2 x)
    (sqrt-iter2 1.0 x))

(sqrt 9)

(sqrt 0.00009)

(sqrt2 9)

(sqrt2 0.00009)