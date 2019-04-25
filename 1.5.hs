goodSeatCount::[Char]->Int
goodSeatCount (_:'o':[]) = 0
goodSeatCount ('e':'e':h:t) = 1 + goodSeatCount ('e':h:t)
goodSeatCount (_:'e':'e':t) = 1 + goodSeatCount ('e':'e':t)
goodSeatCount ('o':'e':'o':t) = goodSeatCount ('e':'o':t)
goodSeatCount (_:'o':h:t) = goodSeatCount ('o':h:t)

getSeat::[Char]->Int
getSeat ('e':t) = 0
getSeat (h:t) = 1 + getSeat t

getGoodSeat::[Char]->Int
getGoodSeat ('e':'e':t) = 1
getGoodSeat (h:t) = 1 + getGoodSeat t

myseat::[Char]->Int
myseat (h:t)
 | last (h:t) == 'e'
  = length (h:t) - 1
 | h == 'e'
  = 0
 | goodSeatCount (h:t) == 0
  = length (h:t) - getSeat (reverse (h:t)) - 1
 | otherwise
  = getGoodSeat (h:t)