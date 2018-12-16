: squares ( addr len ) 0 do dup i cells + i i * swap ! loop drop ;

create arr 10 cells allot 
: test arr 10 2dup squares 0 do dup i cells + ? loop ;