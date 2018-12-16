: count_neg ( addr len ) 0 -rot 0 do dup i cells + @ 0 < if swap 1 + swap then loop drop ;

: has_at_least_two_negatives ( addr len ) count_neg 2 >= ;

create arr1 1 , -4 , 5 , -6 ,
: test1 arr1 4 has_at_least_two_negatives -1 if ." PASSED" else ." FAILED" then ;
create arr2 1 , -4 , 5 , 6 ,
: test2 arr2 4 has_at_least_two_negatives -1 if ." PASSED" else ." FAILED" then ;
