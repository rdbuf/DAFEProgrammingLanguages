: is_perfect ( n ) dup 0 -rot 1 do dup i mod 0 = if swap i + swap then loop = ;

: test1 6 is_perfect -1 = if ." PASSED" else ." FAILED" then ;
: test2 7 is_perfect 0 = if ." PASSED" else ." FAILED" then ;
: test3 8128 is_perfect -1 = if ." PASSED" else ." FAILED" then ;