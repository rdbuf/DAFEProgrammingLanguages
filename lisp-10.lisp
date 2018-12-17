(defun count-atoms (lst)
	(cond
		((null lst) 0)
		((atom lst) 1)
		(t (+ (count-atoms (car lst)) (count-atoms (cdr lst))))))

(assert (equal (count-atoms '(1 (2 3 4) 5 (5 4 nil))) 7))
(assert (equal (count-atoms '(1 2 3)) 3))