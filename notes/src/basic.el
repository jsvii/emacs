;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; quote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;
;; * quote 与 '的区别
;;;;;;;;

;; 以下两者一样

(quote x)

'x

;; 以下两者不一样

(quote x)

'(x)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; defvar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;
;; defvar 的值不会被覆盖
;;;;;;;;

(defvar test/foo
  "Did I have a value?"
  "A demo variable")
;; c-h v会输出 foo的文档
test/foo

;; 输出Did I have a value?
test/foo

(defvar foo "I don't have a value?"
  "a demo variable")
;; 输出Did I have a value?
foo

;; global special variable X, naming convention violated
(defvar x 10)
;; global special variable Y, naming convention violated
(defvar y 20)

x
y

;; refers to special variables X and y
(defun foo ()
  (+ x y))
;; OOPS!! X and Y are special variables
;; even though they are parameters of a function!
(defun bar (x y)
  (+ (foo) x y))
;; 这里直是个非常神奇的例子，为什么.
;; ->   24
(bar 5 7)

(symbolp bar)

(symbol-name '\+1)



(defvar numA 10)

(setq f
      (let ((numA 1))
        (lambda (y) (* numA y))))

f

(funcall f 10)

(let ((numA 2))
  (funcall f 2))


(let ((numA 3))
  (funcall f 2))


(funcall f 10)

;; psetq
(psetq a1 10 a2 20 a3 30)

a1

;; inferior
