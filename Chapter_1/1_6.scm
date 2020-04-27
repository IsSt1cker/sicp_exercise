
; 何故if文が必要ですか？
; Condだけじゃ何故無理?

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

; goodだけがdisplay
; 特別な関数だからtrueの条件だけが計算される
(if #t (display "good") (display "bad"))

; badgood(schemeは右から左の故)display
; 応用順で全ての結果が計算される
; だから、この新しいifを使われると再帰プログラムが
; スタックオーバーフローされる可能性がある
; schemeは末尾再帰ですが、new-ifはsqrtに適用されない
(new-if #t (display "good") (display "bad"))