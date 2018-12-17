(defun is-prime (n)
	(labels ((iter (divisor) (if (>= 1 divisor) t (and (/= 0 (mod n divisor)) (iter (- divisor 1))))))
		(iter (- n 1))))

(defun next-prime (n)
	(if (is-prime (+ 1 n)) (+ 1 n) (next-prime (+ 1 n))))

(defun nth-prime (n)
	(labels ((iter (i p) (if (= i n) p (iter (+ 1 i) (next-prime p)))))
		(iter -1 0)))

(defun n-primes (n)
	(loop for m from 1 below (+ 1 n) by 1 collect (nth-prime m)))

(assert (equal (n-primes 25) '(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)))