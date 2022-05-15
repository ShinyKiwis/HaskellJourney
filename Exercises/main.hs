-- Exercise 1: Create a function elem return true or false is 
-- an element exist in the list 

myElem :: (Eq a) => a -> [a] -> Bool 
myElem _ [] = False
myElem e (x:xs) = x == e || myElem e xs  


-- Exercise 2: Remove all duplicate of a list 
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs) 
    | x `myElem` xs = nub xs 
    | otherwise = x : nub xs 


-- Exercise 3: Check if a list is in ascending order 
isAsc :: [Int] -> Bool
isAsc [] = True 
isAsc [x] = True 
isAsc (x:xs) 
    | x <= head xs = isAsc xs 
    | otherwise = False

isAsc' [] = True
isAsc' [x] = True
isAsc' (x:y:xs) = x<= y && isAsc' (y:xs) 

-- Exercise 4: Check if there exists a path from a node to a node 
-- Assume that the node we are looking for is already in the graph 
hasPath :: [(Int,Int)] -> Int -> Int -> Bool 
hasPath [] x y = x == y 
hasPath xs x y 
    | x == y = True 
    | otherwise = 
        let xs' = [ (n,m) | (n,m) <- xs, n /= x ] in
        or [ hasPath xs' m y | (n,m) <- xs, n == x]
