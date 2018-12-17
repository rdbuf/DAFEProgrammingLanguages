: swap_at ( addr1 addr2 ) 2dup @ swap @ ( addr1 addr2 val2 val1 ) rot ! swap ! ;

: 4rot ( a b c d -- b c d a ) -rot 2swap swap ;

: bubble_sort ( addr len ) dup 0 +do i ( addr len i ) swap dup 0 +do ( addr i len ) -rot 2dup cells + @ ( len addr i val ) -rot over i cells + @ ( len val addr i val2 ) 4rot > if 
  2dup over i cells + -rot cells + swap_at then ( len addr i ) rot loop swap drop loop 2drop ;

create arr 0 , 1 , 2 , 6 , 3 , 5 , 4 ,
: test arr 7 2dup bubble_sort 0 do dup i cells + ? loop ;
