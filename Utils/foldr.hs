map' f = foldr (\x xs -> f x : xs) []
