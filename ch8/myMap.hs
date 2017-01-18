myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

myFilter test [] = []
myFilter test (x:xs) = if test x
	                     then x:myFilter test xs
	                     else myFilter test xs

rcons x y = y:x
myReverse xs = foldl rcons [] xs

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs where newInit = f init x

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult
												where rightResult = myFoldr f init xs

