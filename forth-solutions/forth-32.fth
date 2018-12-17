: parts ( a1 b1 c1 a2 b2 c3 -- n m ) + + -rot + rot + ;

: split_into_6_digits 10 /mod 10 /mod 10 /mod 10 /mod 10 /mod ;

: count_lucky_tickets 0 1000000 0 do i split_into_6_digits parts = if 1 + then loop ;

: test count_lucky_tickets 55252 = if ." PASSED" else ." FAILED" then ;