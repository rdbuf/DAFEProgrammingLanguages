(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun remove-central (lst) (append (take (floor (length lst) 2) lst) (drop (ceiling (length lst) 2) lst)))

(assert (equal (remove-central '(1 2 3 4)) '(1 2 3 4)))
(assert (equal (remove-central '(1 2 3)) '(1 3)))