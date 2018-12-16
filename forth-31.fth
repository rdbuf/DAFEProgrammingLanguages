: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: count_above ( addr len threshold ) 0 2swap 0 do dup i cells + @ 3over > if swap 1 + swap then loop drop nip ;

create arr1 1 , -4 , 5 , -6 ,
: test1 arr1 4 0 count_above 2 if ." PASSED" else ." FAILED" then ;
create arr2 1 , -4 , 5 , 6 ,
: test2 arr2 4 3 count_above 2 if ." PASSED" else ." FAILED" then ;
