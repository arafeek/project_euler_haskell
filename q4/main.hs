{-

Question 4:

A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}


-- Multiplies every element in
multAll :: Num a => [a] -> [a] -> [a]
multAll xs ys = [x * y | x <- xs, y <- ys]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

stringToInt :: String -> Int
stringToInt = read

threeDigitPalindromes = filter isPalindrome $ map show $ multAll [100..999] [100..999]

main :: IO ()
main = print $ maximum $ map stringToInt threeDigitPalindromes