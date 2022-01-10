module LuciansLusciousLasagnaSpec where

import Test.Hspec        (Spec, describe, it, shouldBe)
import LuciansLusciousLasagna (expectedMinutesInOven, preparationTimeInMinutes, elapsedTimeInMinutes)

spec :: Spec
spec = do
  describe "Lucian's Luscious Lasagna" $ do
    it "expectedMinutesInOven" $ do
      expectedMinutesInOven `shouldBe` 40

    it "preparationTimeInMinutes" $ do
      preparationTimeInMinutes 3 `shouldBe` 6
      preparationTimeInMinutes 2 `shouldBe` 4

    it "elapsedTimeInMinutes" $ do
      elapsedTimeInMinutes 3 20 `shouldBe` 26
      elapsedTimeInMinutes 5 10 `shouldBe` 20
