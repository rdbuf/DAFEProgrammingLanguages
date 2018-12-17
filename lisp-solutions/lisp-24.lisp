(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun drop-range (lst m n)
	(append
		(if (<= (- m 1) (length lst)) (take (- m 1) lst) ())
		(if (<= n (length lst)) (drop n lst) ())))

(assert (equal (drop-range '(1 2 3 4 5) 3 4) '(1 2 5)))
(assert (equal (drop-range '(1 2 3 4 5) 2 2) '(1 3 4 5)))
(assert (equal (drop-range '(1 2 3 4 5) 2 10) '(1)))