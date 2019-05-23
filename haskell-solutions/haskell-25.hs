import Prelude hiding (last, take)

primes = sieve [2..] where
    sieve (x:xs) = x : sieve [num | num <- xs, num `mod` x /= 0]
    
last (x:y:xs) = last (y:xs)
last [x] = x

take 1 (x:xs) = [x]
take n (x:xs) = x : take (n-1) xs

main = print (last (take 5 primes))
