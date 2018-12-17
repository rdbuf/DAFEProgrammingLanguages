(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun drop-right-half (lst)
	(take (/ (length lst) 2) lst))

(assert (equal (drop-right-half '(1 2 3 4 5 6)) '(1 2 3)))