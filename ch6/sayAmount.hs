-- sayAmount n = case n of 
-- 	1 -> "one"
-- 	2 -> "two"
-- 	n -> "a bunch"

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "a bunch"

isEmpty [] = True
isEmpty _ = False

myHead (x:xs) = x
meHead [] = error "No head for empty list"

myTail (x:xs) = xs
myTail (x) = error "No tail for empty list"