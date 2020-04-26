(define (square a) (* a a))

(define (sum-of-squares a b)
    (+(square a)
      (square b)))

(define (bigger-sum-of-squares a b c)
        (cond ((and (< a b) (< a c)) (sum-of-squares b c))
              ((and (< b a) (< b c)) (sum-of-squares a c))
              (else (sum-of-squares a b))
        ))

(bigger-sum-of-squares 0 2 2)

(bigger-sum-of-squares 1 2 3)

(bigger-sum-of-squares 3 5 7)

