{-# LANGUAGE NoMonomorphismRestriction #-}
-- To prevent error for length' function 

-- Redefine map with foldr 
map' f = foldr (\x xs -> f x : xs) []

-- Redefine filter with foldr 
filter' f = foldr (\x xs -> if f x then x : xs else xs) []

-- Redefine filtet with list comprehesion 
filter'' f xs= [x | x <-xs, f x]

-- Redefine length with foldr 
length' = foldr (\_ n -> 1 + n) 0

-- Redefine reverse with foldr 
reverse' = foldr (\x xs -> xs ++ [x]) []
