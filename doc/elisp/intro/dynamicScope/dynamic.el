(setq f
      (let ((x 1))
        (lambda (y) (* x y))))

f
(car f)

(let ((x 2))
  (funcall f 4))

(funcall f 2)