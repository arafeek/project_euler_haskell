{-

Question 5:

2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all
of the numbers from 1 to 20?

-}

divides :: Num a => a -> a -> Bool
divides x y = quot x y == 0

dividesAll :: Num a => a -> [a] -> Bool
dividesAll _ [] = True
dividesAll 0 _ = False
dividesAll x xs = filter dividesX xs
  where dividesX = divides x
