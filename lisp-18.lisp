(defun squares-up-to (n)
	(if (= 0 n)
		()
		(append (squares-up-to (- n 1)) (list (* n n)))))

(assert (equal (squares-up-to 10) '(1 4 9 16 25 36 49 64 81 100)))