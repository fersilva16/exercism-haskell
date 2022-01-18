module Pangram (isPangram) where

import Data.Char (toLower)

alphabet :: [Char]
alphabet = "abcdefghijklmnopqrstuvwxyz"

isPangram :: String -> Bool
isPangram sentence = all (`elem` lowercaseSentence) alphabet
  where lowercaseSentence = map toLower sentence
