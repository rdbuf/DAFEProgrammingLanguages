(defun count-atoms (lst)
	(if (null lst)
		0
		(if (atom lst)
			1
			(+ (count-atoms (cdr lst)) (count-atoms (car lst))))))

(assert (equal (count-atoms '(1 (2 3 4) 5 (5 4 nil))) 7))
(assert (equal (count-atoms '(1 2 3)) 3))