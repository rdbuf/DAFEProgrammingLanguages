(defun swap-neighbors (lst)
	(if (> 2 (length lst))
		lst
		(cons (car (cdr lst)) (cons (car lst) (swap-neighbors (cdr (cdr lst)))))))

(assert (equal (swap-neighbors '(1 2 3 4 5)) '(2 1 4 3 5)))