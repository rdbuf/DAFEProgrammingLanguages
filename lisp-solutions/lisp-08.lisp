(defun count-and-extract (x lst)
	(if (null lst) 
		'(0)
		(let ((subsequent-call (count-and-extract x (cdr lst))))
			(if (equal x (car lst))
				(cons (+ 1 (car subsequent-call)) (cdr subsequent-call))
				(cons (car subsequent-call) (cons (car lst) (cdr subsequent-call)))))))

(defun frequences (lst)
	(if (null lst)
		()
		(let* ((target (car lst)) (subsequent-call (count-and-extract target lst)))
			(cons (list target (car subsequent-call)) (frequences (cdr subsequent-call))))))

(defun contains-duplicates (lst)
	(not (null (find-if (lambda (x) (>= (car (cdr x)) 2)) (frequences lst)))))

(assert (equal (contains-duplicates '(1 1 2)) t))
(assert (equal (contains-duplicates '(1 2 3)) nil))