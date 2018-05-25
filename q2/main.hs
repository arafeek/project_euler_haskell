fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibsLtFourMillion = takeWhile (< 4000000) fibs
evenVals = filter even fibsLtFourMillion

main :: IO ()
main = print (sum evenVals)