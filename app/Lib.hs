-- https://wiki.haskell.org/99_questions/1_to_10

module Lib
    ( someFunc, last
    ) where

someFunc :: IO ()
someFunc = putStrLn "Hello, World!"

mylast :: [a] -> Maybe a
mylast [] = Nothing
mylast [x] = Just x
mylast (_:xs) = mylast xs

myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast [x] = Nothing
myButLast (x:y:[]) = Just x
myButLast (x:y:xs) = myButLast (y:xs)
