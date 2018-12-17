(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun remove-nth (n lst)
	(append (take (- n 1) lst) (drop n lst)))

(assert (equal (remove-nth 1 '(1 2 3 4)) '(2 3 4)))
(assert (equal (remove-nth 2 '(1 2 3)) '(1 3)))