myinternet::Int->[Int]->Int
myinternet n (h:t) = (n - h) + myinternet n t
myinternet n [] = n