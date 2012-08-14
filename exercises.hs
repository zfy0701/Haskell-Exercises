
-- let x = x + 1
-- print x -- infinite loop

sqrt 2 * 2 -- sqrt(2) * 2
-- 2.8284271247461903

-- E3.2
snd (fst ((1,'a'),"foo"))

map Char.toUpper "Hello world"
Char.toUpper `map` "Hello world"

-- "HELLO WORLD"
filter Char.isLower "Hello World"
-- "elloorld"

-- E3.3
map Char.isLower "aBCde"

-- E3.4
length (filter Char.isLower "aBCde")

-- E3.5
foldl max 0 [5,10,2,8,1]

-- E3.6
fst (head (tail [(5,'b'),(1,'c'),(6,'a')]))

