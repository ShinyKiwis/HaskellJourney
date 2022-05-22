data Gender = Female | Male

human::Gender -> String 
human Female = "You are such a beautiful girl"
human Male = "You are a wonderful man"

data Shapes = Circle Float| Rectangle Float Float | Square Float| Triangle Float Float

area::Shapes -> Float 
area (Circle r) = pi*r^2 
area (Square a) = a*a
area (Triangle a h) = 1/2*a*h
area (Rectangle a b) = a*b
