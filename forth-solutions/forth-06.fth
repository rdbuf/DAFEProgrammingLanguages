: count ( addr len val ) 0 swap 2swap 0 do dup i cells + @ ( cnt val addr val2 ) rot swap over = if ( cnt addr val ) rot 1 + -rot then swap loop 2drop ;

: has_triplicates ( addr len ) dup 0 do 2dup over i cells + @ count 3 >= if 2drop -1 unloop exit then loop 2drop 0 ;

create arr1 943 , 43 , 7 , 954 ,
create arr2 43 , 43 , 7 , 954 ,
create arr3 43 , 43 , 7 , 43 ,
: test1 arr1 4 has_triplicates .s 0 = if ." PASSED" else ." FAILED" then ;
: test2 arr2 4 has_triplicates .s 0 = if ." PASSED" else ." FAILED" then ;
: test3 arr3 4 has_triplicates .s 1 = if ." PASSED" else ." FAILED" then ;