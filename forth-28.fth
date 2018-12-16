: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: between ( n min max ) 3over >= -rot >= and ;

: print_digit ( n ) dup 0 9 between if 48 else 97 10 - then + emit ;

: print_hex ( n ) -1 swap begin 16 /mod dup 1 <= until dup 0 = if drop then ." 0x" begin dup -1 <> while print_digit repeat drop ;

: test1 5 print_hex ;
: test2 12 print_hex ;
: test3 255 print_hex ;