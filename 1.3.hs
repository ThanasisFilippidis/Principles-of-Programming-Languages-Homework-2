insertChar::Char->[Char]->[Char]
insertChar n (h:t)
 | n <= h
  =n:h:t
 |otherwise
  =h:insertChar n t
insertChar n [] = [n]

insSortChar::[Char]->[Char]
insSortChar (f:r) = insertChar f (insSortChar r)
insSortChar [] = []

charsToPick::Int->[Char]->[Char]
charsToPick 0 l = []
charsToPick n (h:t) = h:charsToPick (n-1) t

deleteNChars::Int->[Char]->[Char]
deleteNChars 0 l = l
deleteNChars n (h:t) = deleteNChars (n-1) t

stringSplit::Int->[Char]->[[Char]]
stringSplit n l
 | length l == n
  = [insSortChar l]
 |otherwise
  = insSortChar(charsToPick n l):stringSplit n (deleteNChars n l)

equalStrings::[[Char]]->Bool
equalStrings (h:t)
 | length (h:t) < 2
  = True
 |otherwise
  = equalStrings' h t

equalStrings'::[Char]->[[Char]]->Bool 
equalStrings' s [h] = s == h
equalStrings' s (h:t) = s == h && equalStrings' h t

stringRoot'::[Int]->[Char]->[Char]
stringRoot' [n] l = []
stringRoot' (h:t) (hs:ts)
 | mod (last t) h == 0 && equalStrings (stringSplit h (hs:ts))
  = charsToPick h (hs:ts)
 | otherwise
  = stringRoot' t (hs:ts)

stringroot::[Char]->[Char]
stringoot l
 | length l < 2
  = []
stringroot l = stringRoot' [1,2..length l] l