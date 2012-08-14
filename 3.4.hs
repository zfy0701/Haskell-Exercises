module Main where
	x = 5
	y = (6,"hello")
	z = x * fst y
	main = putStrLn "hello world"

	square x = x * x

	f x = case x of
		0 -> 1
		1 -> 5
		2 -> 2
		_ -> -1

	--alternative
	{-
	f 0 = 1
	f 1 = 5
	f 2 = 2
	f _ = -1
	-}

	-- t1 == t2
	t1 = (square . f) 1
	t2 = square (f 1)

	-- E3.7
	fib 1 = 1
	fib 2 = 1
	fib x = fib (x - 1) + fib (x -2) 

	--E3.8
	mult 0 x = 0
	mult x 0 = 0
	mult x 1 = x
	mult 1 x = x
	mult x y = mult (x-1)  y + y

	--E3.9
	mymap f [] = []
	mymap f (x:l) = (f x) : (mymap f l)