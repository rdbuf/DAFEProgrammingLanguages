: swap_at ( addr1 addr2 ) 2dup @ swap @ ( addr1 addr2 val2 val1 ) rot ! swap ! ;
: reverse ( addr len ) swap over 1 + 2 / 0 do dup i cells + ( len addr addr1 ) -rot 2dup swap ( addr1 len addr addr len ) i - 1 - cells + 2swap -rot swap_at swap loop 2drop ;

create arr 1 , 2 , 3 , 4 , 5 ,
: test arr 5 2dup reverse 0 do dup i cells + ? loop ;
