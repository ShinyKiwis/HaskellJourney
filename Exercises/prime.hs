factors  :: Int -> [Int]
factors n = [x| x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = factors n == [1,n]

isSquare:: Int -> Bool 
isSquare 1 = True
isSquare n = length [x | x <- [2..(n `div` 2)], x^2 == n] == 1

sumPrime :: Int -> Int 
sumPrime n = sum [ x | x <- [1..n], isPrime x]

sumSquare :: Int -> Int 
sumSquare n = sum [x | x<- [1..n], isSquare x]
