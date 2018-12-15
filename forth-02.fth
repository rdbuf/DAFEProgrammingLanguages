: max_elem_index ( addr len -- idx ) 0 -rot 0 do i cells over + @ -rot 2dup swap cells + @ 2swap -rot < if drop i then swap loop drop ;

create arr 943 , 43 , 7 , 954 ,
: test arr 4 max_elem_index 3 = if ." PASSED" else ." FAILED" then ;