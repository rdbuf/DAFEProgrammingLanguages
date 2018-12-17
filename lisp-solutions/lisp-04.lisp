(defun get-last (lst)
	(if (< (length lst) 2) (car lst) (get-last (cdr lst))))
(defun remove-last (lst)
	(if (< (length lst) 2) () (cons (car lst) (remove-last (cdr lst)))))
(defun swap-first-last (lst)
	(if (> 2 (length lst))
		lst
		(append (cons (get-last lst) (remove-last (cdr lst))) (list (car lst)))))

(assert (equal (swap-first-last '(1 2 3 4 5 6)) '(6 2 3 4 5 1)))
(assert (equal (swap-first-last '(1)) '(1)))