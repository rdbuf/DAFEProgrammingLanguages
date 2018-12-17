(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun keep-range (+range+ m n)
	(let ((range+ (if (<= (- m 1) (length +range+)) (drop (- m 1) +range+) +range+)))
		(if (<= (+ 1 (- n m)) (length range+)) (take (+ 1 (- n m)) range+) range+)))

(assert (equal (keep-range '(1 2 3 4 5) 3 4) '(3 4)))
(assert (equal (keep-range '(1 2 3 4 5) 2 2) '(2)))
(assert (equal (keep-range '(1 2 3 4 5) 2 10) '(2 3 4 5)))