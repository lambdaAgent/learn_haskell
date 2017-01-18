-- myAverage aList = (sum aList) / (length aList)

-- x :: Int
-- x = 2

-- y :: Integer
-- y = 2

-- letter :: Char
-- letter = 'a'

-- interestRate :: Double
-- interestRate = 0.375

-- isFun :: Bool
-- isFun = true

-- values :: [Int]
-- values = [1,2,3]

-- testScores :: [Double]
-- testScores = [0.99, 0.7, 0.8]

-- letters :: [Char]
-- letters = ['a','b','c']

-- aPet :: [Char]
-- aPet = "cat"

-- anotherPet :: String
-- anotherPet = "dog"

-- ageAndHeight :: (Int, Int)
-- ageAndHeight = (34, 74)

-- firstLastMiddle :: (String, String, Char)
-- firstLastMiddle = ("Oscar", "Grouch", "D")

-- streetAddress :: (Int, String)
-- streetAddress = (123, "Happy St.")

-- half :: Int -> Double
-- half n = (fromIntegral n) / 2
          -- a function that has type Int -> Int
ifEven :: (Int -> Int) -> Int -> Int
ifEven f n = if even n 
						 then f n
						 else n

add2 :: Int -> Int
add2 n = n + 2


makeTriple :: a -> b -> c -> (a,b,c)
makeTriple x y z = (x,y,z)

myAverage :: [Int] -> Double
myAverage aList = listTotal / listLength
                  where listTotal = fromIntegral (sum aList)
                        listLength = fromIntegral (length aList)
