numero :: [Integer] -> String
numero [x] = show(scanr (+) 0 x)