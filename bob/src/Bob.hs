module Bob (responseFor) where

import Data.Char (isSpace, toUpper, isLetter)

trim :: String -> String
trim = f . f
  where f = reverse . dropWhile isSpace

responseFor :: String -> String
responseFor xs
  | nothing               = "Fine. Be that way!"
  | screaming && question = "Calm down, I know what I'm doing!"
  | question              = "Sure."
  | screaming             = "Whoa, chill out!"
  | otherwise             = "Whatever."
  where
    screaming = hasLetter && all (\x -> toUpper x == x) xs
    hasLetter = any isLetter xs
    nothing = length xs == 0 || all isSpace xs
    question = last (trim xs) == '?'
