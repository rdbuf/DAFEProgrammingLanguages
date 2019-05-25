midl [] = error "No elem"
midl (x:xs) = if xs == [] then x
                          else midl (delT xs)
