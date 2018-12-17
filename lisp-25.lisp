(defun is-prime (n)
	(labels ((iter (divisor) (if (>= 1 divisor) t (and (/= 0 (mod n divisor)) (iter (- divisor 1))))))
		(iter (- n 1))))

(assert (equal (is-prime 2) t))
(assert (equal (is-prime 7) t))
(assert (equal (is-prime 4) nil))
(assert (equal (is-prime 997) t))