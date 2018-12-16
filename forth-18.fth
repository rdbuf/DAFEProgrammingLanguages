: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: dup_array ( addr len ) dup 2 / 0 do over i cells + @ ( addr len val ) 3over 3over 2 / i + cells + ( addr len val tgt_addr ) ! loop 2drop ;

create arr 1 , 2 , 3 , 4 , 0 , 0 , 0 , 0 ,
: test arr 8 2dup dup_array 0 do dup i cells + ? loop ;
