: negate_if_above_1000 ( addr len ) 0 do dup i cells + @ dup 1000 > if ( addr value ) negate over i cells + ! else drop then loop drop ;

create arr 1 , 2 , 3 , 5 , 1200 , 1500 , -1334 ,
: test arr 7 2dup negate_if_above_1000 0 do dup i cells + ? loop ;