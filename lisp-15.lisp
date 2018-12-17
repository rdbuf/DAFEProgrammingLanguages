(defun even-positions (lst)
	(if (null lst)
		()
		(cons (car (cdr lst)) (even-positions (cdr (cdr lst))))))

(assert (equal (even-positions '(1 2 3 4 5)) '(2 4)))
