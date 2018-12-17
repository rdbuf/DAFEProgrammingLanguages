(defun drop (cnt lst)
	(if (= 0 cnt)
		lst
		(drop (- cnt 1) (cdr lst))))
(defun take (cnt lst)
	(if (= 0 cnt)
		()
		(cons (car lst) (take (- cnt 1) (cdr lst)))))

(defun get-central (lst)
	(let ((half-len (floor (length lst) 2)))
		(car (drop half-len (reverse (drop half-len lst))))))

(assert (equal (get-central '(1 2 3)) 2))
(assert (equal (get-central '(1 2)) nil))