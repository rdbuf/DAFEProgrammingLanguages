import Prelude hiding (elem)
import Data.Monoid
import Control.Monad

-- elem :: Eq a => a -> [a] -> Bool
-- elem val (x:xs) = if val == x then True else elem val xs
-- elem val [] = False

count :: Eq a => a -> [a] -> Int
count val (x:xs) = fromEnum (val == x) + count val xs
count _ [] = 0

remove :: (a -> Bool) -> [a] -> [a]
remove predicate (x:xs) = (if predicate x then [] else [x]) <> remove predicate xs
remove _ [] = []

freq :: Eq a => [a] -> [(a, Int)]
freq (x:xs) = (x, 1 + count x xs) : freq (remove (== x) xs)
freq [] = []

main = do
    putStr "Input a list of whitespace-separated words in a single line:\n> "
    list <- words <$> getLine
    -- print . remove (== "abc") $ list
    putStrLn . show . freq $ list
