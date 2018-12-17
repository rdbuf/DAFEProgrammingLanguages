(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun merge_ (lst1 lst2)
	(cond
		((null lst1) lst2)
		((null lst2) lst1)
		((< (car lst1) (car lst2)) (cons (car lst1) (merge_ (cdr lst1) lst2)))
		(t                         (cons (car lst2) (merge_ lst1 (cdr lst2))))))

(defun merge-sort (lst)
	(let* ((len (length lst)) (half-len (floor (length lst) 2)))
		(if (>= 1 len)
			lst
			(merge_ (merge-sort (take half-len lst)) (merge-sort (drop half-len lst))))))

(assert (equal (merge-sort '(5 4 3 2 1)) '(1 2 3 4 5)))
(assert (equal (merge-sort '(1 2 4 3 5)) '(1 2 3 4 5)))