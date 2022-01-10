module LeapYear (isLeapYear) where

-- Given a year, report if it is a leap year.
-- The tricky thing here is that a leap year in the Gregorian calendar occurs:
-- on every year that is evenly divisible by 4
--   except every year that is evenly divisible by 100
--     unless the year is also evenly divisible by 400

-- Source: https://exercism.org/tracks/haskell/exercises/leap

isLeapYear :: Integer -> Bool
isLeapYear year = evenlyDivisibleBy 4 && (not (evenlyDivisibleBy 100) || evenlyDivisibleBy 400)
  where
    evenlyDivisibleBy = (0 ==) . (year `mod`)
