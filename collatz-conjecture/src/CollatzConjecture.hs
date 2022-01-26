module CollatzConjecture (collatz) where

import Control.Applicative (liftA2)

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1     = Nothing
  | n == 1    = Just 0
  | otherwise = liftA2 (+) (Just 1) (collatz (if even n then n `div` 2 else 3 * n + 1))
