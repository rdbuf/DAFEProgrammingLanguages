: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: reflect ( addr len ) dup 2 / 0 do over i cells + @ ( addr len val ) 3over 3over i - 1 - cells + ( addr len val tgt_addr ) ! loop 2drop ;

create arr 1 , 2 , 3 , 4 , 0 , 0 , 0 , 0 ,
: test arr 8 2dup reflect 0 do dup i cells + ? loop ;
