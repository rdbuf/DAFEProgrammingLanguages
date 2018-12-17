: duplicate ( addr len -- bool ) dup 0 do dup -rot i swap 0 do ( len addr i ) 2dup cells + @ -rot over i cells + @ ( len val1 addr i val2 ) 2swap -rot over ( len i addr val2 val1 val2 ) = ( len i addr val2 eq ) 2swap swap ( len val2 eq addr i ) dup i <> ( len val2 eq addr i eq2 ) 2swap -rot and if ( len val2 i addr ) 2drop swap drop unloop unloop exit else then rot drop swap loop drop swap loop 2drop 0 ;

create arr1 943 , 43 , 7 , 954 ,
create arr2 43 , 43 , 7 , 954 ,
: test1 arr1 4 duplicate .s 0 = if ." PASSED" else ." FAILED" then ;
: test2 arr2 4 duplicate .s 43 = if ." PASSED" else ." FAILED" then ;