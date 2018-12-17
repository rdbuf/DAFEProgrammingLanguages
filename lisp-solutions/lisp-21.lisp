(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))

(defun drop-last (lst N)
	(reverse (drop N (reverse lst))))

(assert (equal (drop-last '(1 2 3 4 5) 3) '(1 2)))