: snd_max ( addr len -- value ) swap dup @ dup 2swap swap 1 do ( submax max addr ) dup 2swap rot i cells + @ dup -rot
  ( addr submax val max val ) 2dup < if 2swap 2drop else 2dup > if drop -rot ( addr max submax val ) 2dup < if swap else then drop then else then rot loop 2drop ;

create arr 943 , 43 , 7 , 954 ,
: test arr 4 snd_max .s 943 = if ." PASSED" else ." FAILED" then ;