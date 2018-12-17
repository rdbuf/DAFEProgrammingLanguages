(defun remove-prelast (list)
	(if (> (length list) 2)
		(cons (car list) (remove-prelast (cdr list)))
		(funcall (if (< (length list) 2) 'identity 'cdr) list)))

(assert (equal (remove-prelast '(1)) '(1)))
(assert (equal (remove-prelast '(1 2 3)) '(1 3)))