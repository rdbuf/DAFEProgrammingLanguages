(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun swap-halves (lst)
	(let ((half-len (/ (length lst) 2)))
		(append (drop half-len lst) (take half-len lst))))

(assert (equal (swap-halves '(1 2 3 4 5 6)) '(4 5 6 1 2 3)))