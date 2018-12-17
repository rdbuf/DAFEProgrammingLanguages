: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: is_array_dup ( addr len ) dup 2 / 0 do over i cells + @ ( addr len val ) 3over 3over 2 / i + cells + ( addr len val tgt_addr ) @ <> if 2drop 0 unloop exit then loop 2drop -1 ;

create arr1 1 , 2 , 3 , 4 , 1 , 2 , 3 , 4 ,
: test1 arr1 8 is_array_dup .s -1 = if ." PASSED" else ." FAILED" then ;
create arr2 1 , 2 , 3 , 4 , 0 , 2 , 3 , 4 ,
: test2 arr2 8 is_array_dup .s 0 = if ." PASSED" else ." FAILED" then ;
