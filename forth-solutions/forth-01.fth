: elem ( addr len value -- bool ) swap 0 do 2dup swap i cells + @ = if 2drop 1 unloop exit then loop 2drop 0 ;

create arr 943 , 43 , 7 , 954 ,
: test1 arr 4 943 elem .s 1 = if ." PASSED" else ." FAILED" then ;
: test2 arr 4 33 elem .s 0 = if ." PASSED" else ." FAILED" then ;