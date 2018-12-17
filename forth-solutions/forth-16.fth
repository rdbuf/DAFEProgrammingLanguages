: swap_at ( addr1 addr2 ) 2dup @ swap @ ( addr1 addr2 val2 val1 ) rot ! swap ! ;

: move_zeros_to_end ( addr len ) 0 do dup i cells + @ 0 = if dup i cells + i' i - 1 - 0 +do ( addr loop_base_addr ) dup i cells + swap dup i 1 + cells + rot swap_at loop drop then loop drop ;

create arr 0 , 1 , 2 , 0 , 3 , 4 , 5 ,
: test arr 7 2dup move_zeros_to_end 0 do dup i cells + ? loop ;
