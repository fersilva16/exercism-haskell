module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year = evenlyDivisibleBy 4 && (not (evenlyDivisibleBy 100) || evenlyDivisibleBy 400)
  where
    evenlyDivisibleBy = (0 ==) . (year `mod`)
