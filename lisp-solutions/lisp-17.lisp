(defun remove-odd (lst)
	(cond
		((null lst) ())
		((= 1 (mod (car lst) 2)) (remove-odd (cdr lst)))
		(t (cons (car lst) (remove-odd (cdr lst))))))

(assert (equal (remove-odd '(1 2 3 4 5)) '(2 4)))