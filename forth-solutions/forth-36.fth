: nth-fib ( n ) 1 1 rot 1 +do 2dup + rot drop loop drop ;

: fill-with-fibs ( arr len ) 0 do i 1 + nth-fib over i cells + ! loop drop ;

create arr 10 cells allot
: test arr 10 2dup fill-with-fibs 0 do dup i cells + ? loop ;