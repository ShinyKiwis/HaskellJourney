-- Generate an ascending list from n to m
asc n m  
    | m < n = []
    | m == n  = [m]
    | otherwise = n : asc (n+1) m

-- Generate and descending list from n to m 
dsc n m 
    | n < m = []
    | n == m = [m]
    | otherwise = n : dsc (n-1) m
