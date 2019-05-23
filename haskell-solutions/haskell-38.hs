count :: Eq a => a -> [a] -> Int
count val (x:xs) = fromEnum (val == x) + count val xs
count _ [] = 0

remove :: (a -> Bool) -> [a] -> [a]
remove predicate (x:xs) = (if predicate x then [] else [x]) ++ remove predicate xs
remove _ [] = []

removeDups (x:xs) = x : removeDups (remove (== x) xs)
removeDups [] = []

list = [1,2,3,4,2,1,1,3,2]

main = print (removeDups (list))