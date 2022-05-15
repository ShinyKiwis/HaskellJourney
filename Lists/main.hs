-- Question 1: Find the last element of a list 
myLast1 :: [a] -> a 
myLast1 [] = error "The list is empty"
myLast1 [x] = x 
myLast1 (_:xs) = myLast1 xs

-- (.) function 
myLast2 :: [a] -> a
myLast2 = head . reverse

-- Using the !! with the index of last element
myLast3 x = x !! ( length x - 1)


-- Question 2: Find the last but one element of a list 
myButLast1 :: [a] -> a 
myButLast1 [] = error "The list can't be empty!"
myButLast1 [x] = x 
myButLast1 x = x !! (length x -2)

myButLast2 = head . tail . reverse


-- Question 3: Find kth element of a list 
elementAt :: [a] -> Int -> a 
elementAt [] _ = error "The list can't be empty!"
elementAt xs i = xs !! (i-1)

elementAt' xs i = head (drop (i-1) xs)


-- Question 4: Find length of a list 
myLength :: [a] -> Int 
myLength [] = 0
myLength (_:xs) = 1 + length xs

myLength' = sum . map(\_->1)
myLength'' = sum . map(const 1)


-- Question 5: Reverse a list 
myReverse :: [a] -> [a]
myReverse [] = []
-- Remember xs is just [2,3] in this situation, that is why need to 
-- concat [x] which is first element.
myReverse (x:xs) = reverse xs ++ [x] 


-- Question 6: Palindrome list checking 
isPalindrome :: (Eq a) => [a] -> Bool 
isPalindrome [] = False 
isPalindrome xs = myReverse xs == xs
