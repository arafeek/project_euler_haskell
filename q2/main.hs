fibs :: [Integer]
fibsLtFourMillion = takeWhile (< 4000000) fibs
evenVals = filter even fibsLtFourMillion

main :: IO ()
main = print (sum evenVals)