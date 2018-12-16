: print_binary ( n ) -1 swap begin 2 /mod dup 1 = until begin dup -1 <> while . repeat drop ;

: test1 5 print_binary ;
: test2 8 print_binary ;