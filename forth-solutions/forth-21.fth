: is_prime ( n ) dup 2 = if drop -1 else dup 2 do dup i mod 0 = if drop 0 unloop exit then loop drop -1 then ;

: test1 5 is_prime .s -1 = if ." PASSED" else ." FAILED" then ;
: test2 9 is_prime .s 0 = if ." PASSED" else ." FAILED" then ;
: test3 2 is_prime .s -1 = if ." PASSED" else ." FAILED" then ;
: test4 4 is_prime .s 0 = if ." PASSED" else ." FAILED" then ;