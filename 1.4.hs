fillOddRow::Int->Int->[Int]
fillOddRow base size = [base,base + 1..size + base - 1]

fillOddTable::Int->Int->[[Int]]
fillOddTable rowCounter size
 | rowCounter  == size - 1
  =[[base,base + 1..size + base - 1]]
 | otherwise
  = fillOddRow base size:fillOddTable (rowCounter+1) size
  where base = rowCounter*size + 1

getRowUpperBoundMid::Int->Int->Int
getRowUpperBoundMid base size = base + div size 2

fillEvenRow::Int->Int->[Int]
fillEvenRow base size = l ++ [size * getRowUpperBoundMid base size - sum l]
 where l = [base,base + 1..size + base - 2]

getColumnUpperBoundMid::Int->Int
getColumnUpperBoundMid size = size^2 + 1

fillEvenTable::Int->Int->[[Int]]
fillEvenTable rowCounter size
 | rowCounter == size - 1
  = [fillEvenRow (size * getColumnUpperBoundMid size - sum [1,2*size + 1..(size - 2)*2*size + 1]) size]
 | otherwise
  = fillEvenRow (rowCounter*2*size + 1) size:fillEvenTable (rowCounter + 1) size

mymatrix::Int->[[Int]]
mymatrix n
 | mod n 2 == 1
  = fillOddTable 0 n
 | otherwise
  = fillEvenTable 0 n