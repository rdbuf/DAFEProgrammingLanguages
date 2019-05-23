isPrefix [] _ = True
isPrefix _ [] = False
isPrefix (x:xs) (y:ys) = x == y && isPrefix xs ys

tails [] = [[]]
tails (x:xs) = (x:xs) : tails xs

listA = [3,4,5]
listB = [1,2,3,4,5,6]

isSubstring a b = any (isPrefix a) (tails b)

main = print (isSubstring listA listB)
