: nth-fib ( n ) 1 1 rot 1 +do 2dup + rot drop loop drop ;

: test1 1 nth-fib 1 = if ." PASSED" else ." FAILED" then ;
: test2 2 nth-fib 1 = if ." PASSED" else ." FAILED" then ;
: test3 5 nth-fib 5 = if ." PASSED" else ." FAILED" then ;
: test4 6 nth-fib 8 = if ." PASSED" else ." FAILED" then ;