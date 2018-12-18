(defun odd-positions (lst)
	(if (>= 1 (length lst))
		lst
		(cons (car lst) (odd-positions (cdr (cdr lst))))))

(assert (equal (odd-positions '(1 2 3 4 5)) '(1 3 5)))
