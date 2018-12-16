: is_prime ( n ) dup 2 = if drop -1 else dup 2 do dup i mod 0 = if drop 0 unloop exit then loop drop -1 then ;

: next_prime ( m -- n ) 1 + dup do i is_prime if i unloop exit then loop ;

: next_prime_divisor ( num divisor -- n ) 1 + dup do i is_prime over i mod 0 = and if drop i unloop exit then dup i <= if drop 0 unloop exit then loop ;

: 3over ( a b c -- a b c a ) rot dup 2swap rot ;

: divisors ( addr len n ) -rot ( n addr len ) 1 0 rot 0 do ( n addr lastVal nSuccessfulWrites ) drop ( n addr lastVal ) 3over swap next_prime_divisor dup if ( n addr divisor ) dup 3over i cells + ! else 2drop drop i unloop exit then ( n addr lastVal ) i 1 + loop swap drop swap drop swap drop ;

: -3rot ( a b c d -- d a b c ) swap 2swap rot ;

create arr 10 cells allot
: test1 arr 10 10 3over -3rot divisors 0 do dup i cells + ? loop ;
: test2 arr 10 105 3over -3rot divisors 0 do dup i cells + ? loop ;
