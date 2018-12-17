(defun is-palindrome (lst)
	(equal lst (reverse lst)))

(assert (equal (is-palindrome '(1 2 3)) nil))
(assert (equal (is-palindrome '(1 2 3 2 1)) t))