(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun is-substring-of (lst1 lst2)
	(if (> (length lst1) (length lst2))
		nil
		(or (equal lst1 (take (length lst1) lst2)) (is-substring-of lst1 (cdr lst2)))))

(assert (equal (is-substring-of '(3 4 5) '(7 1 2 3 4 5 6)) t))
(assert (equal (is-substring-of '(5 4 3) '(7 1 2 3 4 5 6)) nil))