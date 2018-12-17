: is_prime ( n ) dup 2 = if drop -1 else dup 2 do dup i mod 0 = if drop 0 unloop exit then loop drop -1 then ;

: next_prime ( m -- n ) 1 + dup do i is_prime if i unloop exit then loop ;

: test1 5 next_prime .s 7 = if ." PASSED" else ." FAILED" then ;
: test2 9 next_prime .s 11 = if ." PASSED" else ." FAILED" then ;