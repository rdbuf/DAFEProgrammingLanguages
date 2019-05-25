delete [] = error "No list"
delete x = if length x < 3 then error "No elem"
                           else if length x == 3 then tail (tail x)
                                               else [head x] ++ delete (tail x)
