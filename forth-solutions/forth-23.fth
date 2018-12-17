: is_prime ( n ) dup 2 = if drop -1 else dup 2 do dup i mod 0 = if drop 0 unloop exit then loop drop -1 then ;

: next_prime ( m -- n ) 1 + dup do i is_prime if i unloop exit then loop ;

: fill_with_primes ( addr len ) over 2 swap ! 1 +do dup i 1 - cells + @ next_prime over i cells + ! loop drop ;

create arr 10 cells allot
: test arr 10 2dup fill_with_primes 0 do dup i cells + ? loop ;