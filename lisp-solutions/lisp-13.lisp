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

(defun remove-prelast-two (lst)
	(let ((len (length lst)))
		(cond 
			((= len 2) (cdr lst))
			((< len 2) lst)
			(t (remove-nth (- len 2) (remove-nth (- len 1) lst))))))

(assert (equal (remove-prelast-two '(1 2 3)) '(3)))
(assert (equal (remove-prelast-two '(1 2)) '(2)))