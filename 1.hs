main = print (fac 10)


fac 0 = 1
fac n = n * fac (n-1)

--map f [] = []
--map f (x:xs) = (f x) : (map f xs)

double x = x + x

doubleList xs = map double xs

data CoordType = Coord Float Float deriving Show

data IntList = Nil | Cons Int IntList deriving Show

data List a = Nil' | Cons' a (List a) deriving Show

listlength Nil' = 0
listlength (Cons' _ xs) = 1 + listlength xs

x = Cons' 5 (Cons' (-8) (Cons' 1 Nil'))

data Tree a = Node a [Tree a] deriving Show

depth (Node _ []) = 1
depth (Node _ succ) = 1 + maximum (map depth succ)

y = Node 5 [Node 8 [Node 3 [],Node 1 []],Node 6 [Node 4 []]]

preorder :: Tree a -> [a]
preorder (Node a []) = [a]
preorder (Node a succ) = [a] ++ concat (map preorder succ)