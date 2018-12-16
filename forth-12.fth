: consequent_pair ( addr len ) 1 do dup dup i 1 - cells + @ swap i cells + @ = if drop 1 unloop exit then loop drop 0 ;

create arr1 943 , 43 , 70 , 954 , 70 ,
create arr2 943 , 43 , 954 , 954 , 70 ,
: test1 arr1 5 consequent_pair .s 0 = if ." PASSED" else ." FAILED" then ;
: test2 arr2 5 consequent_pair .s 1 = if ." PASSED" else ." FAILED" then ;