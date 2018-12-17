(defun prelast (list)
	(if (> 2 (length list)) 
		nil
		(if (= 2 (length list))	
			(car list)
			(prelast (cdr list)))))

(assert (eq (prelast (cons 1 ())) nil))
(assert (eq (prelast (cons 1 (cons 2 ()))) 1))