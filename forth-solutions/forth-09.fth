: min_max ( addr len -- min max ) swap dup @ dup 2swap swap 1 do ( min max addr ) dup 2swap rot i cells + @ dup -rot
  ( addr min val max val ) 2dup < if swap then drop -rot 2dup > if swap then drop swap rot loop drop ;

: find ( addr len val ) -rot 0 do dup i cells + @ ( val addr val2 ) rot swap over = if 2drop i unloop exit else swap then loop 2drop -1 ;

: min_max_indices ( addr len -- idx1 idx2 ) 2dup min_max ( addr len min max ) 2over 2over drop find ( addr len min max min_idx ) -rot swap drop 2swap rot find ;

create arr 943 , 43 , 7 , 954 ,
: test arr 4 min_max_indices .s 3 = swap 2 = and if ." PASSED" else ." FAILED" then ;