import Data.List 

f n = [n | n <- [1..n], isPrime n] where
    isPrime n = all (\a -> n `mod` a /= 0) [2..n-1]

n = 24
main = print (f n)
