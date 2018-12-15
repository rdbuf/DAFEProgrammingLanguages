: min_max ( addr len -- min max ) swap dup @ dup 2swap swap 1 do ( min max addr ) dup 2swap rot i cells + @ dup -rot
  ( addr min val max val ) 2dup < if swap then drop -rot 2dup > if swap then drop swap rot loop drop ;

create arr 943 , 43 , 7 , 954 ,
: test arr 4 min_max .s 954 = swap 7 = and if ." PASSED" else ." FAILED" then ;