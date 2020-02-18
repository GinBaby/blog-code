import Data.Char (toLower)
-- Exercises from Will Kurt's Get Programming in Haskell
-- up through Chapter 10 (first "capstone" lesson)

-- Q6.1

-- Haskell has a function called repeat that takes a value and repeats it infinitely. Implement repeat.

repeet :: a -> [a]
repeet x = x : repeet x
-- oh in the answers, he just has you use cycle duh -- however, this one seems to work. i guess i could test it but nah.

-- Q6.2
-- Write a function subseq that takes three arguments: a start position, an end position, and a list. The function should return the subsequence between the start and end

subseq :: Int -> Int -> [a] -> [a]
subseq start end xs = take (end - start) (drop start xs)

-- Q9.2
-- write an isPalindrome function that can handle spaces and capitals using map and filter

isPalindrome :: String -> Bool
isPalindrome xs = normalized == reverse normalized
  where normalized = map toLower (filter (/= ' ') xs)

