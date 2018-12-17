(defun swap-last-two (lst)
	(if (> (length lst) 2)
		(cons (car lst) (swap-last-two (cdr lst)))
		(if (= (length lst) 2)
			(apply (lambda (x y) (list y x)) lst)
			lst)))

(assert (equal (swap-last-two '(3 1 2)) '(3 2 1)))
(assert (equal (swap-last-two '(1)) '(1)))