(defun pairs (lst)
	(if (null lst) 
		()
		(cons (list (car lst) (car (last lst))) (pairs (butlast (cdr lst))))))

(assert (equal (pairs '(1 2 3 4 5 6)) '((1 6) (2 5) (3 4))))
(assert (equal (pairs '(1 2 3 4 5)) '((1 5) (2 4) (3 3))))