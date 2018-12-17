(defun even-positions (lst)
	(if (>= 1 (length lst))
		lst
		(cons (car lst) (even-positions (cdr (cdr lst))))))

(assert (equal (even-positions '(1 2 3 4 5)) '(1 3 5)))
