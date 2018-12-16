: sum_digits ( n ) 0 swap begin 10 /mod -rot + swap dup 0 = until drop ;

: test1 45 sum_digits 9 = if ." PASSED" else ." FAILED" then ;
: test2 3 sum_digits 3 = if ." PASSED" else ." FAILED" then ;
: test3 30 sum_digits 3 = if ." PASSED" else ." FAILED" then ;