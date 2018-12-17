(defun is-prime (n)
	(labels ((iter (divisor) (if (>= 1 divisor) t (and (/= 0 (mod n divisor)) (iter (- divisor 1))))))
		(iter (- n 1))))

(defun next-prime (n)
	(if (is-prime (+ 1 n)) (+ 1 n) (next-prime (+ 1 n))))

(defun nth-prime (n)
	(labels ((iter (i p) (if (= i n) p (iter (+ 1 i) (next-prime p)))))
		(iter -1 0)))

(assert (equal (nth-prime 25) 97))