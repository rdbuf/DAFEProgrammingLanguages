(defun is-sorted (lst)
	(or (>= 1 (length lst)) (and (< (car lst) (car (cdr lst))) (is-sorted (cdr lst)))))

(defun next-iteration (lst)
	(cond
		((>= 1 (length lst)) lst)
		((> (car lst) (car (cdr lst))) (cons (car (cdr lst)) (next-iteration (cons (car lst) (cdr (cdr lst))))))
		(t (cons (car lst) (next-iteration (cdr lst))))))

(defun bubble-sort (lst)
	(if (is-sorted lst)
		lst
		(bubble-sort (next-iteration lst))))

(assert (equal (bubble-sort '(5 4 3 2 1)) '(1 2 3 4 5)))
(assert (equal (bubble-sort '(1 2 4 3 5)) '(1 2 3 4 5)))