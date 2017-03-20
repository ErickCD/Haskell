numero :: [Integer] -> String
numero [x] = print $ scanr (+) 0 x