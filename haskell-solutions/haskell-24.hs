isPrime m = all (\d -> m `mod` d /= 0) [2..m-1]

main = print (isPrime 113)