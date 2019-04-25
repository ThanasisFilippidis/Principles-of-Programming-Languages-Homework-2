deleteInt::Int->[Int]->[Int]
deleteInt n (h:t)
 |n == h
  =deleteInt (n-1) t
 |otherwise
  =h:deleteInt n t
deleteInt n [] = []

pinkballons::[Int]->Int
pinkballons [] = 0
pinkballons (h:t) = 1 + pinkballons (deleteInt h (h:t))