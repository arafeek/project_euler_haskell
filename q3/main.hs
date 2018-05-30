{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

import System.Environment

-- Returns the rounded square root of any integer
intRoot ::  Int  -> Int
intRoot n = round $ sqrt $ fromIntegral n

-- Returns a list containing all factors of a number
factors :: Int -> [Int]
factors n = [x | x <- [1..intRoot n], n `mod` x == 0] ++ [n]

-- Returns True if n is prime, false otherwise
isPrime :: Int-> Bool
isPrime n = factors n == [1, n]

-- Returns the largest prime factor of an Int n
largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum $ filter isPrime $ factors n

main :: IO ()
main = do
  args <- getArgs
  let arg = head args
  let n = (read arg) :: Int
  print $ largestPrimeFactor n
