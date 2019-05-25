chetElem (x:y:xs) = [y] ++ chetElem xs
chetElem (x:xs) = error "1 elem"
chetElem [] = error "No list"
