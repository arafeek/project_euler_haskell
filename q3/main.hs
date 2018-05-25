{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

-- The following is a very naive solution with a pretty bad runtime
-- I will need to improve this, but it provides a good starting point for a solution
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = factors n == [1, n]

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum (filter isPrime (factors n))

main :: IO ()
main = print $ largestPrimeFactor 100
