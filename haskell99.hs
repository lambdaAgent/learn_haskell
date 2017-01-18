myLast [x] = x
myLast (x:xs) = myLast(xs)

myButLast [x,_] = x
myButLast (x:xs) = myButLast xs
