module LeapYearSpec where

import Test.Hspec        (Spec, describe, it, shouldBe)
import LeapYear (isLeapYear)

spec :: Spec
spec = do
  describe "Leap Year" $ do
    it "year not divisible by 4 in common year" $ do
      isLeapYear 2015 `shouldBe` False

    it "year divisible by 2, not divisible by 4 in common year" $ do
      isLeapYear 1970 `shouldBe` False

    it "year divisible by 4, not divisible by 100 in leap year" $ do
      isLeapYear 1996 `shouldBe` True

    it "year divisible by 4 and 5 is still a leap year" $ do
      isLeapYear 1960 `shouldBe` True

    it "year divisible by 100, not divisible by 400 in common year" $ do
      isLeapYear 2100 `shouldBe` False

    it "year divisible by 100 but not by 3 is still not a leap year" $ do
      isLeapYear 1900 `shouldBe` False

    it "year divisible by 400 in leap year" $ do
      isLeapYear 2000 `shouldBe` True

    it "year divisible by 400 but not by 125 is still a leap year" $ do
      isLeapYear 2400 `shouldBe` True

    it "year divisible by 200, not divisible by 400 in common year" $ do
      isLeapYear 1800 `shouldBe` False

