sumSquare x y = if sumSquare > squareSum
								then sumSquare
								else squareSum
								where sumSquare = x^2 + y^2
								      squareSum = (x+y)^2

betterSumSquare x y = body (x^2 + y^2) ((x+y) ^2)
                      where body = (\ sumSquare squareSum -> 
                      	             if sumSquare > squareSum
                      	             then sumSquare 
                      	             else squareSum)

doubleDouble x = dubs * 2 
                 where dubs = x * 2

betterDouble x = (\x -> 2 * x ) x