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

(defun remove-last-two (lst)
	(let ((len (length lst)))
		(cond 
			((<= len 2) ())
			(t (remove-nth (- len 1) (remove-nth len lst))))))

(assert (equal (remove-last-two '(1 2 3)) '(1)))
(assert (equal (remove-last-two '(1 2)) ()))