(defun swap-last-two (list)
	(if (> (length list) 2)
		(cons (car list) (swap-last-two (cdr list)))
		(if (= (length list) 2)
			(apply (lambda (x y) (cons y (cons x nil))) list)
			list)))

(assert (equal (swap-last-two '(3 1 2)) '(3 2 1)))
(assert (equal (swap-last-two '(1)) '(1)))