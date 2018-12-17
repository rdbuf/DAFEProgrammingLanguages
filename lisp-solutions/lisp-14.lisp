(defun is-palindrome (lst)
	(equal lst (reverse lst)))

(assert (equal (is-palindrome '(a b c)) nil))
(assert (equal (is-palindrome '(a b c b a)) t))