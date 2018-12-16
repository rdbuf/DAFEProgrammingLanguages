: print_binary ( n ) -1 swap begin 2 /mod dup 1 <= until dup 0 = if drop then ." 0b" begin dup -1 <> while 48 + emit repeat drop ;

: test1 5 print_binary ;
: test2 8 print_binary ;
: test3 0 print_binary ;