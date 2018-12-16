: mean ( addr len ) dup 0 2swap 0 do dup i cells + @ rot + swap loop drop s>d d>f s>d d>f f/ ;

create arr 1 , 2 , 3 , 4 , 
: test arr 4 mean f. ;