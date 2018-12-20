: is_prime ( n ) dup 2 = if drop -1 else dup 2 do dup i mod 0 = if drop 0 unloop exit then loop drop -1 then ;

: next_prime ( m -- n ) 1 + dup do i is_prime if i unloop exit then loop ;

: nth_prime ( n -- p ) 0 1 -rot do next_prime loop ;

: test1 13 nth_prime .s 41 = if ." PASSED" else ." FAILED" then ;
: test2 20 nth_prime .s 71 = if ." PASSED" else ." FAILED" then ;