: count ( addr len val ) 0 swap 2swap 0 do dup i cells + @ ( cnt val addr val2 ) rot swap over = if ( tgt cnt addr val ) rot 1 + -rot then swap loop 2drop ;

create arr 943 , 43 , 70 , 954 , 70 ,
: test1 arr 5 42 count .s 0 = if ." PASSED" else ." FAILED" then ;
: test2 arr 5 43 count .s 1 = if ." PASSED" else ." FAILED" then ;
: test3 arr 5 70 count .s 2 = if ." PASSED" else ." FAILED" then ;