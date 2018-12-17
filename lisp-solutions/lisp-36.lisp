(defun nth-fib (n)
	(cond 
		((= 1 n) 1)
		((= 2 n) 1)
		(t (+ (nth-fib (- n 1)) (nth-fib (- n 2))))))

(assert (equal (nth-fib 13) 233))