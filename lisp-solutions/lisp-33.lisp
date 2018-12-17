(defun minmax (lst)
	(labels ((iter (m- m+ rest) (if (not rest) (list m- m+) (iter (min m- (car rest)) (max m+ (car rest)) (cdr rest)))))
		(iter (car lst) (car lst) (cdr lst))))

(assert (equal (minmax '(7 1 2 3 4 5 6)) '(1 7)))
(assert (equal (minmax '(6)) '(6 6)))