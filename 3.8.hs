-- Interatctivity
module Main where

import System.IO

main = do --synatic sugar to use monad
	--hSetBuffering stdin LineBuffering -- not sure why is wrong?
	putStrLn "Please enter your name: "
	name <- getLine
	putStrLn ("Hello, " ++ name ++ ", how are you?")

	--E3.10
factorial 0 = 1
factorial n = n * factorial (n - 1)

printe x = 
	do
		let r = (factorial x)
		putStrLn ((show x) ++ " factorial is " ++ (show r))

askAndPrint l = do
	putStrLn "Give a number (or 0 to stop):"
	line <- getLine
	let num = read line
	if num == 0 then
		do 
			putStrLn "done"
			let sum = foldl (+) 0 l
			let prod = foldl (*) 1 l
			do 
				putStrLn ("The sum is " ++ (show sum))
				putStrLn ("The prod is " ++ (show prod))
				mapM_ printe l
	else
		do askAndPrint (num:l)

foo = askAndPrint []