module Main where

import Data.Char (isAlpha)
import Data.List (sort)

isAnagram :: String -> String -> Bool
isAnagram xs ys = sort xs == sort ys

main :: IO ()
main = do
    putStrLn "Please enter a word."
    firstWord <- getLine
    putStrLn "Please enter a second word."
    secondWord <- getLine
    print (isAnagram firstWord secondWord)
