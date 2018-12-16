: zero-out-multiples-of-3 ( addr len ) 0 +do dup i cells + @ ( addr val ) 3 mod 0 = if 0 over i cells + ! then loop drop ;

create arr1 1 , 4 , 9 , 2 , 3 , 6 ,
: test1 arr1 6 2dup zero-out-multiples-of-3 0 do dup i cells + ? loop ;
create arr2 
: test2 arr2 0 2dup zero-out-multiples-of-3 0 +do dup i cells + ? loop ;
