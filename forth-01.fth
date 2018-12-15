: elem ( addr len value -- bool ) swap 0 do 2dup swap i cells + @ = if 1 unloop exit then loop 0 ;

create arr 943 , 43 , 7 , 954 ,
: test1 arr 4 943 elem 1 = if ." PASSED" else ." FAILED" then ;
: test2 arr 4 33 elem 0 = if ." PASSED" else ." FAILED" then ;