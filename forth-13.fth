: sum ( addr len ) 0 -rot 0 do dup i cells + @ ( sum addr val ) rot + swap loop drop ;

create arr 943 , 43 , 70 , 954 , 70 ,
: test arr 5 sum .s 2080 = if ." PASSED" else ." FAILED" then ;