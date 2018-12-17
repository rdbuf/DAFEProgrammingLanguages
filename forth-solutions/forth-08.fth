: has_duplicates ( addr len -- bool ) dup 0 do dup -rot i swap 0 do ( len addr i ) 2dup cells + @ -rot over i cells + @ ( len val1 addr i val2 ) 2swap -rot = rot dup i <> rot and if -rot 2drop unloop unloop exit else then loop drop swap loop 2drop -1 ;

create arr1 943 , 43 , 7 , 954 ,
create arr2 43 , 7 , 7 , 954 ,
: test1 arr1 4 has_duplicates .s -1 = if ." PASSED" else ." FAILED" then ;
: test2 arr2 4 has_duplicates .s 1 = if ." PASSED" else ." FAILED" then ;