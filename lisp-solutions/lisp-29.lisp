(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun drop-left-half (lst)
	(drop (/ (length lst) 2) lst))

(assert (equal (drop-left-half '(1 2 3 4 5 6)) '(4 5 6)))