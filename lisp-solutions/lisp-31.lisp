(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun fuse (lst)
	(labels ((iter (lst1 lst2) (if (null lst1) lst1 (append (list (car lst1) (car lst2)) (iter (cdr lst1) (cdr lst2))))))
		(iter (take (/ (length lst) 2) lst) (drop (/ (length lst) 2) lst))))

(assert (equal (fuse '(1 2 3 4 5 6)) '(1 4 2 5 3 6)))