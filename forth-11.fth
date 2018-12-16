: fill ( addr len ) swap over 1 + 2 / 0 do dup i cells + i swap ! 2dup swap i - 1 - cells + i swap ! loop 2drop ;

create arr1 5 cells allot 
: test1 arr1 5 2dup fill 0 do dup i cells + ? loop ;
create arr2 10 cells allot 
: test2 arr2 10 2dup fill 0 do dup i cells + ? loop ;
